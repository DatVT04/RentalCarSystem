package DAO;

import Context.DBContext;
import entity.CartItem;
import entity.Order;
import entity.OrderHistory;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class OrderDAO extends DBContext {

    private InventoryDAO inventoryDAO = new InventoryDAO();

    public Order createOrder(Order order) {
        Connection conn = null;
        PreparedStatement stmtOrder = null;
        PreparedStatement stmtItems = null;
        PreparedStatement stmtPayment = null;
        ResultSet rs = null;

        try {
            conn = connection;
            conn.setAutoCommit(false);

            // Bước 1: Thêm đơn hàng vào bảng orders
            String sqlOrder = "INSERT INTO orders (user_id, status, total_amount, recipient_name, recipient_email, "
                    + "recipient_phone, recipient_address, notes, created_at, updated_at) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";

            stmtOrder = conn.prepareStatement(sqlOrder, Statement.RETURN_GENERATED_KEYS);

            if (order.getUserId() > 0) {
                stmtOrder.setInt(1, order.getUserId());
            } else {
                stmtOrder.setNull(1, java.sql.Types.INTEGER);
            }

            stmtOrder.setString(2, order.getStatus() != null ? order.getStatus() : "pending");
            stmtOrder.setDouble(3, order.getTotal());
            stmtOrder.setString(4, order.getRecipientName());
            stmtOrder.setString(5, order.getRecipientEmail());
            stmtOrder.setString(6, order.getPhone());
            stmtOrder.setString(7, order.getAddress());

            String orderCode = "ORD" + System.currentTimeMillis() + (int) (Math.random() * 1000);
            stmtOrder.setString(8, orderCode);
            stmtOrder.executeUpdate();

            rs = stmtOrder.getGeneratedKeys();
            int orderId = 0;
            if (rs.next()) {
                orderId = rs.getInt(1);
                order.setId(orderId);
                order.setOrderCode(orderCode);
            }

            // Bước 2: Thêm các sản phẩm vào bảng order_items và giảm số lượng kho
            if (orderId > 0) {
                if (order.getItems() != null && !order.getItems().isEmpty()) {
                    String sqlItems = "INSERT INTO order_items (order_id, car_id, car_name, car_image, variant_name, quantity, unit_price_at_order) "
                            + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                    stmtItems = conn.prepareStatement(sqlItems);

                    for (CartItem item : order.getItems()) {
                        stmtItems.setInt(1, orderId);
                        stmtItems.setInt(2, item.getCarId());
                        stmtItems.setString(3, item.getCarTitle());
                        stmtItems.setString(4, item.getCarThumbnail());
                        stmtItems.setString(5, item.getSize() + " - " + item.getColor());
                        stmtItems.setInt(6, item.getQuantity());
                        stmtItems.setDouble(7, item.getCarPrice());
                        stmtItems.addBatch();

                        // Giảm số lượng kho bằng cách gọi InventoryDAO
                        int variantId = inventoryDAO.getVariantId(item.getCarId(),
                                inventoryDAO.getColorByName(item.getCarId(), item.getColor()).getId(),
                                inventoryDAO.getSizeByName(item.getCarId(), item.getSize()).getId());
                        if (variantId != -1) {
                            boolean stockReduced = inventoryDAO.decreaseVariantStock(variantId, item.getQuantity());
                            if (!stockReduced) {
                                throw new SQLException("Không thể giảm số lượng kho cho variantId: " + variantId);
                            }
                        } else {
                            throw new SQLException("Không tìm thấy variant cho carId: " + item.getCarId());
                        }
                    }

                    int[] batchResults = stmtItems.executeBatch();
                } else {
                    throw new SQLException("Order items are empty, cannot create order without items.");
                }
            } else {
                throw new SQLException("Failed to create order, orderId is 0.");
            }

            // Bước 3: Thêm thông tin thanh toán vào bảng payments
            String sqlPayment = "INSERT INTO payments (order_id, payment_method, payment_status, created_at) "
                    + "VALUES (?, ?, ?, GETDATE())";
            stmtPayment = conn.prepareStatement(sqlPayment);
            stmtPayment.setInt(1, orderId);

            String paymentMethodValue;
            switch (order.getPaymentMethod().toLowerCase()) {
                case "bank":
                    paymentMethodValue = "bank_transfer";
                    break;
                case "cod":
                    paymentMethodValue = "cod";
                    break;
                default:
                    paymentMethodValue = "cod";
            }

            stmtPayment.setString(2, paymentMethodValue);
            String paymentStatus = "cod".equals(paymentMethodValue) ? "pending" : "pending";
            stmtPayment.setString(3, paymentStatus);
            stmtPayment.executeUpdate();

            // Bước 4: Thêm thông tin vận chuyển
            if (order.getShippingMethod() != null && !order.getShippingMethod().isEmpty()) {
                addShippingInfo(conn, orderId, order.getShippingMethod());
            }

            // Bước 5: Thêm lịch sử đơn hàng
            addOrderHistory(conn, orderId, order.getUserId(), "pending", "Đơn hàng mới được tạo");

            conn.commit();
            return order;

        } catch (SQLException e) {
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.out.println("Error rolling back transaction: " + ex.getMessage());
            }
            System.out.println("Error creating order: " + e.getMessage());
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmtOrder != null) {
                    stmtOrder.close();
                }
                if (stmtItems != null) {
                    stmtItems.close();
                }
                if (stmtPayment != null) {
                    stmtPayment.close();
                }
                if (conn != null) {
                    conn.setAutoCommit(true);
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }
    }

    private void addShippingInfo(Connection conn, int orderId, String shippingMethod) throws SQLException {
        PreparedStatement stmt = null;

        try {
            // Tạo mã theo dõi tạm thời - phải là duy nhất
            String tempTrackingNumber = "TEMP-" + orderId + "-" + System.currentTimeMillis();

            String sql = "INSERT INTO shipping (order_id, shipping_provider, tracking_number, estimated_delivery) "
                    + "VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);

            // Thiết lập thông tin vận chuyển dựa trên phương thức
            String provider = "standard".equals(shippingMethod) ? "Standard Delivery" : "Express Delivery";

            // Tính ngày giao hàng dự kiến
            java.sql.Date estimatedDelivery = calculateEstimatedDelivery(shippingMethod);

            stmt.setString(2, provider);
            stmt.setString(3, tempTrackingNumber);
            stmt.setDate(4, estimatedDelivery);
            stmt.executeUpdate();
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private void addOrderHistory(Connection conn, int orderId, int userId, String status, String notes) throws SQLException {
        PreparedStatement stmt = null;

        try {
            String sql = "INSERT INTO order_history (order_id, updated_by, status, notes, updated_at) "
                    + "VALUES (?, ?, ?, ?, GETDATE())";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            stmt.setInt(2, userId > 0 ? userId : 1);
            stmt.setString(3, status);
            stmt.setString(4, notes);
            stmt.executeUpdate();
        } finally {
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    private java.sql.Date calculateEstimatedDelivery(String shippingMethod) {
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.add(java.util.Calendar.DATE, "express".equals(shippingMethod) ? 2 : 5);
        return new java.sql.Date(cal.getTimeInMillis());
    }

    public List<Order> getUserOrders(int userId, String keyword, String status, int page, int recordsPerPage) {
        List<Order> orders = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            int start = (page - 1) * recordsPerPage;

            StringBuilder sql = new StringBuilder(
                    "SELECT o.*, p.payment_method, p.payment_status "
                    + "FROM orders o "
                    + "LEFT JOIN payments p ON o.id = p.order_id "
                    + "WHERE o.user_id = ? "
            );

            List<Object> params = new ArrayList<>();
            params.add(userId);

            if (keyword != null && !keyword.trim().isEmpty()) {
                sql.append("AND (o.notes LIKE ? OR o.recipient_name LIKE ? OR EXISTS (SELECT 1 FROM order_items oi "
                        + "INNER JOIN cars pr ON oi.car_id = pr.id "
                        + "WHERE oi.order_id = o.id AND pr.title LIKE ?)) ");
                params.add("%" + keyword + "%");
                params.add("%" + keyword + "%");
                params.add("%" + keyword + "%");
            }

            if (status != null && !status.trim().isEmpty() && !status.equals("all")) {
                sql.append("AND o.status = ? ");
                params.add(status);
            }

            sql.append("ORDER BY o.created_at DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
            params.add(start);
            params.add(recordsPerPage);

            stmt = connection.prepareStatement(sql.toString());
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }

            rs = stmt.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("user_id"));
                order.setOrderCode(rs.getString("notes"));
                order.setStatus(rs.getString("status"));
                order.setTotal(rs.getDouble("total_amount"));
                order.setRecipientName(rs.getString("recipient_name"));
                order.setRecipientEmail(rs.getString("recipient_email"));
                order.setPhone(rs.getString("recipient_phone"));
                order.setAddress(rs.getString("recipient_address"));
                order.setOrderDate(rs.getTimestamp("created_at"));
                order.setPaymentMethod(rs.getString("payment_method"));
                order.setPaymentStatus(rs.getString("payment_status"));

                List<CartItem> items = getOrderItems(order.getId());
                order.setItems(items);

                orders.add(order);
            }

        } catch (SQLException e) {
            System.out.println("Error getting user orders: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }

        return orders;
    }

    public int getNumberOfUserOrders(int userId, String keyword, String status) {
        int count = 0;

        try {
            StringBuilder sql = new StringBuilder(
                    "SELECT COUNT(*) FROM orders o WHERE o.user_id = ? "
            );

            List<Object> params = new ArrayList<>();
            params.add(userId);

            if (keyword != null && !keyword.trim().isEmpty()) {
                sql.append("AND (o.notes LIKE ? OR o.recipient_name LIKE ? OR EXISTS (SELECT 1 FROM order_items oi "
                        + "INNER JOIN cars pr ON oi.car_id = pr.id "
                        + "WHERE oi.order_id = o.id AND pr.title LIKE ?)) ");
                params.add("%" + keyword + "%");
                params.add("%" + keyword + "%");
                params.add("%" + keyword + "%");
            }

            if (status != null && !status.trim().isEmpty() && !status.equals("all")) {
                sql.append("AND o.status = ? ");
                params.add(status);
            }

            PreparedStatement stmt = connection.prepareStatement(sql.toString());
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                count = rs.getInt(1);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            System.out.println("Error counting user orders: " + e.getMessage());
        }

        return count;
    }

    public List<CartItem> getOrderItems(int orderId) {
        List<CartItem> items = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT oi.*, p.title, p.thumbnail "
                    + "FROM order_items oi "
                    + "LEFT JOIN cars p ON oi.car_id = p.id "
                    + "WHERE oi.order_id = ?";

            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, orderId);
            rs = stmt.executeQuery();

            while (rs.next()) {
                CartItem item = new CartItem();
                item.setId(rs.getInt("id"));
                item.setCarId(rs.getInt("car_id"));
                item.setQuantity(rs.getInt("quantity"));
                item.setCarPrice(rs.getDouble("unit_price_at_order"));
                item.setCarTitle(rs.getString("car_name"));
                item.setCarThumbnail(rs.getString("car_image"));

                String variantName = rs.getString("variant_name");
                if (variantName != null && variantName.contains(" - ")) {
                    String[] variantParts = variantName.split(" - ");
                    item.setSize(variantParts.length > 0 ? variantParts[0] : "");
                    item.setColor(variantParts.length > 1 ? variantParts[1] : "");
                } else {
                    item.setSize("");
                    item.setColor("");
                }

                items.add(item);
            }

        } catch (SQLException e) {
            System.out.println("Error getting order items: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }

        return items;
    }

    public Order getOrderById(int orderId) {
        Order order = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT o.*, p.payment_method, p.payment_status, "
                    + "s.shipping_provider, s.tracking_number, s.estimated_delivery "
                    + "FROM orders o "
                    + "LEFT JOIN payments p ON o.id = p.order_id "
                    + "LEFT JOIN shipping s ON o.id = s.order_id "
                    + "WHERE o.id = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, orderId);
            rs = stmt.executeQuery();
            if (rs.next()) {
                order = new Order();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("user_id"));
                order.setOrderCode(rs.getString("notes"));
                order.setStatus(rs.getString("status"));
                order.setTotal(rs.getDouble("total_amount"));
                order.setRecipientName(rs.getString("recipient_name"));
                order.setRecipientEmail(rs.getString("recipient_email"));
                order.setPhone(rs.getString("recipient_phone"));
                order.setAddress(rs.getString("recipient_address"));
                order.setOrderDate(rs.getTimestamp("created_at"));
                order.setPaymentMethod(rs.getString("payment_method"));
                order.setPaymentStatus(rs.getString("payment_status"));
                order.setShippingProvider(rs.getString("shipping_provider"));
                order.setTrackingNumber(rs.getString("tracking_number"));

                String shippingProvider = rs.getString("shipping_provider");
                if (shippingProvider != null) {
                    if (shippingProvider.toLowerCase().contains("express")) {
                        order.setShippingMethod("express");
                    } else if (shippingProvider.toLowerCase().contains("standard")) {
                        order.setShippingMethod("standard");
                    } else {
                        order.setShippingMethod("standard");
                    }
                } else {
                    order.setShippingMethod("standard");
                }

                List<CartItem> items = getOrderItems(order.getId());
                order.setItems(items);
            }
        } catch (SQLException e) {
            System.out.println("Error getting order: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }
        return order;
    }

    public List<OrderHistory> getOrderHistory(int orderId) {
        List<OrderHistory> history = new ArrayList<>();

        try {
            String sql = "SELECT oh.*, u.full_name "
                    + "FROM order_history oh "
                    + "LEFT JOIN users u ON oh.updated_by = u.id "
                    + "WHERE oh.order_id = ? "
                    + "ORDER BY oh.updated_at ASC";

            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, orderId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                OrderHistory item = new OrderHistory();
                item.setId(rs.getInt("id"));
                item.setOrderId(rs.getInt("order_id"));
                item.setUpdatedBy(rs.getInt("updated_by"));
                item.setUpdaterName(rs.getString("full_name"));
                item.setStatus(rs.getString("status"));
                item.setNotes(rs.getString("notes"));
                item.setUpdatedAt(rs.getTimestamp("updated_at"));

                history.add(item);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            System.out.println("Error getting order history: " + e.getMessage());
        }

        return history;
    }

    public boolean updateOrderStatus(int orderId, String status, int updatedBy) {
        String[] validStatuses = {"pending_pay", "pending", "processing", "shipped", "completed", "cancelled"};
        boolean isValidStatus = false;
        for (String validStatus : validStatuses) {
            if (validStatus.equals(status)) {
                isValidStatus = true;
                break;
            }
        }
        if (!isValidStatus) {
            System.out.println("Invalid status value: " + status);
            return false;
        }

        try {
            String sqlUpdateOrder = "UPDATE orders SET status = ?, updated_at = GETDATE() WHERE id = ?";
            PreparedStatement stmtUpdateOrder = connection.prepareStatement(sqlUpdateOrder);
            stmtUpdateOrder.setString(1, status);
            stmtUpdateOrder.setInt(2, orderId);
            stmtUpdateOrder.executeUpdate();

            String sqlOrderHistory = "INSERT INTO order_history (order_id, updated_by, status, updated_at) "
                    + "VALUES (?, ?, ?, GETDATE())";
            PreparedStatement stmtOrderHistory = connection.prepareStatement(sqlOrderHistory);
            stmtOrderHistory.setInt(1, orderId);
            stmtOrderHistory.setInt(2, updatedBy);
            stmtOrderHistory.setString(3, status);
            stmtOrderHistory.executeUpdate();

            stmtUpdateOrder.close();
            stmtOrderHistory.close();

            return true;
        } catch (SQLException e) {
            System.out.println("Error updating order status: " + e.getMessage());
            return false;
        }
    }

    public boolean cancelOrder(int orderId, int userId) {
        Connection conn = null;
        try {
            conn = connection;
            conn.setAutoCommit(false);

            String sqlCheckOrder = "SELECT id, status FROM orders WHERE id = ? AND user_id = ?";
            PreparedStatement stmtCheckOrder = conn.prepareStatement(sqlCheckOrder);
            stmtCheckOrder.setInt(1, orderId);
            stmtCheckOrder.setInt(2, userId);
            ResultSet rs = stmtCheckOrder.executeQuery();

            if (!rs.next()) {
                rs.close();
                stmtCheckOrder.close();
                conn.rollback();
                return false;
            }

            String currentStatus = rs.getString("status");
            rs.close();
            stmtCheckOrder.close();

            if (!"pending".equals(currentStatus) && !"pending_pay".equals(currentStatus)) {
                conn.rollback();
                return false;
            }

            List<CartItem> items = getOrderItems(orderId);
            for (CartItem item : items) {
                int variantId = inventoryDAO.getVariantId(item.getCarId(),
                        inventoryDAO.getColorByName(item.getCarId(), item.getColor()).getId(),
                        inventoryDAO.getSizeByName(item.getCarId(), item.getSize()).getId());
                if (variantId != -1) {
                    boolean stockIncreased = inventoryDAO.increaseVariantStock(variantId, item.getQuantity());
                    if (!stockIncreased) {
                        throw new SQLException("Không thể tăng số lượng kho cho variantId: " + variantId);
                    }
                } else {
                    throw new SQLException("Không tìm thấy variant cho carId: " + item.getCarId());
                }
            }

            if (updateOrderStatus(orderId, "cancelled", userId)) {
                conn.commit();
                return true;
            }

            conn.rollback();
            return false;
        } catch (SQLException e) {
            System.out.println("Error cancelling order: " + e.getMessage());
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.out.println("Rollback failed: " + ex.getMessage());
            }
            return false;
        } finally {
            try {
                if (conn != null) {
                    conn.setAutoCommit(true);
                }
            } catch (SQLException e) {
                System.out.println("Error resetting auto-commit: " + e.getMessage());
            }
        }
    }

    public List<Order> getOrdersByUserId(int userId) {
        return getUserOrders(userId, null, null, 1, Integer.MAX_VALUE);
    }

    public boolean updatePaymentStatus(int orderId, String status) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = connection;
            conn.setAutoCommit(false);

            String sql = "UPDATE payments SET payment_status = ? WHERE order_id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);
            stmt.setInt(2, orderId);
            int result = stmt.executeUpdate();

            if (result <= 0) {
                System.out.println("Warning: No payment record found for order ID: " + orderId);
            }

            String historyNote = switch (status) {
                case "pending" -> "Đang chờ thanh toán";
                case "completed" -> "Đã thanh toán thành công";
                case "failed" -> "Thanh toán không thành công";
                case "refunded" -> "Đã hoàn tiền";
                default -> "Cập nhật trạng thái thanh toán: " + status;
            };

            stmt.close();
            String orderHistorySql = "INSERT INTO order_history (order_id, updated_by, status, notes, updated_at) "
                    + "VALUES (?, 1, (SELECT status FROM orders WHERE id = ?), ?, GETDATE())";
            stmt = conn.prepareStatement(orderHistorySql);
            stmt.setInt(1, orderId);
            stmt.setInt(2, orderId);
            stmt.setString(3, historyNote);
            stmt.executeUpdate();

            conn.commit();
            return true;
        } catch (SQLException e) {
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.out.println("Error rolling back transaction: " + ex.getMessage());
            }
            System.out.println("Error updating payment status: " + e.getMessage());
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.setAutoCommit(true);
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }
    }

    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT o.*, p.payment_method, p.payment_status "
                    + "FROM orders o "
                    + "LEFT JOIN payments p ON o.id = p.order_id "
                    + "ORDER BY o.created_at DESC";

            stmt = connection.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("user_id"));
                order.setOrderCode(rs.getString("notes"));
                order.setStatus(rs.getString("status"));
                order.setTotal(rs.getDouble("total_amount"));
                order.setRecipientName(rs.getString("recipient_name"));
                order.setRecipientEmail(rs.getString("recipient_email"));
                order.setPhone(rs.getString("recipient_phone"));
                order.setAddress(rs.getString("recipient_address"));
                order.setOrderDate(rs.getTimestamp("created_at"));
                order.setPaymentMethod(rs.getString("payment_method"));
                order.setPaymentStatus(rs.getString("payment_status"));

                List<CartItem> items = getOrderItems(order.getId());
                order.setItems(items);

                orders.add(order);
            }

        } catch (SQLException e) {
            System.out.println("Error getting all orders: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }

        return orders;
    }

    public List<Order> getOrdersWithFilters(String sql, List<Object> params) {
        List<Order> orders = new ArrayList<>();
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("user_id"));
                order.setOrderCode(rs.getString("notes"));
                order.setStatus(rs.getString("status"));
                order.setTotal(rs.getDouble("total_amount"));
                order.setRecipientName(rs.getString("recipient_name"));
                order.setRecipientEmail(rs.getString("recipient_email"));
                order.setPhone(rs.getString("recipient_phone"));
                order.setAddress(rs.getString("recipient_address"));
                order.setOrderDate(rs.getTimestamp("created_at"));
                order.setPaymentMethod(rs.getString("payment_method"));
                order.setPaymentStatus(rs.getString("payment_status"));
                order.setItems(getOrderItems(order.getId()));
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public int getTotalFilteredRecords(String sql, List<Object> params) {
        String countSql = sql.replaceFirst("SELECT .* FROM", "SELECT COUNT(*) FROM");
        int orderByIndex = countSql.toLowerCase().indexOf("order by");
        if (orderByIndex != -1) {
            countSql = countSql.substring(0, orderByIndex);
        }
        try (PreparedStatement stmt = connection.prepareStatement(countSql)) {
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public boolean updateShippingInfo(int orderId, String shippingProvider, String trackingNumber) {
        try {
            String sql = "UPDATE shipping SET shipping_provider = ?, tracking_number = ? WHERE order_id = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, shippingProvider);
            stmt.setString(2, trackingNumber);
            stmt.setInt(3, orderId);
            int rowsAffected = stmt.executeUpdate();
            stmt.close();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error updating shipping info: " + e.getMessage());
            return false;
        }
    }

    public boolean updateOrderStatus(int orderId, String status, int updatedBy, String shippingProvider, String trackingNumber) {
        try {
            String sqlUpdateOrder = "UPDATE orders SET status = ?, updated_at = GETDATE() WHERE id = ?";
            PreparedStatement stmtUpdateOrder = connection.prepareStatement(sqlUpdateOrder);
            stmtUpdateOrder.setString(1, status);
            stmtUpdateOrder.setInt(2, orderId);
            stmtUpdateOrder.executeUpdate();

            String sqlOrderHistory = "INSERT INTO order_history (order_id, updated_by, status, notes, updated_at) "
                    + "VALUES (?, ?, ?, ?, GETDATE())";
            PreparedStatement stmtOrderHistory = connection.prepareStatement(sqlOrderHistory);
            stmtOrderHistory.setInt(1, orderId);
            stmtOrderHistory.setInt(2, updatedBy);
            stmtOrderHistory.setString(3, status);
            stmtOrderHistory.setString(4, "Cập nhật trạng thái thành " + status);
            stmtOrderHistory.executeUpdate();

            if ("shipping".equals(status)) {
                updateShippingInfo(orderId, shippingProvider, trackingNumber);
            }

            stmtUpdateOrder.close();
            stmtOrderHistory.close();

            return true;
        } catch (SQLException e) {
            System.out.println("Error updating order status: " + e.getMessage());
            return false;
        }
    }

    public boolean updatePayStatus(int orderId, String status) {
        String sql = "UPDATE payments SET payment_status = ?, created_at = GETDATE() WHERE order_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, status);
            ps.setInt(2, orderId);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean hasFeedback(int orderId) {
        String query = "SELECT COUNT(*) FROM feedback f JOIN order_items oi ON f.order_item_id = oi.id WHERE oi.order_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void checkAndCancelExpiredPendingPayOrders() {
        Connection conn = null;
        PreparedStatement stmtSelect = null;
        PreparedStatement stmtUpdate = null;
        ResultSet rs = null;

        try {
            conn = connection;
            conn.setAutoCommit(false);

            String sqlSelect = "SELECT id, user_id, created_at FROM orders "
                    + "WHERE status = 'pending_pay' AND "
                    + "DATEDIFF(day, created_at, GETDATE()) >= 3";

            stmtSelect = conn.prepareStatement(sqlSelect);
            rs = stmtSelect.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("id");
                int userId = rs.getInt("user_id");

                boolean cancelled = cancelOrder(orderId, userId);
                if (cancelled) {
                    System.out.println("Automatically cancelled expired order: " + orderId);
                } else {
                    System.out.println("Failed to cancel expired order: " + orderId);
                }
            }

            conn.commit();
        } catch (SQLException e) {
            System.out.println("Error checking expired orders: " + e.getMessage());
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.out.println("Rollback failed: " + ex.getMessage());
            }
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmtSelect != null) {
                    stmtSelect.close();
                }
                if (stmtUpdate != null) {
                    stmtUpdate.close();
                }
                if (conn != null) {
                    conn.setAutoCommit(true);
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
            }
        }
    }
}