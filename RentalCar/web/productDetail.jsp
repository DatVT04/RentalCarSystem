<%-- 
    Document   : carRentalDetail
    Created on : Feb 25, 2025, 2:04:38 AM
    Author     : tphon
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>${product.title} - Dịch Vụ Cho Thuê Xe</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
    /* Global Typography and Color Palette */
    :root {
        --primary-color: #1e3a8a;
        --secondary-color: #3b82f6;
        --accent-color: #0ea5e9;
        --text-color: #1f2937;
        --light-background: #f8fafc;
        --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        --success-color: #10b981;
        --warning-color: #f59e0b;
    }

    body {
        font-family: 'Inter', 'Segoe UI', Roboto, sans-serif;
        background-color: var(--light-background);
        color: var(--text-color);
        line-height: 1.6;
    }

    .container {
        max-width: 1400px;
        padding: 2rem;
    }

    .car-container {
        background: white;
        border-radius: 15px;
        box-shadow: var(--card-shadow);
        padding: 30px;
        margin-bottom: 30px;
        transition: all 0.3s ease;
    }

    .car-container:hover {
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    }

    /* Car Images */
    .car-image-main {
        width: calc(100% - 120px);
        height: 600px;
        object-fit: cover;
        border-radius: 12px;
        transition: transform 0.4s ease;
    }

    .image-section {
        display: flex;
        gap: 20px;
    }

    .thumbnail-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
        width: 100px;
        min-width: 100px;
        overflow-y: auto;
        max-height: 600px;
        padding-right: 10px;
        border-radius: 8px;
    }

    .thumbnail {
        width: 100%;
        height: 100px;
        object-fit: cover;
        border-radius: 8px;
        cursor: pointer;
        border: 2px solid transparent;
        transition: all 0.3s ease;
        display: block;
    }

    .thumbnail:hover, .thumbnail.active {
        border-color: var(--accent-color);
        transform: scale(1.05);
    }

    .thumbnail-placeholder {
        width: 100%;
        height: 100px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #999;
        font-size: 0.9rem;
        text-align: center;
        background: #fff;
        border-radius: 8px;
        border: 1px dashed #ddd;
    }

    /* Car Details */
    .car-title {
        font-size: 2rem;
        font-weight: 700;
        color: var(--primary-color);
        margin-bottom: 15px;
    }

    .car-price {
        display: flex;
        align-items: baseline;
        gap: 15px;
        margin-bottom: 20px;
    }

    .rental-price {
        font-size: 1.8rem;
        font-weight: 700;
        color: var(--accent-color);
    }

    .price-unit {
        font-size: 1rem;
        color: #666;
        font-weight: 400;
    }

    .car-specs {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 15px;
        margin-bottom: 25px;
        padding: 20px;
        background: #f8fafc;
        border-radius: 10px;
    }

    .spec-item {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .spec-item i {
        color: var(--accent-color);
        font-size: 1.2rem;
        width: 25px;
    }

    .spec-label {
        font-weight: 600;
        color: var(--text-color);
    }

    /* Rental Options */
    .rental-options {
        margin-bottom: 25px;
    }

    .option-label {
        font-weight: 600;
        color: var(--secondary-color);
        margin-bottom: 8px;
        display: block;
    }

    .form-select, .form-control {
        border-radius: 8px;
        border: 1px solid #e0e0e0;
        transition: all 0.3s ease;
    }

    .form-select:focus, .form-control:focus {
        border-color: var(--accent-color);
        box-shadow: 0 0 0 2px rgba(14, 165, 233, 0.2);
    }

    .date-range {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 15px;
    }

    .rental-duration {
        display: flex;
        align-items: center;
        gap: 10px;
        margin-top: 10px;
        padding: 15px;
        background: #eff6ff;
        border-radius: 8px;
    }

    .rental-duration i {
        color: var(--accent-color);
    }

    .duration-text {
        font-weight: 600;
        color: var(--primary-color);
    }

    .availability-status {
        display: flex;
        align-items: center;
        gap: 8px;
        padding: 12px 20px;
        border-radius: 8px;
        font-weight: 600;
        margin-bottom: 20px;
    }

    .availability-status.available {
        background: #d1fae5;
        color: var(--success-color);
    }

    .availability-status.unavailable {
        background: #fee2e2;
        color: #dc2626;
    }

    /* Action Buttons */
    .action-buttons {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 15px;
        margin-top: 30px;
    }

    .btn-rent-now, .btn-deposit {
        padding: 15px 20px;
        border: none;
        border-radius: 10px;
        font-size: 1rem;
        font-weight: 600;
        color: white;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        cursor: pointer;
    }

    .btn-rent-now {
        background: linear-gradient(135deg, var(--accent-color), var(--secondary-color));
    }

    .btn-deposit {
        background: linear-gradient(135deg, var(--success-color), #059669);
    }

    .btn-rent-now:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 20px rgba(14, 165, 233, 0.3);
    }

    .btn-deposit:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 20px rgba(16, 185, 129, 0.3);
    }

    .btn-rent-now:disabled, .btn-deposit:disabled {
        background: #9ca3af;
        cursor: not-allowed;
        transform: none;
    }

    /* Pricing Summary */
    .pricing-summary {
        background: #f0f9ff;
        border: 2px solid #bae6fd;
        border-radius: 10px;
        padding: 20px;
        margin-top: 20px;
    }

    .pricing-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 10px;
        color: var(--text-color);
    }

    .pricing-row.total {
        font-size: 1.3rem;
        font-weight: 700;
        color: var(--primary-color);
        padding-top: 15px;
        border-top: 2px solid #bae6fd;
        margin-top: 15px;
    }

    /* Car Meta */
    .car-meta {
        margin-top: 20px;
        padding-top: 20px;
        border-top: 1px solid #eee;
        font-size: 0.9rem;
        color: #777;
    }

    .meta-item {
        margin-bottom: 10px;
    }

    .meta-item a {
        color: var(--accent-color);
        text-decoration: none;
    }

    .meta-item a:hover {
        text-decoration: underline;
    }

    /* Feedback Section */
    .feedback-section {
        margin-top: 50px;
        background: white;
        border-radius: 15px;
        padding: 30px;
        box-shadow: var(--card-shadow);
    }

    .feedback-title {
        font-size: 1.5rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid var(--accent-color);
    }

    .feedback-item {
        padding: 20px 0;
        border-bottom: 1px solid #eee;
        display: flex;
        gap: 20px;
    }

    .feedback-avatar {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background: linear-gradient(135deg, var(--accent-color), var(--secondary-color));
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 1.2rem;
        flex-shrink: 0;
    }

    .feedback-content {
        flex: 1;
    }

    .feedback-author {
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 5px;
    }

    .feedback-rating {
        color: #f59e0b;
        margin-bottom: 8px;
    }

    .feedback-text {
        color: #666;
        line-height: 1.6;
    }

    .feedback-images {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-top: 10px;
    }

    .feedback-images img {
        width: 100px;
        height: 100px;
        object-fit: cover;
        border-radius: 8px;
        cursor: pointer;
        transition: transform 0.3s ease;
    }

    .feedback-images img:hover {
        transform: scale(1.05);
    }

    .feedback-date {
        font-size: 0.8rem;
        color: #999;
        margin-top: 5px;
    }

    .reply {
        background-color: #f0f9ff;
        padding: 15px;
        border-radius: 8px;
        margin-top: 15px;
        margin-left: 40px;
        border-left: 3px solid var(--accent-color);
    }

    .reply .feedback-author {
        color: var(--secondary-color);
    }

    /* Similar Cars Section */
    .similar-cars-section {
        margin-top: 50px;
        margin-bottom: 50px;
        background: white;
        border-radius: 15px;
        padding: 30px;
        box-shadow: var(--card-shadow);
    }

    .similar-cars-title {
        font-size: 1.5rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid var(--accent-color);
    }

    .car-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 25px;
    }

    .car-card {
        border: none;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: var(--card-shadow);
        transition: all 0.4s ease;
        display: flex;
        flex-direction: column;
    }

    .car-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    }

    .car-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
        transition: transform 0.4s ease;
    }

    .car-card:hover .car-image {
        transform: scale(1.1);
    }

    .car-info {
        padding: 20px;
        background: white;
        flex-grow: 1;
    }

    .car-card-title {
        font-size: 1.1rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 10px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }

    .car-card-price {
        color: var(--accent-color);
        font-size: 1.3rem;
        font-weight: 700;
        margin-bottom: 15px;
    }

    /* Description Section */
    .car-description-section {
        background: white;
        border-radius: 15px;
        padding: 30px;
        margin-top: 30px;
        box-shadow: var(--card-shadow);
    }

    .car-description-title {
        font-size: 1.5rem;
        font-weight: 600;
        color: var(--primary-color);
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid var(--accent-color);
    }

    .car-description-content {
        color: #666;
        line-height: 1.8;
        font-size: 1rem;
    }

    .car-description-content p {
        margin-bottom: 15px;
    }

    .car-description-content img {
        max-width: 100%;
        height: auto;
        border-radius: 8px;
        margin: 15px 0;
    }

    .car-description-content ul,
    .car-description-content ol {
        padding-left: 30px;
        margin-bottom: 15px;
    }

    .car-description-content strong,
    .car-description-content b {
        color: var(--primary-color);
    }

    /* Pagination */
    .pagination {
        justify-content: center;
        margin-top: 30px;
        display: flex;
        gap: 5px;
    }

    .page-link {
        color: var(--primary-color);
        border-radius: 6px;
        transition: all 0.3s ease;
    }

    .page-link:hover {
        background-color: var(--accent-color);
        color: white;
    }

    .page-item.active .page-link {
        background-color: var(--primary-color);
        border-color: var(--primary-color);
        color: white;
    }

    /* Responsive Adjustments */
    @media (max-width: 992px) {
        .car-grid {
            grid-template-columns: repeat(3, 1fr);
        }
        .car-specs {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width: 768px) {
        .action-buttons {
            grid-template-columns: 1fr;
        }
        .car-image-main {
            height: 300px;
        }
        .date-range {
            grid-template-columns: 1fr;
        }
        .car-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
        }
    }

    @media (max-width: 576px) {
        .car-grid {
            grid-template-columns: 1fr;
        }
        .car-title {
            font-size: 1.5rem;
        }
        .rental-price {
            font-size: 1.5rem;
        }
        .car-image-main {
            height: 250px;
        }
    }

    #feedback_section {
        scroll-margin-top: 100px;
    }
</style>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="container">
            <div class="car-container">
                <c:if test="${alert != null && !alert.trim().isEmpty()}">
                    <c:choose>
                        <c:when test="${alert.equals('EOS')}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                Xe hiện không khả dụng hoặc đang được bảo trì.
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:when>
                        <c:when test="${alert.equals('SS')}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                Đặt xe thành công! Chúng tôi sẽ liên hệ với bạn sớm.
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:when>
                        <c:when test="${alert.equals('ERR')}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                Lỗi không xác định. Vui lòng thử lại.
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:when>
                    </c:choose>
                </c:if>
                <div class="row">
                    <!-- Car Images Column -->
                    <div class="col-md-6">
                        <div class="image-section">
                            <div class="thumbnail-container">
                                <c:choose>
                                    <c:when test="${not empty product.subImages}">
                                        <c:forEach items="${product.subImages}" var="image" varStatus="status">
                                            <img src="${image}" class="thumbnail ${status.index == 0 ? 'active' : ''}" 
                                                 alt="${product.title} - Ảnh ${status.index + 1}"
                                                 onclick="changeMainImage(this.src)">
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="thumbnail-placeholder">
                                            <span>Không có ảnh phụ</span>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <img src="${product.thumbnail}" class="car-image-main" id="main-car-image" alt="${product.title}">
                        </div>
                    </div>

                    <!-- Car Details Column -->
                    <div class="col-md-6">
                        <h1 class="car-title">${product.title}</h1>

                        <div class="car-price">
                            <div class="rental-price">
                                <fmt:formatNumber value="${product.salePrice}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                            </div>
                            <span class="price-unit">/ ngày</span>
                        </div>

                        <!-- Car Specifications -->
                        <div class="car-specs">
                            <div class="spec-item">
                                <i class="fas fa-car"></i>
                                <div>
                                    <div class="spec-label">Loại xe</div>
                                    <div>${categoryName}</div>
                                </div>
                            </div>
                            <div class="spec-item">
                                <i class="fas fa-users"></i>
                                <div>
                                    <div class="spec-label">Số chỗ</div>
                                    <div>4-5 chỗ</div>
                                </div>
                            </div>
                            <div class="spec-item">
                                <i class="fas fa-cog"></i>
                                <div>
                                    <div class="spec-label">Truyền động</div>
                                    <div>Tự động</div>
                                </div>
                            </div>
                            <div class="spec-item">
                                <i class="fas fa-gas-pump"></i>
                                <div>
                                    <div class="spec-label">Nhiên liệu</div>
                                    <div>Xăng</div>
                                </div>
                            </div>
                        </div>

                        <!-- Availability Status -->
                        <div class="availability-status ${product.stock>0 && product.status.equals('active') ? 'available' : 'unavailable'}">
                            <i class="fas ${product.stock > 0 && product.status.equals('active') ? 'fa-check-circle' : 'fa-times-circle'}"></i>
                            <span>
                                ${product.stock>0 && product.status.equals('active') ? 'Xe sẵn sàng' : product.status.equals('inactive') ? 'Xe đang bảo trì' : 'Xe không khả dụng'} 
                            </span>
                        </div>

                        <form action="productdetail" method="POST">
                            <input type="hidden" name="id" value="${product.id}">
                            <input type="hidden" id="hiddenTotalDays" name="totalDays" value="0">
                            <input type="hidden" id="hiddenTotalPrice" name="totalPrice" value="0">

                            <!-- Rental Duration Selection -->
                            <div class="rental-options">
                                <label class="option-label"><i class="far fa-calendar-alt"></i> Chọn thời gian thuê</label>
                                <div class="date-range">
                                    <div>
                                        <label for="startDate" class="form-label">Ngày nhận xe</label>
                                        <input type="date" id="startDate" name="startDate" class="form-control" required>
                                    </div>
                                    <div>
                                        <label for="endDate" class="form-label">Ngày trả xe</label>
                                        <input type="date" id="endDate" name="endDate" class="form-control" required>
                                    </div>
                                </div>
                                <div class="rental-duration">
                                    <i class="fas fa-clock"></i>
                                    <span class="duration-text">Thời gian thuê: <span id="rentalDays">0</span> ngày</span>
                                </div>
                            </div>

                            <!-- Pickup Location -->
                            <div class="rental-options">
                                <label for="pickupLocation" class="option-label"><i class="fas fa-map-marker-alt"></i> Địa điểm nhận xe</label>
                                <select id="pickupLocation" name="pickupLocation" class="form-select" required>
                                    <option value="">Chọn địa điểm nhận xe</option>
                                    <option value="hanoi">Hà Nội - Văn phòng trung tâm</option>
                                    <option value="airport">Sân bay Nội Bài</option>
                                    <option value="delivery">Giao xe tận nơi (+200.000đ)</option>
                                </select>
                            </div>

                            <!-- Pricing Summary -->
                            <div class="pricing-summary">
                                <div class="pricing-row">
                                    <span>Giá thuê / ngày:</span>
                                    <span><fmt:formatNumber value="${product.salePrice}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></span>
                                </div>
                                <div class="pricing-row">
                                    <span>Số ngày thuê:</span>
                                    <span id="daysCount">0 ngày</span>
                                </div>
                                <div class="pricing-row">
                                    <span>Tiền đặt cọc:</span>
                                    <span>3.000.000₫</span>
                                </div>
                                <div class="pricing-row total">
                                    <span>Tổng tạm tính:</span>
                                    <span id="totalPrice">0₫</span>
                                </div>
                            </div>

                            <!-- Action Buttons -->
                            <c:if test="${sessionScope.acc.role == 'customer' || sessionScope.acc.role == null}">
                                <div class="action-buttons">
                                    <button type="submit" name="action" value="rentNow" 
                                            class="btn-rent-now" 
                                            ${product.stock <= 0 || !product.status.equals('active') ? 'disabled' : ''}>
                                        <i class="fas fa-key"></i> Thuê Ngay
                                    </button>
                                    <button type="submit" name="action" value="deposit" 
                                            class="btn-deposit" 
                                            ${product.stock <= 0 || !product.status.equals('active') ? 'disabled' : ''}>
                                        <i class="fas fa-hand-holding-usd"></i> Đặt Cọc Ngay
                                    </button>
                                </div>
                            </c:if>
                        </form>

                        <!-- Car Metadata -->
                        <div class="car-meta">
                            <div class="meta-item">
                                <i class="fas fa-tag"></i> <strong>Danh mục:</strong> <a href="listproduct?category=${product.categoryId}">${categoryName}</a>
                            </div>
                            <div class="meta-item">
                                <i class="fas fa-shield-alt"></i> <strong>Bảo hiểm:</strong> Bảo hiểm đầy đủ
                            </div>
                            <div class="meta-item">
                                <i class="fas fa-info-circle"></i> <strong>Yêu cầu:</strong> GPLX hạng B2, CCCD/Hộ chiếu
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Car Description Section -->
            <div class="car-description-section">
                <h2 class="car-description-title"><i class="fas fa-file-alt"></i> Mô Tả Chi Tiết</h2>
                <div class="car-description-content">
                    ${product.description}
                </div>
            </div>

            <!-- Feedback Section -->
            <div id="feedback_section" class="feedback-section">
                <h2 class="feedback-title"><i class="fas fa-star"></i> Đánh Giá Từ Khách Hàng (${allFeedbacks>0 ? allFeedbacks : 0})</h2>
                <c:choose>
                    <c:when test="${not empty feedbacks}">
                        <!-- Average Rating and Filter Buttons -->
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <div class="average-rating">
                                    <h3><fmt:formatNumber value="${averageRating}" type="number" maxFractionDigits="1"/> / 5</h3>
                                    <div class="star-rating">
                                        <c:forEach begin="1" end="5" var="i">
                                            <i class="fas fa-star ${i <= averageRating ? 'text-warning' : 'text-muted'}"></i>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="filter-buttons">
                                    <a class="btn btn-outline-secondary me-2" href="productdetail?id=${product.id}&filterStar=1#feedback_section">1 Sao (${oneStarCount})</a>
                                </div>
                            </div>
                        </div>
                        <c:forEach items="${feedbacks}" var="feedback">
                            <div class="feedback-item">
                                <div class="feedback-avatar">
                                    <i class="fas fa-user"></i>
                                </div>
                                <div class="feedback-content">
                                    <div class="feedback-author">${feedback.userName}</div>
                                    <div class="feedback-rating">
                                        <c:forEach begin="1" end="5" var="i">
                                            <i class="fas fa-star ${i <= feedback.rating ? '' : 'text-muted'}"></i>
                                        </c:forEach>
                                    </div>
                                    <div class="feedback-text">${feedback.comment}</div>
                                    <!-- Show images -->
                                    <div class="feedback-images">
                                        <c:forEach items="${feedback.feedbackImages}" var="imageUrl">
                                            <img src="${imageUrl}" alt="Feedback Image" onclick="showImageModal(this.src)">
                                        </c:forEach>
                                    </div>
                                    <!-- Image Modal -->
                                    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <img id="modalImage" src="" alt="Large Image" style="width: 100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="feedback-date">
                                        <fmt:formatDate value="${feedback.createdAt}" pattern="dd/MM/yyyy HH:mm" />
                                    </div>
                                    <!-- Shop Reply -->
                                    <c:if test="${not empty feedback.replies}">
                                        <c:forEach items="${feedback.replies}" var="reply">
                                            <div class="reply">
                                                <div class="feedback-author"><i class="fas fa-building"></i> Car Rental Service</div>
                                                <div class="feedback-text">${reply.comment}</div>
                                                <div class="feedback-date">
                                                    <fmt:formatDate value="${reply.createdAt}" pattern="dd/MM/yyyy HH:mm" />
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="text-center py-5">
                            <i class="fas fa-comment-alt text-muted" style="font-size: 48px;"></i>
                            <p class="mt-3 text-muted">Chưa có đánh giá nào cho xe này</p>
                        </div>
                    </c:otherwise>
                </c:choose>

                <!-- Pagination -->
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <!-- Previous Button -->
                        <c:if test="${currentPage > 1}">
                            <li class="page-item">
                                <a class="page-link" href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${currentPage - 1}#feedback_section" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <!-- Page Numbers -->
                        <c:forEach begin="1" end="${totalPages}" var="i">
                            <li class="page-item ${i == currentPage ? 'active' : ''}">
                                <a class="page-link" href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${i}#feedback_section">${i}</a>
                            </li>
                        </c:forEach>
                        <!-- Next Button -->
                        <c:if test="${currentPage < totalPages}">
                            <li class="page-item">
                                <a class="page-link" href="productdetail?id=${product.id}&filterStar=${filterStar}&page=${currentPage + 1}#feedback_section" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>

            <!-- Similar Cars Section -->
            <div class="similar-cars-section">
                <h2 class="similar-cars-title"><i class="fas fa-car-side"></i> Xe Tương Tự</h2>

                <div class="car-grid">
                    <c:forEach items="${similarProducts}" var="similarProduct" varStatus="status">
                        <c:if test="${status.index < 4}">
                            <div class="card car-card">
                                <a href="productdetail?id=${similarProduct.id}" style="text-decoration:none;">
                                    <div class="position-relative">
                                        <img src="${similarProduct.thumbnail}" class="car-image" alt="${similarProduct.title}">
                                    </div>
                                    <div class="car-info">
                                        <h5 class="car-card-title">${similarProduct.title}</h5>
                                        <div class="car-card-price">
                                            <fmt:formatNumber value="${similarProduct.salePrice}" type="currency" currencySymbol="₫" maxFractionDigits="0"/><span style="font-size: 0.9rem; font-weight: 400; color: #666;">/ngày</span>
                                        </div>
                                        <div class="d-flex justify-content-between text-muted" style="font-size: 0.85rem;">
                                            <span><i class="fas fa-users"></i> 4-5 chỗ</span>
                                            <span><i class="fas fa-cog"></i> Tự động</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
                
        <jsp:include page="chat.jsp" />    

        <jsp:include page="footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            function changeMainImage(src) {
                document.getElementById('main-car-image').src = src;
                // Update active thumbnail
                const thumbnails = document.querySelectorAll('.thumbnail');
                thumbnails.forEach(thumb => {
                    if (thumb.src === src) {
                        thumb.classList.add('active');
                    } else {
                        thumb.classList.remove('active');
                    }
                });
            }

            // Calculate rental duration and total price
            function calculateRental() {
                const startDate = document.getElementById('startDate').value;
                const endDate = document.getElementById('endDate').value;
                
                if (startDate && endDate) {
                    const start = new Date(startDate);
                    const end = new Date(endDate);
                    const diffTime = Math.abs(end - start);
                    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
                    
                    if (diffDays > 0) {
                        document.getElementById('rentalDays').textContent = diffDays;
                        document.getElementById('daysCount').textContent = diffDays + ' ngày';
                        
                        const pricePerDay = ${product.salePrice};
                        const totalPrice = pricePerDay * diffDays;
                        
                        document.getElementById('totalPrice').textContent = 
                            new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(totalPrice);
                        
                        // Update hidden fields
                        document.getElementById('hiddenTotalDays').value = diffDays;
                        document.getElementById('hiddenTotalPrice').value = totalPrice;
                    }
                }
            }

            // Set minimum date to today
            const today = new Date().toISOString().split('T')[0];
            document.getElementById('startDate').setAttribute('min', today);
            document.getElementById('endDate').setAttribute('min', today);

            // Add event listeners
            document.getElementById('startDate').addEventListener('change', function() {
                document.getElementById('endDate').setAttribute('min', this.value);
                calculateRental();
            });

            document.getElementById('endDate').addEventListener('change', calculateRental);

            // Image modal
            function showImageModal(src) {
                document.getElementById('modalImage').src = src;
                var modal = new bootstrap.Modal(document.getElementById('imageModal'));
                modal.show();
            }

            // Form validation and submission
            document.querySelector('form').addEventListener('submit', function(e) {
                const startDate = document.getElementById('startDate').value;
                const endDate = document.getElementById('endDate').value;
                const pickupLocation = document.getElementById('pickupLocation').value;
                
                if (!startDate || !endDate || !pickupLocation) {
                    e.preventDefault();
                    alert('Vui lòng điền đầy đủ thông tin thuê xe!');
                    return false;
                }
                
                const start = new Date(startDate);
                const end = new Date(endDate);
                
                if (end <= start) {
                    e.preventDefault();
                    alert('Ngày trả xe phải sau ngày nhận xe!');
                    return false;
                }
                
                // Make sure hidden fields are updated before submit
                calculateRental();
                
                return true;
            });
        </script>
</body>
</html>