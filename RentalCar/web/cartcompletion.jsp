<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đặt thuê xe thành công</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <style>
            body {
                background-color: #f8f9fa;
            }
            
            .container {
                max-width: 900px;
                margin: 30px auto;
                padding-top: 2rem;
                padding-bottom: 2rem;
            }
            
            .completion-card {
                background: white;
                border-radius: 10px;
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
                padding: 40px;
                text-align: center;
            }
            
            .success-icon {
                color: #28a745;
                font-size: 72px;
                margin-bottom: 20px;
                animation: scaleIn 0.5s ease-in-out;
            }
            
            @keyframes scaleIn {
                0% {
                    transform: scale(0);
                }
                50% {
                    transform: scale(1.1);
                }
                100% {
                    transform: scale(1);
                }
            }
            
            .order-info {
                background: #f8f9fa;
                border-radius: 8px;
                padding: 25px;
                margin: 25px 0;
                text-align: left;
            }
            
            .order-info h5 {
                font-size: 1.1rem;
                font-weight: 600;
                color: #212529;
                margin-bottom: 1rem;
                border-bottom: 2px solid #0d6efd;
                padding-bottom: 0.5rem;
            }
            
            .order-info p {
                margin-bottom: 0.75rem;
                line-height: 1.6;
            }
            
            .rental-status {
                margin: 35px 0;
                position: relative;
                padding: 20px 0;
            }
            
            .status-line {
                height: 3px;
                background: #e9ecef;
                position: absolute;
                top: 35px;
                left: 10%;
                right: 10%;
                z-index: 1;
            }
            
            .status-line-active {
                height: 3px;
                background: #28a745;
                position: absolute;
                top: 35px;
                left: 10%;
                width: 0%;
                z-index: 2;
                transition: width 1s ease-in-out;
            }
            
            .status-steps {
                position: relative;
                z-index: 3;
                display: flex;
                justify-content: space-between;
                padding: 0 10%;
            }
            
            .status-step {
                background: white;
                text-align: center;
                flex: 1;
            }
            
            .status-step-icon {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                background: #e9ecef;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto 10px;
                transition: all 0.3s;
            }
            
            .status-step.active .status-step-icon {
                background: #28a745;
                color: white;
                transform: scale(1.1);
            }
            
            .status-step.active {
                color: #28a745;
            }
            
            .status-step i {
                font-size: 20px;
            }
            
            .status-step-title {
                font-weight: 600;
                margin-bottom: 5px;
                font-size: 0.9rem;
            }
            
            .status-step-time {
                font-size: 0.75rem;
                color: #6c757d;
            }
            
            .car-item-compact {
                display: flex;
                align-items: center;
                padding: 12px;
                border-bottom: 1px solid #e9ecef;
            }
            
            .car-item-compact:last-child {
                border-bottom: none;
            }
            
            .car-image-small {
                width: 70px;
                height: 70px;
                object-fit: cover;
                border-radius: 0.5rem;
                margin-right: 15px;
            }
            
            .car-details-compact {
                flex-grow: 1;
            }
            
            .car-title-compact {
                font-weight: 600;
                font-size: 0.95rem;
                margin-bottom: 3px;
            }
            
            .car-variant-compact {
                font-size: 0.8rem;
                color: #6c757d;
            }
            
            .alert-info-custom {
                background-color: #e7f3ff;
                border-left: 4px solid #0d6efd;
                padding: 15px;
                margin: 20px 0;
                border-radius: 5px;
            }
            
            .alert-warning-custom {
                background-color: #fff3cd;
                border-left: 4px solid #ffc107;
                padding: 15px;
                margin: 20px 0;
                border-radius: 5px;
            }
            
            .btn {
                padding: 0.625rem 1.5rem;
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
            
            .btn-outline-secondary {
                color: #6c757d;
                border-color: #6c757d;
            }
            
            .btn-outline-secondary:hover {
                background-color: #6c757d;
                color: white;
            }
            
            .summary-row {
                display: flex;
                justify-content: space-between;
                padding: 8px 0;
                border-bottom: 1px solid #e9ecef;
            }
            
            .summary-row:last-child {
                border-bottom: none;
                padding-top: 15px;
                margin-top: 10px;
                border-top: 2px solid #dee2e6;
            }
            
            .summary-row.total {
                font-size: 1.2rem;
                font-weight: 700;
                color: #0d6efd;
            }
            
            .badge {
                padding: 0.4em 0.7em;
                font-size: 0.8rem;
                font-weight: 500;
            }
            
            @media (max-width: 768px) {
                .container {
                    padding-top: 1rem;
                    padding-bottom: 1rem;
                }
                
                .completion-card {
                    padding: 25px 15px;
                }
                
                .success-icon {
                    font-size: 56px;
                }
                
                .status-steps {
                    padding: 0 5%;
                }
                
                .status-step-title {
                    font-size: 0.8rem;
                }
                
                .status-step-icon {
                    width: 40px;
                    height: 40px;
                }
                
                .status-step i {
                    font-size: 16px;
                }
                
                .btn {
                    width: 100%;
                    margin-bottom: 0.5rem;
                }
            }
        </style>
    </head>
    <body>
        <div><jsp:include page="/header.jsp" /></div>
        
        <div class="container">
            <div class="completion-card">
                <!-- Icon thành công -->
                <i class="fas fa-check-circle success-icon"></i>
                <h1 class="mb-3">Đặt thuê xe thành công!</h1>
                <p class="text-muted">Cảm ơn bạn đã tin tưởng dịch vụ của chúng tôi. Đơn thuê xe của bạn đang được xử lý.</p>

                <!-- Thông báo quan trọng -->
                <div class="alert-warning-custom">
                    <i class="fas fa-exclamation-triangle me-2"></i>
                    <strong>Lưu ý:</strong> Vui lòng chuẩn bị sẵn CMND/CCCD và GPLX còn hiệu lực khi nhận xe.
                </div>

                <!-- Thông tin đơn thuê xe -->
                <div class="order-info">
                    <div class="row">
                        <div class="col-md-6">
                            <h5><i class="fas fa-file-invoice me-2"></i>Thông tin đơn thuê</h5>
                            <p><strong>Mã đơn thuê:</strong> <span class="text-primary">#${orderCode}</span></p>
                            <p><strong>Ngày đặt:</strong> <fmt:formatDate value="${orderDate}" pattern="dd/MM/yyyy HH:mm" /></p>
                            <p><strong>Tổng chi phí:</strong> 
                                <strong class="text-success">
                                    <fmt:formatNumber value="${total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                </strong>
                            </p>
                            <p><strong>Phương thức thanh toán:</strong> 
                                <c:choose>
                                    <c:when test="${paymentMethod eq 'cod'}">Thanh toán khi nhận xe</c:when>
                                    <c:when test="${paymentMethod eq 'bank_transfer' || paymentMethod eq 'bank'}">Chuyển khoản trước</c:when>
                                    <c:otherwise>${paymentMethod}</c:otherwise>
                                </c:choose>
                            </p>
                            <p><strong>Trạng thái thanh toán:</strong> 
                                <c:choose>
                                    <c:when test="${paymentStatus eq 'completed'}">
                                        <span class="badge bg-success">Đã thanh toán</span>
                                    </c:when>
                                    <c:when test="${paymentStatus eq 'pending' || paymentStatus eq 'pending_pay'}">
                                        <span class="badge bg-warning">Chờ thanh toán</span>
                                    </c:when>
                                    <c:when test="${paymentStatus eq 'failed'}">
                                        <span class="badge bg-danger">Thanh toán thất bại</span>
                                    </c:when>
                                    <c:when test="${paymentStatus eq 'refunded'}">
                                        <span class="badge bg-info">Đã hoàn tiền</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-secondary">Chưa thanh toán</span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <h5><i class="fas fa-map-marker-alt me-2"></i>Thông tin giao nhận</h5>
                            <p><strong>Người nhận:</strong> ${shippingAddress.recipientName}</p>
                            <p><strong>Số điện thoại:</strong> ${shippingAddress.phone}</p>
                            <p><strong>Địa chỉ nhận xe:</strong> ${shippingAddress.address}</p>
                            <p><strong>Hình thức nhận xe:</strong>
                                <c:choose>
                                    <c:when test="${shippingMethod eq 'express'}">
                                        <span class="badge bg-primary">Giao xe nhanh (1-2 giờ)</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-info">Giao xe phổ thông (2-4 giờ)</span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Trạng thái xử lý đơn -->
                <div class="rental-status">
                    <h5 class="text-center mb-4">Trạng thái đơn thuê</h5>
                    
                    <div class="status-line-active" id="statusLineActive"></div>
                    <div class="status-steps">
                        <div class="status-step active">
                            <div class="status-step-icon">
                                <i class="fas fa-clipboard-check"></i>
                            </div>
                            <div class="status-step-title">Đặt xe</div>
                            <div class="status-step-time">
                                <fmt:formatDate value="${orderDate}" pattern="dd/MM HH:mm" />
                            </div>
                        </div>
                        <div class="status-step">
                            <div class="status-step-icon">
                                <i class="fas fa-user-check"></i>
                            </div>
                            <div class="status-step-title">Xác nhận</div>
                            <div class="status-step-time">Đang chờ</div>
                        </div>
                        <div class="status-step">
                            <div class="status-step-icon">
                                <i class="fas fa-truck"></i>
                            </div>
                            <div class="status-step-title">Giao xe</div>
                            <div class="status-step-time">-</div>
                        </div>
                        <div class="status-step">
                            <div class="status-step-icon">
                                <i class="fas fa-car"></i>
                            </div>
                            <div class="status-step-title">Đang thuê</div>
                            <div class="status-step-time">-</div>
                        </div>
                    </div>
                </div>

                <!-- Thông tin email cho khách vãng lai -->
                <c:if test="${isGuest && not empty guestEmail}">
                    <div class="alert-info-custom">
                        <i class="fas fa-envelope me-2"></i>
                        Thông tin hợp đồng và biên lai đã được gửi đến email: <strong>${guestEmail}</strong>
                    </div>
                </c:if>

                <!-- Chi tiết xe thuê -->
                <div class="order-info">
                    <h5><i class="fas fa-car me-2"></i>Chi tiết xe thuê</h5>
                    <div class="mb-3">
                        <c:forEach items="${selectedItems}" var="item">
                            <div class="car-item-compact">
                                <img src="${item.carThumbnail}" alt="${item.carTitle}" class="car-image-small">
                                <div class="car-details-compact">
                                    <div class="car-title-compact">${item.carTitle}</div>
                                    <div class="car-variant-compact">
                                        Loại: ${item.size} | Màu: ${item.color} | SL: ${item.quantity}
                                    </div>
                                </div>
                                <div class="text-end">
                                    <strong class="text-primary">
                                        <fmt:formatNumber value="${item.carPrice * item.quantity}" 
                                                          type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                    </strong>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    
                    <!-- Tổng kết chi phí -->
                    <div class="mt-3">
                        <div class="summary-row">
                            <span>Tổng tiền thuê:</span>
                            <span><fmt:formatNumber value="${subtotal}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></span>
                        </div>

                        <div class="summary-row">
                            <span>Phí giao xe:</span>
                            <span>
                                <c:choose>
                                    <c:when test="${shippingFee == 0}">Miễn phí</c:when>
                                    <c:otherwise>
                                        <fmt:formatNumber value="${shippingFee}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                    </c:otherwise>
                                </c:choose>
                            </span>
                        </div>
                        <div class="summary-row total">
                            <span>Tổng cộng:</span>
                            <span><fmt:formatNumber value="${total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/></span>
                        </div>
                    </div>
                </div>

                <!-- Nút điều hướng -->
                <div class="mt-4">
                    <c:if test="${not empty sessionScope.acc}">
                        <a href="myorder" class="btn btn-primary me-2">
                            <i class="fas fa-list me-2"></i>Xem đơn thuê của tôi
                        </a>
                    </c:if>
                    <a href="home" class="btn btn-outline-secondary">
                        <i class="fas fa-home me-2"></i>Về trang chủ
                    </a>
                </div>
            </div>
        </div>
        
        <jsp:include page="chat.jsp" />
        <div><jsp:include page="/footer.jsp" /></div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            // Animation cho status line
            window.addEventListener('load', function() {
                setTimeout(function() {
                    document.getElementById('statusLineActive').style.width = '0%';
                }, 500);
            });
        </script>
    </body>
</html>