package Cart;

import DAO.CartDAO;
import DAO.InventoryDAO;
import DAO.ProductDAO;
import entity.Cart;
import entity.CartItem;
import entity.Product;
import entity.User;
import entity.Variant;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CartDetail", urlPatterns = {"/cartdetail"})
public class CartDetail extends HttpServlet {

    private ProductDAO productDAO = new ProductDAO();
    private CartDAO cartDAO = new CartDAO();
    private InventoryDAO inventoryDAO = new InventoryDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartDetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("acc");

        Cart cart = user != null
                ? cartDAO.getCart(request, user.getId())
                : cartDAO.getCart(request, null);

        // Lấy thông tin tồn kho cho mỗi sản phẩm trong giỏ hàng
        Map<Integer, Integer> stock = new HashMap<>();
        if (cart != null && cart.getItems() != null) {
            for (CartItem item : cart.getItems()) {
                Variant variant = inventoryDAO.getVariant(item.getVariantId());
                if (variant != null) {
                    stock.put(item.getId(), variant.getQuantity());
                }
            }
        }
        request.setAttribute("stockMap", stock);

        Map<Integer, String> productStatusMap = new HashMap<>();
        if (cart != null && cart.getItems() != null) {
            for (CartItem item : cart.getItems()) {
                Product product = productDAO.getProductById(item.getProductId());
                if (product != null) {
                    productStatusMap.put(item.getId(), product.getStatus());
                }
            }
        }

        // Truyền thông tin trạng thái sản phẩm tới JSP
        request.setAttribute("productStatusMap", productStatusMap);

        setupCartAttributes(request, cart);
        request.getRequestDispatcher("cartdetail.jsp").forward(request, response);
    }

    private void setupCartAttributes(HttpServletRequest request, Cart cart) {
        double totalAmount = cartDAO.calculateTotalAmount(cart);

        request.setAttribute("cart", cart);
        request.setAttribute("totalAmount", totalAmount);
        request.setAttribute("finalAmount", totalAmount);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("acc");

        if ("update".equals(action)) {
            handleUpdateQuantity(request, response, user);
        } else if ("delete".equals(action)) {
            handleDeleteItem(request, response);
        } else if ("checkout".equals(action)) {
            handleCheckout(request, response);
            return;
        } else if ("checkStock".equals(action)) {
            handleCheckStock(request, response);
            return;
        }

        response.sendRedirect("cartdetail");
    }

    private void handleCheckStock(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            int variantId = Integer.parseInt(request.getParameter("variantId"));

            Variant variant = inventoryDAO.getVariant(variantId);
            if (variant != null) {
                out.print("{\"success\": true, \"stockQuantity\": " + variant.getQuantity() + "}");
            } else {
                out.print("{\"success\": false, \"message\": \"Không tìm thấy sản phẩm\"}");
            }
        } catch (Exception e) {
            out.print("{\"success\": false, \"message\": \"" + e.getMessage() + "\"}");
        }
    }

    private void handleCheckout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String[] selectedIds = request.getParameterValues("selectedItems");

        if (selectedIds == null || selectedIds.length == 0) {
            request.setAttribute("error", "Vui lòng chọn sản phẩm");
            doGet(request, response);
            return;
        }

        List<String> selectedItemIds = new ArrayList<>();
        List<String> selectedQuantities = new ArrayList<>();
        User user = (User) session.getAttribute("acc");
        Cart cart = user != null ? cartDAO.getCartByUserId(user.getId()) : cartDAO.getCartFromCookies(request);

        for (String itemId : selectedIds) {
            String quantity = request.getParameter("quantity_" + itemId);
            selectedItemIds.add(itemId);
            selectedQuantities.add(quantity);
        }

        session.setAttribute("selectedItemIds", selectedItemIds);
        session.setAttribute("selectedQuantities", selectedQuantities);

        response.sendRedirect("cartcontact");
    }

    private void handleUpdateQuantity(HttpServletRequest request, HttpServletResponse response, User user) {
        try {
            int cartItemId = Integer.parseInt(request.getParameter("cartItemId"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // Kiểm tra số lượng tồn kho
            int variantId = -1;
            Cart cart = user != null
                    ? cartDAO.getCartByUserId(user.getId())
                    : cartDAO.getCartFromCookies(request);

            for (CartItem item : cart.getItems()) {
                if (item.getId() == cartItemId) {
                    variantId = item.getVariantId();
                    break;
                }
            }

            if (variantId != -1) {
                Variant variant = inventoryDAO.getVariant(variantId);
                if (variant != null && variant.getQuantity() < quantity) {
                    quantity = variant.getQuantity(); // Giới hạn số lượng ở mức tồn kho
                }
            }

            System.out.println("Updating cart item: " + cartItemId + " with quantity: " + quantity);

            if (user != null) {
                boolean success = cartDAO.updateCartItemQuantity(cartItemId, quantity);
                if (!success) {
                    System.out.println("Failed to update cart item quantity in database");
                }
            } else {
                cartDAO.updateCartItemQuantityInCookie(request, response, cartItemId, quantity);
            }

            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print("{\"success\": true, \"updatedQuantity\": " + quantity + "}");
            out.flush();

        } catch (NumberFormatException | IOException e) {
            System.out.println("Error parsing quantity: " + e.getMessage());
            System.out.println("cartItemId: " + request.getParameter("cartItemId"));
            System.out.println("quantity: " + request.getParameter("quantity"));

            try {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print("{\"success\": false, \"message\": \"" + e.getMessage() + "\"}");
                out.flush();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }

    private void handleDeleteItem(HttpServletRequest request, HttpServletResponse response) {
        try {
            int cartItemId = Integer.parseInt(request.getParameter("cartItemId"));
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("acc");

            if (user != null) {
                // Người dùng đã đăng nhập, xóa từ database
                cartDAO.deleteCartItem(request, response, cartItemId, cartItemId);
            } else {
                // Người dùng chưa đăng nhập, xóa từ cookie
                cartDAO.deleteCartItemFromCookie(request, response, cartItemId);
            }
        } catch (NumberFormatException e) {
            System.out.println("Lỗi khi parse ID sản phẩm: " + e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}