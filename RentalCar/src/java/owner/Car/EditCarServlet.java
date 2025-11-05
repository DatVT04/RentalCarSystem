package owner.Car;

import DAO.CartDAO;
import DAO.CategoryDAO;
import java.io.IOException;
import DAO.CarDAO;
import entity.Car;
import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "EditCarServlet", urlPatterns = {"/owner/editcar"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class EditCarServlet extends HttpServlet {

    private CarDAO carDAO = new CarDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();
    private CartDAO cartDAO = new CartDAO();
    private static final String UPLOAD_DIR = "uploads/carImages";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditCarServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditCarServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int carId = Integer.parseInt(request.getParameter("id"));
        Car car = carDAO.getCarById(carId);
        car.setSubImages(carDAO.getCarImages(carId));

        request.setAttribute("car", car);
        request.setAttribute("categories", categoryDAO.getThirdLevelCategories());
        request.setAttribute("comboCars", carDAO.getComboCars());
        request.setAttribute("alert", request.getParameter("alert"));
        request.getRequestDispatcher("/owner/car/editCar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int carId = Integer.parseInt(request.getParameter("carId"));
            Car car = carDAO.getCarById(carId);
            String action = request.getParameter("action");

            if ("uploadImage".equals(action)) {
                Part filePart = request.getPart("file");
                if (filePart != null && filePart.getSize() > 0) {
                    if (!isValidImage(filePart)) {
                        response.setContentType("application/json");
                        response.getWriter().write("{ \"error\": \"Invalid image format\" }");
                        return;
                    }

                    String imageUrl = saveImage(filePart, request);
                    if (imageUrl != null) {
                        response.setContentType("application/json");
                        String fullUrl = request.getContextPath() + "/" + imageUrl;
                        response.getWriter().write("{ \"url\": \"" + fullUrl + "\" }");
                    } else {
                        response.setContentType("application/json");
                        response.getWriter().write("{ \"error\": \"Upload failed\" }");
                    }
                } else {
                    response.setContentType("application/json");
                    response.getWriter().write("{ \"error\": \"No file uploaded\" }");
                }
                return;
            }


            String uploadPath = request.getServletContext().getRealPath("/" + UPLOAD_DIR);
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            for (Part part : request.getParts()) {
                if ((part.getName().equals("thumbnail") || part.getName().equals("subImage") || part.getName().equals("newSubImage")) && part.getSize() > 0) {
                    if (!isValidImage(part)) {
                        response.sendRedirect("editcar?id=" + carId + "&alert=ER1_IVImg");
                        return;
                    }
                }
            }

            if ("updateCar".equals(action)) {
                String status = request.getParameter("status");
                String title = request.getParameter("title");
                int categoryId = Integer.parseInt(request.getParameter("categoryId"));
                String newDescription = request.getParameter("description");

                String oldDescription = car.getDescription();
                List<String> oldImageUrls = extractImageUrls(oldDescription);
                List<String> newImageUrls = extractImageUrls(newDescription);
                for (String oldImageUrl : oldImageUrls) {
                    if (!newImageUrls.contains(oldImageUrl)) {
                        deleteImage(oldImageUrl, uploadPath);
                    }
                }

                if (carDAO.isCarExists(title, categoryId) && !car.getTitle().equals(title) && car.getCategoryId() != categoryId) {
                    response.sendRedirect("editcar?id=" + carId + "&alert=ER_dp");
                    return;
                }
                BigDecimal originalPrice = new BigDecimal(request.getParameter("originalPrice").replace(".", ""));
                if (originalPrice.compareTo(BigDecimal.ZERO) < 1 || originalPrice.compareTo(BigDecimal.valueOf(100000000)) == 1) {
                    response.sendRedirect("editcar?id=" + carId + "&alert=oP_IV");
                    return;
                }
                BigDecimal salePrice = new BigDecimal(request.getParameter("salePrice").replace(".", ""));

                boolean isCombo = request.getParameter("isCombo") != null;
                int comboGroupId = 0;

                if (car.isIsCombo() == isCombo && isCombo) {
                    comboGroupId = car.getComboGroupId();
                } else if (car.isIsCombo() != isCombo && isCombo) {
                    comboGroupId = carDAO.getMaxComboGroupId() + 1;
                } else if (car.isIsCombo() == isCombo && !isCombo) {
                    String groupRaw = request.getParameter("comboGroupId");
                    if (groupRaw != null && !groupRaw.isEmpty()) {
                        comboGroupId = Integer.parseInt(groupRaw);
                    }
                } else {
                    String groupRaw = request.getParameter("comboGroupId");
                    if (groupRaw != null && !groupRaw.isEmpty()) {
                        if (car.getComboGroupId() == Integer.parseInt(groupRaw)) {
                            List<Car> comboList = carDAO.getComboCar(car.getComboGroupId());
                            if (comboList.size() >= 2) {
                                int upCarId = comboList.get(comboList.size() - 2).getId();
                                carDAO.setIsComboByCarId(upCarId, true);
                            } else {
                                comboGroupId = 0;
                            }
                        } else {
                            comboGroupId = Integer.parseInt(groupRaw);
                        }
                    }
                }

                Part thumbnailPart = request.getPart("thumbnail");
                String thumbnail = car.getThumbnail();
                if (thumbnailPart != null && thumbnailPart.getSize() > 0) {
                    if (thumbnail != null && !thumbnail.isEmpty()) {
                        if (!carDAO.hasOrders(carId)) // kiểm tra đã từng đc đặt chưa nếu r thì ko cho xóa ảnh
                        deleteImage(thumbnail, uploadPath);
                    }
                    thumbnail = saveImage(thumbnailPart, request);
                }

                if ("EOStock".equals(car.getStatus())) {
                    status = "EOStock";
                } else {
                    if (!"active".equals(status) && !"inactive".equals(status)) {
                        status = "inactive";
                    }
                }

                car.setStatus(status);
                car.setTitle(title);
                car.setCategoryId(categoryId);
                car.setDescription(newDescription);
                car.setOriginalPrice(originalPrice);
                car.setSalePrice(salePrice);
                car.setThumbnail(thumbnail);
                car.setIsCombo(isCombo);
                car.setComboGroupId(comboGroupId);

                boolean updated = carDAO.updateCar(car, uploadPath);
                if (carDAO.hasCarInCart(carId)) {
                    if (!cartDAO.deleteCarFromCart(carId)) {
                        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Lỗi khi xóa sản phẩm trong giỏ hàng");
                        return;
                    }
                }
                if (updated) {
                    response.sendRedirect("carlist?alert=SSU");
                }

            } else if ("replaceSubImage".equals(action)) {
                String oldImg = request.getParameter("oldSubImg");
                int imageId = carDAO.getImageIdByUrl(oldImg);
                Part subImagePart = request.getPart("subImage");
                if (subImagePart != null && subImagePart.getSize() > 0) {
                    String newImageUrl = saveImage(subImagePart, request);
                    if (newImageUrl != null) {
                        carDAO.replaceCarImage(imageId, newImageUrl, uploadPath);
                        response.sendRedirect("editcar?id=" + car);
                    } else {
                        response.sendRedirect("editcar?id=" + carId + "&alert=ERR");
                    }
                }
            } else if ("deleteSubImage".equals(action)) {
                String oldImg = request.getParameter("oldSubImg");
                int imageId = carDAO.getImageIdByUrl(oldImg);
                if (carDAO.deleteCarImage(imageId, uploadPath)) {
                    response.sendRedirect("editcar?id=" + carId);
                } else {
                    response.sendRedirect("editcar?id=" + carId + "&alert=ERR");
                }
            } else if ("addNewSubImage".equals(action)) {
                List<String> currentImages = carDAO.getCarImages(carId);
                if (currentImages == null) {
                    currentImages = new ArrayList<>();
                }

                // Đếm số file người dùng upload
                int newImageCount = 0;
                for (Part part : request.getParts()) {
                    if (part.getName().equals("newSubImage") && part.getSize() > 0) {
                        newImageCount++;
                    }
                }

                // Kiểm tra tổng số ảnh sau khi thêm có vượt quá 5 không
                if (currentImages.size() + newImageCount > 5) {
                    response.sendRedirect("editcar?id=" + carId + "&alert=ER1_FULL");
                    return;
                }

                // Nếu không vượt quá, tiến hành thêm ảnh
                for (Part part : request.getParts()) {
                    if (part.getName().equals("newSubImage") && part.getSize() > 0) {
                        String newImageUrl = saveImage(part, request);
                        if (newImageUrl != null) {
                            carDAO.addSingleCarImage(carId, newImageUrl);
                            currentImages.add(newImageUrl);
                        } else {
                            response.sendRedirect("editcar?id=" + carId + "&alert=ERR");
                            return;
                        }
                    }
                }
                response.sendRedirect("editcar?id=" + carId + "#subimagepart");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("carlist?alert=ERR");
        }
    }

    private String saveImage(Part part, HttpServletRequest request) {
        try {
            String oldFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            String fileExtension = oldFileName.substring(oldFileName.lastIndexOf("."));
            String fileName = "img_" + System.currentTimeMillis() + fileExtension;
            String uploadPath = request.getServletContext().getRealPath("/" + UPLOAD_DIR);

            File uploadFolder = new File(uploadPath);
            if (!uploadFolder.exists()) {
                uploadFolder.mkdirs();
            }

            String filePath = uploadPath + File.separator + fileName;
            part.write(filePath);
            return UPLOAD_DIR + "/" + fileName;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean isValidImage(Part part) {
        String contentType = part.getContentType();
        return contentType != null && (contentType.equals("image/jpeg")
                || contentType.equals("image/png")
                || contentType.equals("image/gif")
                || contentType.equals("image/svg+xml")
                || contentType.equals("image/webp"));
    }

    private void deleteImage(String imagePath, String uploadPath) {
        imagePath = imagePath.replace(UPLOAD_DIR + "/", "");
        File file = new File(uploadPath + File.separator + imagePath);
        if (file.exists()) {
            file.delete();
        }
    }

    private List<String> extractImageUrls(String htmlContent) {
        List<String> imageUrls = new ArrayList<>();
        if (htmlContent == null) {
            return imageUrls;
        }

        Pattern pattern = Pattern.compile("<img[^>]+src=\"(.*?)\"");
        Matcher matcher = pattern.matcher(htmlContent);
        while (matcher.find()) {
            String src = matcher.group(1);
            if (src.contains(UPLOAD_DIR)) {
                String relativePath = src.substring(src.indexOf(UPLOAD_DIR));
                imageUrls.add(relativePath);
            }
        }
        return imageUrls;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
