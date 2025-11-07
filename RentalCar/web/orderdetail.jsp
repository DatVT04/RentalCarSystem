<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi tiết đơn thuê xe #${order.orderCode}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f8f9fa;
            }

            .container {
                padding-top: 30px;
                padding-bottom: 30px;
                max-width: 1140px;
            }

            .page-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
                padding-bottom: 15px;
                border-bottom: 1px solid #e9ecef;
            }

            .page-title {
                font-weight: 700;
                margin: 0;
            }

            .back-button {
                text-decoration: none;
                color: #0d6efd;
                transition: all 0.3s;
            }

            .back-button:hover {
                color: #0b5ed7;
            }

            .card {
                border: none;
                border-radius: 10px;
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
                margin-bottom: 20px;
                overflow: hidden;
                background: white;
            }

            .card-header {
                background-color: #f8f9fa;
                border-bottom: 1px solid #e9ecef;
                padding: 15px 20px;
            }

            .card-title {
                margin: 0;
                font-weight: 600;
                font-size: 1.25rem;
            }

            .card-body {
                padding: 20px;
            }

            .order-section {
                margin-bottom: 30px;
            }

            .section-title {
                font-weight: 600;
                margin-bottom: 15px;
                padding-bottom: 10px;
                border-bottom: 1px solid #e9ecef;
            }

            .info-item {
                display: flex;
                margin-bottom: 12px;
            }

            .info-label {
                width: 180px;
                font-weight: 500;
                color: #6c757d;
            }

            .info-value {
                flex: 1;
                color: #212529;
            }

            .car-item {
                padding: 15px 0;
                border-bottom: 1px solid #e9ecef;
            }

            .car-item:last-child {
                border-bottom: none;
            }

            .car-img {
                width: 100px;
                height: 100px;
                object-fit: cover;
                border-radius: 8px;
            }

            .car-name {
                font-weight: 600;
                margin-bottom: 5px;
                font-size: 1rem;
            }

            .car-variant {
                font-size: 0.875rem;
                color: #6c757d;
                margin-bottom: 5px;
            }

            .price {
                font-weight: 600;
                color: #0d6efd;
                font-size: 1rem;
            }

            .order-summary {
                background-color: #f8f9fa;
                padding: 20px;
                border-radius: 8px;
            }

            .summary-row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 12px;
                padding: 8px 0;
            }

            .summary-row:last-child {
                margin-bottom: 0;
                padding-top: 15px;
                margin-top: 10px;
                border-top: 2px solid #dee2e6;
                font-weight: 700;
                font-size: 1.2rem;
            }

            .summary-row.discount {
                color: #28a745;
            }

            .order-status {
                display: inline-block;
                padding: 6px 12px;
                border-radius: 6px;
                font-size: 0.875rem;
                font-weight: 600;
                text-transform: uppercase;
            }

            .status-pending {
                background-color: #fff3cd;
                color: #856404;
            }

            .status-processing {
                background-color: #cce5ff;
                color: #004085;
            }

            .status-shipped {
                background-color: #d1ecf1;
                color: #0c5460;
            }

            .status-completed {
                background-color: #d4edda;
                color: #155724;
            }

            .status-cancelled {
                background-color: #f8d7da;
                color: #721c24;
            }

            /* Timeline ngang */
            .horizontal-timeline {
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: relative;
                padding: 20px 0;
            }

            .horizontal-timeline .timeline-step {
                text-align: center;
                position: relative;
                flex: 1;
            }

            .horizontal-timeline .timeline-step:not(:last-child)::after {
                content: '';
                position: absolute;
                top: 30px;
                left: 50%;
                width: 100%;
                height: 3px;
                background-color: #e9ecef;
                z-index: 1;
            }

            .horizontal-timeline .timeline-step.active:not(:last-child)::after {
                background-color: #28a745;
            }

            .horizontal-timeline .timeline-step.cancelled .timeline-icon {
                background-color: #dc3545;
                color: white;
                border: 2px solid #dc3545;
            }

            .horizontal-timeline .timeline-step.cancelled:not(:last-child)::after {
                background-color: #dc3545;
            }

            .horizontal-timeline .timeline-step .timeline-icon {
                width: 50px;
                height: 50px;
                background-color: #e9ecef;
                color: #6c757d;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto 10px;
                border: 3px solid #e9ecef;
                z-index: 2;
                position: relative;
                transition: all 0.3s;
            }

            .horizontal-timeline .timeline-step.active .timeline-icon {
                background-color: #28a745;
                color: white;
                border: 3px solid #28a745;
                transform: scale(1.1);
            }

            .horizontal-timeline .timeline-step .timeline-text {
                font-size: 0.9rem;
                font-weight: 600;
                margin-bottom: 5px;
            }

            .horizontal-timeline .timeline-step.active .timeline-text {
                color: #28a745;
            }

            .horizontal-timeline .timeline-step .timeline-date {
                font-size: 0.8rem;
                color: #6c757d;
            }

            .action-buttons {
                margin-top: 20px;
                display: flex;
                gap: 10px;
                flex-wrap: wrap;
            }

            .btn {
                padding: 0.625rem 1.25rem;
                font-weight: 500;
                border-radius: 0.5rem;
                transition: all 0.3s;
            }

            .btn-primary {
                background-color: #0d6efd;
                border-color: #0d6efd;
            }

            .btn-primary:hover {
                background-color: #0b5ed7;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(13, 110, 253, 0.3);
            }

            .payment-info {
                margin-top: 8px;
            }

            .discount-badge {
                background-color: #28a745;
                color: white;
                padding: 3px 10px;
                border-radius: 4px;
                font-size: 0.8rem;
                display: inline-block;
                margin-left: 8px;
            }

            .alert-warning-custom {
                background-color: #fff3cd;
                border-left: 4px solid #ffc107;
                padding: 15px;
                margin: 20px 0;
                border-radius: 5px;
            }

            @media (max-width: 768px) {
                .container {
                    padding-top: 15px;
                    padding-bottom: 15px;
                }

                .info-item {
                    flex-direction: column;
                    margin-bottom: 15px;
                }

                .info-label {
                    width: 100%;
                    margin-bottom: 5px;
                }

                .car-img {
                    width: 80px;
                    height: 80px;
                }

                .action-buttons {
                    flex-direction: column;
                }

                .action-buttons .btn {
                    width: 100%;
                }

                .horizontal-timeline {
                    flex-direction: column;
                    align-items: flex-start;
                }

                .horizontal-timeline .timeline-step:not(:last-child)::after {
                    display: none;
                }

                .horizontal-timeline .timeline-step {
                    display: flex;
                    align-items: center;
                    margin-bottom: 20px;
                    text-align: left;
                    width: 100%;
                }

                .horizontal-timeline .timeline-step .timeline-icon {
                    margin: 0 15px 0 0;
                }

                .horizontal-timeline .timeline-step .timeline-text,
                .horizontal-timeline .timeline-step .timeline-date {
                    margin: 0;
                    text-align: left;
                }
            }
        </style>
    </head>
    <body>
        <div><jsp:include page="/header.jsp" /></div>

        <div class="container">
            <div class="page-header">
                <h2 class="page-title">Chi tiết đơn thuê xe #${order.orderCode}</h2>
                <a href="myorder" class="back-button">
                    <i class="fas fa-arrow-left me-2"></i>Quay lại danh sách đơn
                </a>
            </div>

            <!-- Thông báo -->
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <i class="fas fa-check-circle me-2"></i>${successMessage}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </c:if>

            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <i class="fas fa-exclamation-circle me-2"></i>${errorMessage}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </c:if>

            <!-- Lưu ý quan trọng -->
            <div class="alert-warning-custom">
                <i class="fas fa-exclamation-triangle me-2"></i>
                <strong>Lưu ý:</strong> Vui lòng chuẩn bị sẵn CMND/CCCD và GPLX còn hiệu lực khi nhận xe.
            </div>

            <!-- Timeline trạng thái -->
            <div class="card order-section">
                <div class="card-header">
                    <h5 class="card-title"><i class="fas fa-history me-2"></i>Trạng thái đơn thuê xe</h5>
                </div>
                <div class="card-body">
                    <div class="horizontal-timeline">
                        <c:set var="currentStepIndex" value="0" />
                        <c:set var="isCancelled" value="${order.status eq 'cancelled'}" />
                        
                        <c:choose>
                            <c:when test="${order.status eq 'pending'}">
                                <c:set var="currentStepIndex" value="0" />
                            </c:when>
                            <c:when test="${order.status eq 'pending_pay'}">
                                <c:set var="currentStepIndex" value="1" />
                            </c:when>
                            <c:when test="${order.status eq 'processing'}">
                                <c:set var="currentStepIndex" value="2" />
                            </c:when>
                            <c:when test="${order.status eq 'shipping'}">
                                <c:set var="currentStepIndex" value="3" />
                            </c:when>
                            <c:when test="${order.status eq 'completed'}">
                                <c:set var="currentStepIndex" value="4" />
                            </c:when>
                            <c:when test="${order.status eq 'returned'}">
                                <c:set var="currentStepIndex" value="5" />
                            </c:when>
                        </c:choose>

                        <!-- Bước 1: Đặt xe -->
                        <div class="timeline-step ${currentStepIndex >= 0 ? 'active' : ''}">
                            <div class="timeline-icon">
                                <i class="fas fa-clipboard-check"></i>
                            </div>
                            <div class="timeline-text">Đặt xe</div>
                            <div class="timeline-date">
                                <fmt:formatDate value="${order.orderDate}" pattern="dd/MM HH:mm"/>
                            </div>
                        </div>

                        <!-- Trường hợp hủy -->
                        <c:if test="${isCancelled}">
                            <div class="timeline-step active cancelled">
                                <div class="timeline-icon">
                                    <i class="fa-solid fa-circle-xmark"></i>
                                </div>
                                <div class="timeline-text">Đã Hủy</div>
                                <div class="timeline-date">
                                    <c:forEach items="${orderHistory}" var="history">
                                        <c:if test="${history.status eq 'cancelled'}">
                                            <fmt:formatDate value="${history.updatedAt}" pattern="dd/MM HH:mm"/>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </c:if>

                        <!-- Các bước tiếp theo -->
                        <c:if test="${not isCancelled}">
                            <!-- Bước 2: Xác nhận -->
                            <div class="timeline-step ${currentStepIndex >= 1 ? 'active' : ''}">
                                <div class="timeline-icon">
                                    <i class="fas fa-user-check"></i>
                                </div>
                                <div class="timeline-text">Xác nhận</div>
                                <div class="timeline-date">
                                    <c:choose>
                                        <c:when test="${currentStepIndex >= 1}">
                                            <c:forEach items="${orderHistory}" var="history">
                                                <c:if test="${history.status eq 'pending' || history.status eq 'pending_pay'}">
                                                    <fmt:formatDate value="${history.updatedAt}" pattern="dd/MM HH:mm"/>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>Đang chờ</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Bước 3: Chuẩn bị xe -->
                            <div class="timeline-step ${currentStepIndex >= 2 ? 'active' : ''}">
                                <div class="timeline-icon">
                                    <i class="fas fa-tools"></i>
                                </div>
                                <div class="timeline-text">Chuẩn bị xe</div>
                                <div class="timeline-date">
                                    <c:choose>
                                        <c:when test="${currentStepIndex >= 2}">
                                            <c:forEach items="${orderHistory}" var="history">
                                                <c:if test="${history.status eq 'processing'}">
                                                    <fmt:formatDate value="${history.updatedAt}" pattern="dd/MM HH:mm"/>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>-</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Bước 4: Giao xe -->
                            <div class="timeline-step ${currentStepIndex >= 3 ? 'active' : ''}">
                                <div class="timeline-icon">
                                    <i class="fas fa-truck"></i>
                                </div>
                                <div class="timeline-text">Giao xe</div>
                                <div class="timeline-date">
                                    <c:choose>
                                        <c:when test="${currentStepIndex >= 3}">
                                            <c:forEach items="${orderHistory}" var="history">
                                                <c:if test="${history.status eq 'shipping'}">
                                                    <fmt:formatDate value="${history.updatedAt}" pattern="dd/MM HH:mm"/>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>-</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Bước 5: Hoàn thành/Đang thuê -->
                            <div class="timeline-step ${currentStepIndex >= 4 ? 'active' : ''}">
                                <div class="timeline-icon">
                                    <i class="fas fa-car"></i>
                                </div>
                                <div class="timeline-text">
                                    <c:choose>
                                        <c:when test="${order.status eq 'completed'}">Đã hoàn trả</c:when>
                                        <c:when test="${order.status eq 'returned'}">Đã hoàn trả</c:when>
                                        <c:otherwise>Đang thuê</c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="timeline-date">
                                    <c:choose>
                                        <c:when test="${currentStepIndex >= 4}">
                                            <c:forEach items="${orderHistory}" var="history">
                                                <c:if test="${history.status eq 'completed' || history.status eq 'returned'}">
                                                    <fmt:formatDate value="${history.updatedAt}" pattern="dd/MM HH:mm"/>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>-</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Cột trái -->
                <div class="col-lg-8">
                    <!-- Thông tin đơn thuê -->
                    <div class="card order-section">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="card-title"><i class="fas fa-file-invoice me-2"></i>Thông tin đơn thuê</h5>
                            <c:choose>
                                <c:when test="${order.status eq 'pending_pay'}">
                                    <span class="order-status status-pending">Chờ thanh toán</span>
                                </c:when>
                                <c:when test="${order.status eq 'pending'}">
                                    <span class="order-status status-pending">Chờ xác nhận</span>
                                </c:when>
                                <c:when test="${order.status eq 'processing'}">
                                    <span class="order-status status-processing">Đang chuẩn bị</span>
                                </c:when>
                                <c:when test="${order.status eq 'shipping'}">
                                    <span class="order-status status-shipped">Đang giao xe</span>
                                </c:when>
                                <c:when test="${order.status eq 'completed'}">
                                    <span class="order-status status-completed">Đã hoàn trả</span>
                                </c:when>
                                <c:when test="${order.status eq 'cancelled'}">
                                    <span class="order-status status-cancelled">Đã hủy</span>
                                </c:when>
                                <c:when test="${order.status eq 'returned'}">
                                    <span class="order-status status-completed">Đã hoàn trả</span>
                                </c:when>
                            </c:choose>
                        </div>
                        <div class="card-body">
                            <div class="info-item">
                                <div class="info-label">Mã đơn thuê:</div>
                                <div class="info-value"><strong class="text-primary">#${order.orderCode}</strong></div>
                            </div>
                            <div class="info-item">
                                <div class="info-label">Ngày đặt:</div>
                                <div class="info-value">
                                    <fmt:formatDate value="${order.orderDate}" pattern="dd/MM/yyyy HH:mm:ss"/>
                                </div>
                            </div>
                            <div class="info-item">
                                <div class="info-label">Phương thức thanh toán:</div>
                                <div class="info-value">
                                    <c:choose>
                                        <c:when test="${order.paymentMethod eq 'cod'}">
                                            <i class="fas fa-money-bill-wave me-1"></i> Thanh toán khi nhận xe
                                        </c:when>
                                        <c:when test="${order.paymentMethod eq 'bank_transfer' || order.paymentMethod eq 'bank'}">
                                            <i class="fas fa-university me-1"></i> Chuyển khoản trước
                                        </c:when>
                                        <c:otherwise>
                                            ${order.paymentMethod}
                                        </c:otherwise>
                                    </c:choose>
                                    <div class="payment-info text-muted">
                                        <small>Trạng thái: 
                                            <c:choose>
                                                <c:when test="${order.paymentStatus eq 'pending'}">
                                                    <span class="text-warning">Chờ thanh toán</span>
                                                </c:when>
                                                <c:when test="${order.paymentStatus eq 'completed'}">
                                                    <span class="text-success">Đã thanh toán</span>
                                                </c:when>
                                                <c:when test="${order.paymentStatus eq 'failed'}">
                                                    <span class="text-danger">Thanh toán thất bại</span>
                                                </c:when>
                                                <c:when test="${order.paymentStatus eq 'refunded'}">
                                                    <span class="text-info">Đã hoàn tiền</span>
                                                </c:when>
                                                <c:otherwise>${order.paymentStatus}</c:otherwise>
                                            </c:choose>
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="info-item">
                                <div class="info-label">Hình thức nhận xe:</div>
                                <div class="info-value">
                                    <c:choose>
                                        <c:when test="${order.shippingMethod eq 'express'}">
                                            <i class="fas fa-shipping-fast me-1"></i> Giao xe nhanh (1-2 giờ)
                                        </c:when>
                                        <c:otherwise>
                                            <i class="fas fa-truck me-1"></i> Giao xe phổ thông (2-4 giờ)
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <!-- Nút hành động -->
                            <c:if test="${order.status eq 'pending_pay' || order.status eq 'pending'}">
                                <div class="action-buttons">
                                    <a href="orderdetail?action=cancel&id=${order.id}" class="btn btn-danger" 
                                       onclick="return confirm('Bạn có chắc chắn muốn hủy đơn thuê xe này?')">
                                        <i class="fas fa-times me-2"></i>Hủy đơn
                                    </a>
                                    <c:if test="${order.status eq 'pending_pay' && order.paymentStatus eq 'pending' && order.paymentMethod eq 'bank_transfer'}">
                                        <a href="myorder?action=retry_payment&id=${order.id}" class="btn btn-primary">
                                            <i class="fas fa-money-check-alt me-2"></i>Thanh toán lại
                                        </a>
                                    </c:if>
                                </div>
                            </c:if>
                            
                            <c:if test="${order.status eq 'completed'}">
                                <div class="action-buttons">
                                    <c:if test="${!isFeedBack}">
                                        <a href="submitfeedback?orderId=${order.id}" class="btn btn-primary">
                                            <i class="fas fa-star me-2"></i>Đánh giá dịch vụ
                                        </a>
                                    </c:if>
                                    <c:if test="${isFeedBack}">
                                        <button class="btn btn-warning" disabled>
                                            <i class="fas fa-check me-2"></i>Đã đánh giá
                                        </button>
                                    </c:if>
                                    <a href="orderdetail?action=reorder&id=${order.id}" class="btn btn-outline-primary">
                                        <i class="fas fa-redo me-2"></i>Thuê lại
                                    </a>
                                </div>
                            </c:if>
                        </div>
                    </div>

                    <!-- Thông tin giao nhận -->
                    <div class="card order-section">
                        <div class="card-header">
                            <h5 class="card-title"><i class="fas fa-map-marker-alt me-2"></i>Thông tin giao nhận</h5>
                        </div>
                        <div class="card-body">
                            <div class="info-item">
                                <div class="info-label">Người nhận:</div>
                                <div class="info-value"><strong>${order.recipientName}</strong></div>
                            </div>
                            <div class="info-item">
                                <div class="info-label">Số điện thoại:</div>
                                <div class="info-value">${order.phone}</div>
                            </div>
                            <div class="info-item">
                                <div class="info-label">Địa điểm nhận xe:</div>
                                <div class="info-value">${order.address}</div>
                            </div>

                            <c:if test="${order.status eq 'shipping' || order.status eq 'completed'}">
                                <div class="info-item">
                                    <div class="info-label">Mã vận đơn:</div>
                                    <div class="info-value">
                                        <c:choose>
                                            <c:when test="${not empty order.trackingNumber}">
                                                <strong class="text-primary">${order.trackingNumber}</strong>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-muted">Chưa cập nhật</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="info-item">
                                    <div class="info-label">Đơn vị vận chuyển:</div>
                                    <div class="info-value">
                                        <c:choose>
                                            <c:when test="${not empty order.shippingProvider}">
                                                ${order.shippingProvider}
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-muted">Chưa cập nhật</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>

                    <!-- Danh sách xe -->
                    <div class="card order-section">
                        <div class="card-header">
                            <h5 class="card-title"><i class="fas fa-car me-2"></i>Xe đã thuê</h5>
                        </div>
                        <div class="card-body">
                            <c:forEach items="${order.items}" var="item">
                                <div class="car-item">
                                    <div class="row align-items-center">
                                        <div class="col-3 col-md-2">
                                            <img src="${item.carThumbnail}" alt="${item.carTitle}" class="car-img">
                                        </div>
                                        <div class="col-9 col-md-5">
                                            <div class="car-name">${item.carTitle}</div>
                                            <div class="car-variant">Loại: ${item.size} | Màu: ${item.color}</div>
                                        </div>
                                        <div class="col-6 col-md-2 text-center mt-2 mt-md-0">
                                            <div class="quantity">Số ngày: ${item.quantity}</div>
                                        </div>
                                        <div class="col-6 col-md-3 text-end mt-2 mt-md-0">
                                            <div class="price">
                                                <fmt:formatNumber value="${item.carPrice * item.quantity}" 
                                                                  type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                            </div>
                                            <small class="text-muted">
                                                <fmt:formatNumber value="${item.carPrice}" 
                                                                  type="currency" currencySymbol="₫" maxFractionDigits="0"/> / ngày
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <!-- Cột phải - Tóm tắt chi phí -->
                <div class="col-lg-4">
                    <div class="card" style="position: sticky; top: 20px;">
                        <div class="card-header">
                            <h5 class="card-title"><i class="fas fa-receipt me-2"></i>Tổng chi phí</h5>
                        </div>
                        <div class="card-body">
                            <div class="order-summary">
                                <div class="summary-row">
                                    <span>Tổng tiền thuê xe:</span>
                                    <span>
                                        <fmt:formatNumber value="${subtotal}" 
                                                          type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                    </span>
                                </div>

                                <!-- Giảm giá -->
                                <c:if test="${not empty order.discountAmount && order.discountAmount > 0}">
                                    <div class="summary-row discount">
                                        <span>
                                            Giảm giá:
                                            <c:if test="${not empty order.couponCode}">
                                                <span class="discount-badge">${order.couponCode}</span>
                                            </c:if>
                                        </span>
                                        <span>
                                            -<fmt:formatNumber value="${order.discountAmount}" 
                                                               type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                        </span>
                                    </div>
                                </c:if>

                                <div class="summary-row">
                                    <span>Phí giao xe:</span>
                                    <span>
                                        <c:choose>
                                            <c:when test="${shippingFee == 0}">
                                                Miễn phí
                                            </c:when>
                                            <c:otherwise>
                                                <fmt:formatNumber value="${shippingFee}" 
                                                                  type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </span>
                                </div>

                                <div class="summary-row">
                                    <span><strong>Tổng cộng:</strong></span>
                                    <span class="text-primary">
                                        <strong>
                                            <fmt:formatNumber value="${order.total}" 
                                                              type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                        </strong>
                                    </span>
                                </div>
                            </div>

                            <!-- Thông tin email cho khách vãng lai -->
                            <c:if test="${isGuest && not empty guestEmail}">
                                <div class="alert alert-info mt-3 mb-0">
                                    <small>
                                        <i class="fas fa-envelope me-1"></i>
                                        Hợp đồng đã gửi đến: <strong>${guestEmail}</strong>
                                    </small>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="chat.jsp" />
        <div><jsp:include page="/footer.jsp" /></div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            // Tự động ẩn thông báo sau 5 giây
            window.setTimeout(function () {
                var alerts = document.querySelectorAll('.alert');
                alerts.forEach(function (alert) {
                    var bsAlert = new bootstrap.Alert(alert);
                    bsAlert.close();
                });
            }, 5000);
        </script>
    </body>
</html>