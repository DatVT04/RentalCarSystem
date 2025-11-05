/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package owner.Car;

import DAO.CartDAO;
import DAO.InventoryDAO;
import DAO.CarDAO;
import entity.Car;
import entity.User;
import entity.Variant;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "DeleteCarServlet", urlPatterns = {"/owner/deletecar"})
public class DeleteCarServlet extends HttpServlet {

    private CarDAO carDAO = new CarDAO();
    private CartDAO cartDAO = new CartDAO();
    private InventoryDAO inventoryDAO = new InventoryDAO();
    private static final String UPLOAD_DIR = "uploads/carImages";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteCarServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteCarServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int carId = Integer.parseInt(request.getParameter("carId"));
            String uploadPath = getServletContext().getRealPath("/" + UPLOAD_DIR);
            Car car = carDAO.getCarById(carId);

            // Kiểm tra đơn hàng
            if (carDAO.hasProcessOrders(carId)) {
                response.sendRedirect("carlist?alert=ER1_OP");
                return;
            }

            // Kiểm tra kho
            if (carDAO.hasStock(carId)) {
                response.sendRedirect("carlist?alert=ER2_HS");
                return;
            } else {
                List<Variant> listVariants = inventoryDAO.getCarVariants(carId);
                List<Integer> variantIds = new ArrayList<>();
                for (Variant tempV : listVariants) {
                    variantIds.add(tempV.getId());
                }

                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("acc");
                if (user != null) {
                    for (int tempId : variantIds) {
                        cartDAO.deleteCartItemByVariantId(tempId);
                        inventoryDAO.deleteVariant(tempId);
                    }
                } else {
                    cartDAO.deleteCartItemsByVariantIdsFromCookie(request, response, variantIds);
                    for (int tempId : variantIds) {
                        inventoryDAO.deleteVariant(tempId);
                    }
                }
            }

            // Xử lý combo
            Car tempP = carDAO.getCarById(carId);
            if (tempP.isIsCombo()) {
                List<Car> comboList = carDAO.getComboCar(tempP.getComboGroupId());
                if (comboList.size() >= 2) {
                    int upCarId = comboList.get(comboList.size() - 2).getId();
                    carDAO.setIsComboByCarId(upCarId, true);
                }
            }

            // Trích xuất và xóa ảnh trong description
            String description = tempP.getDescription();
            if (description != null && !description.isEmpty()) {
                List<String> imageUrls = extractImageUrls(description);
                for (String imageUrl : imageUrls) {
                    deleteImage(imageUrl, uploadPath);
                }
            }

            // Xóa sản phẩm và ảnh liên quan
            if (carDAO.deleteCar(carId, uploadPath)) {
                response.sendRedirect("carlist?alert=SSD");
            } else {
                response.sendRedirect("carlist?alert=ERR");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // Trích xuất URL ảnh từ nội dung HTML
    private List<String> extractImageUrls(String htmlContent) {
        List<String> imageUrls = new ArrayList<>();
        if (htmlContent == null) {
            return imageUrls;
        }

        // Biểu thức chính quy để tìm các thẻ <img src="...">
        Pattern pattern = Pattern.compile("<img[^>]+src=\"(.*?)\"");
        Matcher matcher = pattern.matcher(htmlContent);
        while (matcher.find()) {
            String src = matcher.group(1);
            // Chỉ lấy các URL thuộc thư mục uploads/carImages
            if (src.contains(UPLOAD_DIR)) {
                // Loại bỏ context path nếu có (ví dụ: /context/uploads/carImages/...)
                String relativePath = src.substring(src.indexOf(UPLOAD_DIR));
                imageUrls.add(relativePath);
            }
        }
        return imageUrls;
    }

    // Xóa ảnh từ thư mục
    private void deleteImage(String imagePath, String uploadPath) {
        imagePath = imagePath.replace(UPLOAD_DIR + "/", ""); // Loại bỏ phần prefix
        File file = new File(uploadPath + File.separator + imagePath);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
