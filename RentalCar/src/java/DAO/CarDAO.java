/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author tphon
 */
import Context.DBContext;
import entity.Color;
import entity.Car;
import entity.Size;
import java.io.File;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarDAO extends DBContext {

//_______________________________________Phần DAO Cho Việc List______________________________________________________________ 
    private static final int RECORDS_PER_PAGE = 10;

    //Lấy tổng hàng tồn của 1 sản phẩm
    public int getTotalStockByCarId(int carId) {
        String query = "SELECT SUM(stock_quantity) AS total_stock FROM car_variants WHERE car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("total_stock");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getTotalStockByCarSize(int carId, int sizeId) {
        int totalStock = 0;
        String sql = "SELECT SUM(stock_quantity) AS total_stock FROM car_variants WHERE car_id = ? AND size_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, carId);
            stmt.setInt(2, sizeId);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                totalStock = rs.getInt("total_stock");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return totalStock;
    }

    public int getTotalStockByCarColor(int carId, int colorId) {
        int totalStock = 0;
        String sql = "SELECT SUM(stock_quantity) AS total_stock FROM car_variants WHERE car_id = ? AND color_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, carId);
            stmt.setInt(2, colorId);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                totalStock = rs.getInt("total_stock");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return totalStock;
    }

    public int getTotalStockByCarId(int carId, int sizeId, int colorId) {
        int totalStock = 0;
        String sql = "SELECT SUM(stock_quantity) AS total_stock FROM car_variants WHERE car_id = ? AND size_id = ? AND color_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, carId);
            stmt.setInt(2, sizeId);
            stmt.setInt(3, colorId);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                totalStock = rs.getInt("total_stock");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return totalStock;
    }

    //Lấy danh sách sản phẩm thông qua lọc
    public List<Car> getCarsByFilter(String filterQuery, List<Object> params) {
        List<Car> cars = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(filterQuery)) {
            for (int i = 0; i < params.size(); i++) {
                ps.setObject(i + 1, params.get(i));
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setCategoryId(rs.getInt("category_id"));
                car.setDescription(rs.getString("description"));
                car.setOriginalPrice(rs.getBigDecimal("original_price"));
                car.setSalePrice(rs.getBigDecimal("sale_price"));
                car.setThumbnail(rs.getString("thumbnail"));
                car.setStatus(rs.getString("status"));
                car.setIsCombo(rs.getBoolean("is_combo"));
                car.setComboGroupId(rs.getInt("combo_group_id"));
                car.setCreatedAt(rs.getString("created_at"));
                car.setUpdatedAt(rs.getString("updated_at"));

                car.setStock(getTotalStockByCarId(rs.getInt("id")));
                car.setSubImages(getCarImages(rs.getInt("id")));

                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    //Lấy danh sách những sản phẩm thuộc 1 combo
    public List<Car> getComboCar(int comboGroupId) {
        List<Car> cars = new ArrayList<>();
        String query = "SELECT * FROM cars WHERE combo_group_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, comboGroupId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Car comboCar = new Car();
                comboCar.setId(rs.getInt("id"));
                comboCar.setTitle(rs.getString("title"));
                comboCar.setCategoryId(rs.getInt("category_id"));
                comboCar.setDescription(rs.getString("description"));
                comboCar.setOriginalPrice(rs.getBigDecimal("original_price"));
                comboCar.setSalePrice(rs.getBigDecimal("sale_price"));
                comboCar.setThumbnail(rs.getString("thumbnail"));
                comboCar.setStatus(rs.getString("status"));
                comboCar.setIsCombo(rs.getBoolean("is_combo"));
                comboCar.setComboGroupId(rs.getInt("combo_group_id"));
                comboCar.setCreatedAt(rs.getString("created_at"));
                comboCar.setUpdatedAt(rs.getString("updated_at"));
                comboCar.setStock(getTotalStockByCarId(rs.getInt("id")));

                cars.add(comboCar);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    //Lấy tổng sản phẩm đã đc lọc
    public int getTotalFilteredRecords(String filterQuery, List<Object> params) {
        String countQuery = "SELECT COUNT(*) AS total FROM (" + filterQuery + ") AS filtered";
        try (PreparedStatement ps = connection.prepareStatement(countQuery)) {
            for (int i = 0; i < params.size(); i++) {
                ps.setObject(i + 1, params.get(i));
            }
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Car> getPaginatedCars(String baseQuery, List<Object> params, int page) {
        int offset = (page - 1) * RECORDS_PER_PAGE;
        String paginatedQuery = baseQuery + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        params.add(offset);
        params.add(RECORDS_PER_PAGE);
        return getCarsByFilter(paginatedQuery, params);
    }

    public List<Size> getSizesByCarId(int carId) {
        List<Size> sizes = new ArrayList<>();
        String sql = "SELECT id, size FROM car_sizes WHERE car_id = ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {

            stmt.setInt(1, carId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Size size = new Size(rs.getInt("id"), rs.getString("size"));
                sizes.add(size);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return sizes;
    }

    public List<Color> getColorsByCarId(int carId) {
        List<Color> colors = new ArrayList<>();
        String sql = "SELECT id, color FROM car_colors WHERE car_id = ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, carId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Color color = new Color(rs.getInt("id"), rs.getString("color"));
                colors.add(color);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return colors;
    }

    public List<Car> getRelatedCars(int carId, int categoryId) {
        List<Car> cars = new ArrayList<>();
        String sql = "SELECT id, title, sale_price, thumbnail FROM cars WHERE category_id = ? AND id != ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, categoryId);
            stmt.setInt(2, carId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setSalePrice(rs.getBigDecimal("sale_price"));
                car.setThumbnail(rs.getString("thumbnail"));

                cars.add(car);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cars;
    }
    //_______________________________________Hết Phần DAO Cho Việc List______________________________________________________________ 

    //_________________________________________Phần DAO Cho Việc Add____________________________________________________________    
    // Lấy danh sách các sản phẩm chính của 1 combo
    public List<Car> getComboCars() {
        List<Car> comboCars = new ArrayList<>();
        String sql = "SELECT * FROM cars WHERE is_combo = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setComboGroupId(rs.getInt("combo_group_id"));
                comboCars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comboCars;
    }

    // Lấy giá trị combo_group_id lớn nhất
    public int getMaxComboGroupId() {
        int maxId = 0;
        String sql = "SELECT MAX(combo_group_id) as max_id FROM cars";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                maxId = rs.getInt("max_id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maxId;
    }

    // Lấy danh sách ảnh phụ
    public List<String> getCarImages(int carId) {
        List<String> images = new ArrayList<>();
        String query = "SELECT image_url FROM car_images WHERE car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                images.add(rs.getString("image_url"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }

    // Thêm sản phẩm vào db
    public boolean addCar(Car car, List<String> subImages) {
        String insertCar = "INSERT INTO cars (title, category_id, description, original_price, sale_price, thumbnail, is_combo, combo_group_id) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(insertCar, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, car.getTitle());
            ps.setInt(2, car.getCategoryId());
            ps.setString(3, car.getDescription());
            ps.setBigDecimal(4, car.getOriginalPrice());
            ps.setBigDecimal(5, car.getSalePrice());
            ps.setString(6, car.getThumbnail());
            ps.setBoolean(7, car.isIsCombo());
            ps.setInt(8, car.getComboGroupId());

            int affectedRows = ps.executeUpdate();
            if (affectedRows > 0) {
                ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int carId = generatedKeys.getInt(1);
                    addCarImages(carId, subImages);
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Thêm ảnh phụ vào db
    private void addCarImages(int carId, List<String> subImages) {
        String insertImage = "INSERT INTO car_images (car_id, image_url) VALUES (?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(insertImage)) {
            for (int i = 0; i < subImages.size(); i++) {
                ps.setInt(1, carId);
                ps.setString(2, subImages.get(i));
                ps.addBatch();
            }
            ps.executeBatch();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//______________________________________________________Hết Phần DAO Cho Việc Add_________________________________________

    // Kiểm tra trùng lặp
    public boolean isCarExists(String title, int categoryId) {
        String query = "SELECT COUNT(*) FROM cars WHERE title = ? AND category_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, title);
            ps.setInt(2, categoryId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
//_______________________________________________________Phần DAO Cho Việc Delete____________________________________________
    // Chuyển sản phẩm chính

    public boolean setIsComboByCarId(int carId, boolean isCombo) {
        String sql = "UPDATE cars SET is_combo = ? WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setBoolean(1, isCombo);
            ps.setInt(2, carId);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Trả về true nếu cập nhật thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Trả về false nếu có lỗi
    }

    //Kiểm tra xem sản phẩm có trong cart hay không
    public boolean hasCarInCart(int carId) {
        String query = "SELECT COUNT(*) FROM cart_items WHERE car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // Nếu COUNT > 0, sản phẩm đang có trong giỏ hàng
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //Kiểm tra sản phẩm có trong order processing không
    public boolean hasProcessOrders(int carId) {
        String query = "SELECT COUNT(*) FROM order_items oi "
                + "JOIN orders o ON oi.order_id = o.id "
                + "WHERE oi.car_id = ? AND o.status IN ('pending', 'processing', 'shipping')";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // Nếu có đơn hàng đang xử lý, không thể xóa
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
        //Kiểm tra sản phẩm có từng được đặt hay không
    public boolean hasOrders(int carId) {
        String query = "SELECT COUNT(*) FROM order_items oi "
                + "JOIN orders o ON oi.order_id = o.id "
                + "WHERE oi.car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //Kiểm tra sản phẩm còn tồn hàng không    
    public boolean hasStock(int carId) {
        String query = "SELECT SUM(stock_quantity) FROM car_variants WHERE car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // Nếu tổng stock_quantity > 0, sản phẩm vẫn còn tồn kho
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //Kiểm tra xem có được phép xóa hay không
    public boolean canDeleteCar(int carId) {
        return !hasProcessOrders(carId) && !hasStock(carId);
    }

    //Thực hiện xóa
    public boolean deleteCar(int carId, String uploadPath) {
        if (!canDeleteCar(carId)) {
            return false; // Không thể xóa nếu sản phẩm có đơn hàng chưa hoàn tất
        }

        // Lấy đường dẫn ảnh chính của sản phẩm
        String thumbnailPath = null;
        String selectThumbnailQuery = "SELECT thumbnail FROM cars WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(selectThumbnailQuery)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                thumbnailPath = rs.getString("thumbnail");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        // Lấy danh sách ảnh phụ của sản phẩm để xóa file
        List<String> imagePaths = getCarImages(carId);

        // Xóa ảnh chính khỏi thư mục
        if (thumbnailPath != null) {
            thumbnailPath = thumbnailPath.replace("uploads/carImages/", "");
            File thumbnailFile = new File(uploadPath + File.separator + thumbnailPath);
            if (thumbnailFile.exists()) {
                thumbnailFile.delete();
            }
        }

        // Xóa ảnh phụ sản phẩm khỏi thư mục
        for (String imagePath : imagePaths) {
            imagePath = imagePath.replace("uploads/carImages/", "");
            File file = new File(uploadPath + File.separator + imagePath);
            if (file.exists()) {
                file.delete();
            }
        }

        // Xóa ảnh trong DB
        String deleteImagesQuery = "DELETE FROM car_images WHERE car_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(deleteImagesQuery)) {
            ps.setInt(1, carId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        // Xóa sản phẩm khỏi DB
        String deleteCarQuery = "DELETE FROM cars WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(deleteCarQuery)) {
            ps.setInt(1, carId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
//_______________________________________________________Hết Phần DAO Cho Việc Delete____________________________________________

//_______________________________________________________Phần DAO Cho Việc EDIT____________________________________________    
    // Lấy sản phẩm bằng Id
    public Car getCarById(int carId) {
        String sql = "SELECT * FROM cars WHERE id = ?";
        Car car = null;

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setCategoryId(rs.getInt("category_id"));
                car.setDescription(rs.getString("description"));
                car.setOriginalPrice(rs.getBigDecimal("original_price"));
                car.setSalePrice(rs.getBigDecimal("sale_price"));
                car.setThumbnail(rs.getString("thumbnail"));
                car.setStatus(rs.getString("status"));
                car.setIsCombo(rs.getBoolean("is_combo"));
                car.setComboGroupId(rs.getInt("combo_group_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return car; // Trả về car (hoặc null nếu không tìm thấy)
    }

    // Lấy ID của ảnh phụ dựa trên URL
    public int getImageIdByUrl(String imageUrl) {
        String query = "SELECT id FROM car_images WHERE image_url = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, imageUrl);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1; // Trả về -1 nếu không tìm thấy
    }

    // Cập nhật thông tin sản phẩm
    public boolean updateCar(Car car, String uploadPath) {
        String sql = "UPDATE cars SET title = ?, category_id = ?, description = ?, "
                + "original_price = ?, sale_price = ?, thumbnail = ?, is_combo = ?, "
                + "combo_group_id = ?, status=? , updated_at = GETDATE() WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, car.getTitle());
            ps.setInt(2, car.getCategoryId());
            ps.setString(3, car.getDescription());
            ps.setBigDecimal(4, car.getOriginalPrice());
            ps.setBigDecimal(5, car.getSalePrice());
            ps.setString(6, car.getThumbnail());
            ps.setBoolean(7, car.isIsCombo());
            ps.setObject(8, car.getComboGroupId());
            if ("EOStock".equals(car.getStatus())) {
                ps.setString(9, "EOStock");
            } else {
                ps.setString(9, car.getStatus());
            }
            ps.setInt(10, car.getId());

            int rowsAffected = ps.executeUpdate();
            updateCarStatusIfNeeded(car.getId()); // Cập nhật trạng thái nếu cần
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Thay thế ảnh phụ
    public boolean replaceCarImage(int imageId, String newImageUrl, String uploadPath) {
        // Lấy URL ảnh cũ để xóa file
        String oldImageUrl = null;
        String selectQuery = "SELECT image_url FROM car_images WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(selectQuery)) {
            ps.setInt(1, imageId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                oldImageUrl = rs.getString("image_url");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        // Xóa ảnh cũ khỏi thư mục
        if (oldImageUrl != null) {
            File oldFile = new File(uploadPath + File.separator + oldImageUrl.replace("uploads/carImages/", ""));
            if (oldFile.exists()) {
                oldFile.delete();
            }
        }
        // Cập nhật ảnh mới vào cơ sở dữ liệu
        String updateQuery = "UPDATE car_images SET image_url = ? WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(updateQuery)) {
            ps.setString(1, newImageUrl);
            ps.setInt(2, imageId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Xóa ảnh phụ
    public boolean deleteCarImage(int imageId, String uploadPath) {
        String imageUrl = null;
        String selectQuery = "SELECT image_url FROM car_images WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(selectQuery)) {
            ps.setInt(1, imageId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                imageUrl = rs.getString("image_url");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        if (imageUrl != null) {
            File file = new File(uploadPath + File.separator + imageUrl.replace("uploads/carImages/", ""));
            if (file.exists()) {
                file.delete();
            }
        }

        String deleteQuery = "DELETE FROM car_images WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(deleteQuery)) {
            ps.setInt(1, imageId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Thêm ảnh phụ mới
    public boolean addSingleCarImage(int carId, String imageUrl) {
        String insertImage = "INSERT INTO car_images (car_id, image_url) VALUES (?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(insertImage)) {
            ps.setInt(1, carId);
            ps.setString(2, imageUrl);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

//_______________________________________________________Huy____________________________________________    
    // set status khi thêm số lượng cho sp mới
    public void updateCarStatusIfNeeded(int carId) {
        int totalStock = getTotalStockByCarId(carId);
        String query = "SELECT status FROM cars WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, carId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String currentStatus = rs.getString("status");
                // Cập nhật trạng thái nếu cần
                if (totalStock > 0 && "EOStock".equalsIgnoreCase(currentStatus)) {
                    updateCarStatus(carId, "active");
                } else if (totalStock <= 0 && !"EOStock".equalsIgnoreCase(currentStatus)) {
                    updateCarStatus(carId, "EOStock");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // set status khi sản phẩm hết hàng
    public void updateCarStatus(int carId, String status) {
        String query = "UPDATE cars SET status = ? WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, status);
            ps.setInt(2, carId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    //VTĐ lấy sản phẩm hiển thị lên home
    public List<Car> getCarsByCategory(int categoryId, int limit) {
        List<Car> cars = new ArrayList<>();

        String query = "SELECT TOP (?) p.id, p.title, p.description, p.thumbnail, p.sale_price "
                + "FROM cars p "
                + "JOIN categories c ON p.category_id = c.id "
                + "WHERE c.parent_id = ? OR c.id IN "
                + "(SELECT id FROM categories WHERE parent_id = ?) OR c.id IN "
                + "(SELECT id FROM categories WHERE parent_id IN (SELECT id FROM categories WHERE parent_id = ?)) "
                + "AND p.status = 'active' "
                + "ORDER BY p.created_at DESC";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, limit);
            ps.setInt(2, categoryId);
            ps.setInt(3, categoryId);
            ps.setInt(4, categoryId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setDescription(rs.getString("description"));
                car.setThumbnail(rs.getString("thumbnail"));
                car.setSalePrice(rs.getBigDecimal("sale_price"));
                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }

    public List<Car> getFeaturedCars(int limit) {
        List<Car> cars = new ArrayList<>();
        String query = "SELECT TOP (?) id, title, description, thumbnail, sale_price "
                + "FROM cars "
                + "WHERE status = 'active' "
                + "ORDER BY created_at DESC ";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                car.setDescription(rs.getString("description"));
                car.setThumbnail(rs.getString("thumbnail"));
                car.setSalePrice(rs.getBigDecimal("sale_price"));
                cars.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cars;
    }
    
    public List<Car> getActiveCarTitles() {
    List<Car> cars = new ArrayList<>();
    String sql = "SELECT id, title FROM cars WHERE status = 'active' ORDER BY updated_at DESC";
    try (PreparedStatement st = connection.prepareStatement(sql)) {
        try (ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("id"));
                car.setTitle(rs.getString("title"));
                cars.add(car);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return cars;
}


    ////////////////////////////////////////////////////////////////////////////
}
