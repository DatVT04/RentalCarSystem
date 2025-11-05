/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package owner.Inventory;

import DAO.InventoryDAO;
import DAO.CarDAO;
import entity.Color;
import entity.Size;
import entity.Variant;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.regex.Pattern;

/**
 *
 * @author nguye
 */
@WebServlet(name = "AddModelServlet", urlPatterns = {"/owner/addModel"})
public class AddModelServlet extends HttpServlet {

    private static final Pattern COLOR_PATTERN = Pattern.compile("^([A-ZĐẮẰẲẴẶÀẢÃÁẠÂẦẨẪẬẤĂẲẮẰẴẲẸẺẼÈÉẸÊỀỂỄỆẾÌÍỈĨỊÒÓỎÕỌÔỒỐỔỖỘƠỜỚỞỠỢÙÚỦŨỤƯỪỨỬỮỰỲÝỶỸỴỴ]|[a-zđắằẳẵặàảãáạâầẩẫậấăằẳẵẳẹẻẽèéẹêềểễệếìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ])+([ ]([A-ZĐẮẰẲẴẶÀẢÃÁẠÂẦẨẪẬẤĂẲẮẰẴẲẸẺẼÈÉẸÊỀỂỄỆẾÌÍỈĨỊÒÓỎÕỌÔỒỐỔỖỘƠỜỚỞỠỢÙÚỦŨỤƯỪỨỬỮỰỲÝỶỸỴỴ]|[a-zđắằẳẵặàảãáạâầẩẫậấăằẳẵẳẹẻẽèéẹêềểễệếìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ])+)*$");
    private static final int MAX_QUANTITY = 1000000;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String carIdStr = request.getParameter("carId");
        if (carIdStr == null || carIdStr.trim().isEmpty()) {
            response.sendRedirect("inventorylist");
            return;
        }

        int carId = Integer.parseInt(carIdStr);
        InventoryDAO inventoryDao = new InventoryDAO();

        List<Color> colorList = inventoryDao.getColorsByCarId(carId);
        List<Size> sizeList = inventoryDao.getSizesByCarId(carId);
        List<Variant> variants = inventoryDao.getCarVariants(carId); // Lấy danh sách variants

        request.setAttribute("carId", carId);
        request.setAttribute("colorList", colorList);
        request.setAttribute("sizeList", sizeList);
        request.setAttribute("variants", variants); // Thêm variants vào request

        request.getRequestDispatcher("/owner/inventory/AddModel.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        InventoryDAO inventoryDao = new InventoryDAO();
        CarDAO carDao = new CarDAO();

        try {
            int carId = Integer.parseInt(request.getParameter("carId"));
            String source = request.getParameter("source");
            String colorName = request.getParameter("color").trim();
            String sizeName = request.getParameter("size").trim();
            String quantityStr = request.getParameter("quantity");

            List<Color> colorList = inventoryDao.getColorsByCarId(carId);
            List<Size> sizeList = inventoryDao.getSizesByCarId(carId);
            List<Variant> variants = inventoryDao.getCarVariants(carId);

            if (!COLOR_PATTERN.matcher(colorName).matches()) {
                request.setAttribute("errorMessage", "Màu sắc chỉ được phép chứa chữ cái và khoảng trắng");
                request.setAttribute("carId", carId);
                request.setAttribute("source", source);
                request.setAttribute("colorList", colorList);
                request.setAttribute("sizeList", sizeList);
                request.setAttribute("variants", variants);
                request.getRequestDispatcher("/owner/inventory/AddModel.jsp").forward(request, response);
                return;
            }

            int quantity;
            try {
                quantity = Integer.parseInt(quantityStr);
                if (quantity < 0 || quantity > MAX_QUANTITY) {
                    throw new NumberFormatException();
                }
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Số lượng phải là số nguyên từ 0 đến " + MAX_QUANTITY);
                request.setAttribute("carId", carId);
                request.setAttribute("source", source);
                request.setAttribute("colorList", colorList);
                request.setAttribute("sizeList", sizeList);
                request.setAttribute("variants", variants);
                request.getRequestDispatcher("/owner/inventory/AddModel.jsp").forward(request, response);
                return;
            }

            Color color = inventoryDao.getColorByName(carId, colorName);
            Size size = inventoryDao.getSizeByName(carId, sizeName);

            int colorId;
            if (color != null) {
                colorId = color.getId();
            } else {
                colorId = inventoryDao.addColor(carId, colorName);
                if (colorId == -1) {
                    throw new SQLException("Không thể tạo màu mới");
                }
            }

            int sizeId;
            if (size != null) {
                sizeId = size.getId();
            } else {
                sizeId = inventoryDao.addSize(carId, sizeName);
                if (sizeId == -1) {
                    throw new SQLException("Không thể tạo kích thước mới");
                }
            }

            if (inventoryDao.isVariantExists(carId, colorId, sizeId)) {
                request.setAttribute("errorMessage", "Mẫu với màu " + colorName + " và kích thước " + sizeName + " đã tồn tại");
                request.setAttribute("carId", carId);
                request.setAttribute("source", source);
                request.setAttribute("colorList", colorList);
                request.setAttribute("sizeList", sizeList);
                request.setAttribute("variants", variants);
                request.getRequestDispatcher("/owner/inventory/AddModel.jsp").forward(request, response);
                return;
            }

            inventoryDao.addNewVariant(carId, colorId, sizeId, quantity);
            carDao.updateCarStatusIfNeeded(carId);

            String redirectUrl = "inventoryDetail?id=" + carId + "&success=add";
            if (source != null && !source.trim().isEmpty()) {
                redirectUrl += "&source=" + source;
            }
            response.sendRedirect(redirectUrl);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Lỗi hệ thống: " + e.getMessage());
            request.setAttribute("carId", request.getParameter("carId"));
            request.setAttribute("source", request.getParameter("source"));
            request.setAttribute("colorList", inventoryDao.getColorsByCarId(Integer.parseInt(request.getParameter("carId"))));
            request.setAttribute("sizeList", inventoryDao.getSizesByCarId(Integer.parseInt(request.getParameter("carId"))));
            request.setAttribute("variants", inventoryDao.getCarVariants(Integer.parseInt(request.getParameter("carId"))));
            request.getRequestDispatcher("/owner/inventory/AddModel.jsp").forward(request, response);
        }
    }
}