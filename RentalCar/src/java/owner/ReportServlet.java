package owner;

import DAO.OwnerReportDAO;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ReportServlet", urlPatterns = {"/owner/report"})
public class ReportServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String reportType = request.getParameter("type");
        if (reportType == null) {
            reportType = "overview";
        }
        
        String selectedTable = request.getParameter("selectedTable");
        if (selectedTable == null) {
            selectedTable = "kpi"; 
        }
        
        OwnerReportDAO reportDAO = new OwnerReportDAO();
        
        try {
            Map<String, Object> commonData = new HashMap<>();
            
            // 1. Coupon Report
            if (reportType.equals("overview") || reportType.equals("coupon")) {
                commonData.put("couponsByStatus", reportDAO.getCouponsByStatus());
                commonData.put("couponsByType", reportDAO.getCouponsByType());
                commonData.put("couponsByDiscountType", reportDAO.getCouponsByDiscountType());
                commonData.put("couponUsageRate", reportDAO.getCouponUsageRate());
                commonData.put("mostUsedCoupons", reportDAO.getMostUsedCoupons(5));
                commonData.put("averageDiscountAmount", reportDAO.getAverageDiscountAmount());
                commonData.put("couponExpiryAnalysis", reportDAO.getCouponExpiryAnalysis());
                commonData.put("unusedExpiredCouponsCount", reportDAO.getUnusedExpiredCouponsCount());
                commonData.put("couponUsageMetrics", reportDAO.getCouponUsageMetrics());
                commonData.put("selectedTable", selectedTable);
            }
            
            // 2. Feedback Report
            if (reportType.equals("overview") || reportType.equals("feedback")) {
                commonData.put("averageRating", reportDAO.getAverageRating());
                commonData.put("ratingDistribution", reportDAO.getRatingDistribution());
                commonData.put("feedbackByStatus", reportDAO.getFeedbackByStatus());
                commonData.put("highestRatedCars", reportDAO.getCarsByRating(true, 5));
                commonData.put("lowestRatedCars", reportDAO.getCarsByRating(false, 5));
                commonData.put("carRatingCoverage", reportDAO.getCarRatingCoverage());
                commonData.put("mostActiveReviewers", reportDAO.getMostActiveReviewers(5));
                commonData.put("customerFeedbackRate", reportDAO.getCustomerFeedbackRate());
                commonData.put("feedbackWithImagesCount", reportDAO.getFeedbackWithImagesCount());
                commonData.put("feedbackWithRepliesCount", reportDAO.getFeedbackWithRepliesCount());
                Map<String, Integer> feedbackByStatus = reportDAO.getFeedbackByStatus();
                int totalFeedback = 0;
                for (Integer value : feedbackByStatus.values()) {
                    totalFeedback += value;
                }
                commonData.put("totalFeedback", totalFeedback);
                commonData.put("selectedTable", selectedTable);
            }
            
            // 3. Car Report
            if (reportType.equals("overview") || reportType.equals("car")) {
                commonData.put("carsByStatus", reportDAO.getCarsByStatus());
                commonData.put("carsByCategory", reportDAO.getCarsByCategory());
                commonData.put("comboCarsCount", reportDAO.getComboCarsCount());
                commonData.put("averagePriceByCategory", reportDAO.getAveragePriceByCategory());
                commonData.put("carsWithHighestPriceIncrease", reportDAO.getCarsWithHighestPriceIncrease(5));
                commonData.put("bestSellingCars", reportDAO.getBestSellingCars(5));
                commonData.put("revenueByCategory", reportDAO.getRevenueByCategory());
                commonData.put("carVariationsBySize", reportDAO.getCarVariationsBySize());
                commonData.put("carVariationsByColor", reportDAO.getCarVariationsByColor());
                commonData.put("combinedCarMetrics", reportDAO.getCombinedCarMetrics(10));
                commonData.put("selectedTable", selectedTable);
                Map<String, Integer> carsByStatus = reportDAO.getCarsByStatus();
                int totalCars = 0;
                for (Integer value : carsByStatus.values()) {
                    totalCars += value;
                }
                commonData.put("totalCars", totalCars);
            }
            
            // 4. Inventory Report
            if (reportType.equals("overview") || reportType.equals("inventory")) {
                commonData.put("totalInventoryValue", reportDAO.getTotalInventoryValue());
                commonData.put("totalInventoryByCar", reportDAO.getTotalInventoryByCar(5));
                commonData.put("inventoryByCategory", reportDAO.getInventoryByCategory());
                commonData.put("lowStockCars", reportDAO.getLowStockCars(10));
                commonData.put("carsWithoutRecentRestocking", reportDAO.getCarsWithoutRecentRestocking(29));
                commonData.put("outOfStockRate", reportDAO.getOutOfStockRate());
                commonData.put("carVariationsBySize", reportDAO.getCarVariationsBySize());
                commonData.put("carVariationsByColor", reportDAO.getCarVariationsByColor());
                commonData.put("selectedTable", selectedTable);
            }
            
            // 5. Slider Report
            if (reportType.equals("overview") || reportType.equals("slider")) {
                commonData.put("slidersByStatus", reportDAO.getSlidersByStatus());
                commonData.put("slidersByDisplayOrder", reportDAO.getSlidersByDisplayOrder());
                commonData.put("allSliders", reportDAO.getAllSliders());
                commonData.put("selectedTable", selectedTable);
                Map<String, Integer> slidersByStatus = reportDAO.getSlidersByStatus();
                int totalSliders = 0;
                for (Integer value : slidersByStatus.values()) {
                    totalSliders += value;
                }
                commonData.put("totalSliders", totalSliders);
            }
            
            // 6. Post Report
            if (reportType.equals("overview") || reportType.equals("post")) {
                commonData.put("postsByStatus", reportDAO.getPostsByStatus());
                commonData.put("featuredPostsCount", reportDAO.getFeaturedPostsCount());
                commonData.put("postsByAuthor", reportDAO.getPostsByAuthor());
                commonData.put("postDistributionByMonth", reportDAO.getPostDistributionByMonth());
                commonData.put("averageTimeDraftToPublished", reportDAO.getAverageTimeDraftToPublished());
                commonData.put("latestUpdatedPostDate", reportDAO.getLatestUpdatedPostDate());
                commonData.put("longTimeDraftPosts", reportDAO.getLongTimeDraftPosts(7));
                commonData.put("selectedTable", selectedTable);
                Map<String, Integer> postsByStatus = reportDAO.getPostsByStatus();
                int totalPosts = 0;
                for (Integer value : postsByStatus.values()) {
                    totalPosts += value;
                }
                commonData.put("totalPosts", totalPosts);
            }
            
            // 7. Comprehensive Report
            if (reportType.equals("comprehensive")) {
                commonData.put("combinedCarMetrics", reportDAO.getCombinedCarMetrics(10));
                commonData.put("couponUsageMetrics", reportDAO.getCouponUsageMetrics());
            }
            
            for (Map.Entry<String, Object> entry : commonData.entrySet()) {
                request.setAttribute(entry.getKey(), entry.getValue());
            }
            
            request.setAttribute("reportType", reportType);
            request.getRequestDispatcher("/owner/ownerreport.jsp").forward(request, response);
            
        } finally {
            reportDAO.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}