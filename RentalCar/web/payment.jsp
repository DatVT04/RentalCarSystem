<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thanh toán đơn hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <style>
            /* Container spacing */
            .container {
                padding-top: 2rem;
                padding-bottom: 2rem;
                max-width: 1140px;
            }

            /* Breadcrumb styling */
            .breadcrumb {
                padding: 0.75rem 0;
                margin-bottom: 2rem;
                background: transparent;
            }

            .breadcrumb-item a {
                color: #0d6efd;
                text-decoration: none;
            }

            .breadcrumb-item.active {
                color: #6c757d;
            }

            /* Card styling */
            .card {
                border: none;
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
                margin-bottom: 1.5rem;
                border-radius: 0.5rem;
            }

            .card-body {
                padding: 1.5rem;
            }

            .card-title {
                font-size: 1.25rem;
                font-weight: 600;
                color: #212529;
                margin-bottom: 1.25rem;
            }

            /* Payment option styling */
            .payment-option {
                padding: 1rem;
                border: 2px solid #0d6efd;
                border-radius: 0.5rem;
                background-color: #f0f7ff;
            }

            .payment-option .payment-logo {
                height: 40px;
                width: 40px;
                object-fit: contain;
                margin-right: 1rem;
            }

            .form-check-input {
                margin-top: 0.3rem;
            }

            /* Order info styling */
            .order-info-section {
                margin-bottom: 1.5rem;
                padding-bottom: 1rem;
                border-bottom: 1px solid #e9ecef;
            }

            .order-info-section:last-child {
                border-bottom: none;
                margin-bottom: 0;
            }

            .section-label {
                font-weight: 600;
                color: #212529;
                margin-bottom: 0.75rem;
                font-size: 0.95rem;
            }

            .info-text {
                color: #6c757d;
                font-size: 0.9rem;
                line-height: 1.6;
            }

            /* Product item styling */
            .product-item {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                padding: 0.75rem 0;
                border-bottom: 1px solid #f1f5f9;
            }

            .product-item:last-child {
                border-bottom: none;
                padding-bottom: 0;
            }

            .product-item:first-child {
                padding-top: 0;
            }

            .product-details {
                flex: 1;
            }

            .product-name {
                font-weight: 600;
                color: #212529;
                margin-bottom: 0.25rem;
                font-size: 0.95rem;
            }

            .product-variant {
                font-size: 0.85rem;
                color: #6c757d;
            }

            .product-price {
                font-weight: 600;
                color: #212529;
                text-align: right;
                white-space: nowrap;
            }

            /* Summary section styling */
            .order-summary {
                background-color: #f8f9fa;
                padding: 1rem;
                border-radius: 0.375rem;
            }

            .summary-row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 0.75rem;
                font-size: 0.9rem;
            }

            .summary-row:last-child {
                margin-bottom: 0;
            }

            .summary-total {
                padding-top: 0.75rem;
                border-top: 1px solid #dee2e6;
                font-weight: 700;
                font-size: 1.1rem;
            }

            .text-success {
                color: #28a745 !important;
            }

            .text-primary {
                color: #0d6efd !important;
            }

            /* Button styling */
            .btn {
                padding: 0.625rem 1.25rem;
                font-weight: 500;
                border-radius: 0.5rem;
            }

            .btn-primary {
                background-color: #0d6efd;
                border-color: #0d6efd;
            }

            .btn-outline-secondary {
                color: #6c757d;
                border-color: #6c757d;
            }

            .btn-payment {
                width: 100%;
                padding: 0.75rem;
                font-weight: 600;
                font-size: 1rem;
            }

            /* Alert styling */
            .alert {
                border-radius: 0.5rem;
                padding: 1rem 1.25rem;
            }

            /* Sticky summary on desktop */
            .order-summary-card {
                position: sticky;
                top: 2rem;
            }

            /* Responsive adjustments */
            @media (max-width: 991px) {
                .order-summary-card {
                    position: static;
                    margin-top: 1.5rem;
                }
            }

            @media (max-width: 768px) {
                .container {
                    padding-top: 1rem;
                    padding-bottom: 1rem;
                }

                .card-body {
                    padding: 1rem;
                }

                .payment-option {
                    padding: 0.875rem;
                }

                .payment-option .payment-logo {
                    height: 35px;
                    width: 35px;
                }

                .btn-payment {
                    font-size: 0.95rem;
                }
            }
        </style>
    </head>
    <body>
        <div><jsp:include page="/header.jsp" /></div>

        <div class="container">
            <!-- Breadcrumb -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="cartdetail">Danh sách xe</a></li>
                    <li class="breadcrumb-item"><a href="cartcontact">Thông tin thuê xe</a></li>
                    <li class="breadcrumb-item active">Thanh toán</li>
                </ol>
            </nav>

            <!-- Error Message -->
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <i class="fas fa-exclamation-circle me-2"></i>${errorMessage}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>

            <div class="row">
                <!-- Left Column - Payment Methods -->
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">
                                <i class="fas fa-credit-card me-2"></i>Chọn phương thức thanh toán
                            </h5>

                            <form action="payment" method="post" id="paymentForm">
                                <div class="payment-option selected">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="payment_method" 
                                               id="vnpay" value="vnpay" checked>
                                        <label class="form-check-label d-flex align-items-center" for="vnpay">
                                            <img src="https://cdn.haitrieu.com/wp-content/uploads/2022/10/Logo-VNPAY-QR-1.png" 
                                                 alt="VNPay" class="payment-logo">
                                            <div>
                                                <strong>Thanh toán VNPay</strong>
                                                <p class="text-muted mb-0 small">
                                                    Thanh toán qua cổng VNPay bằng QR Code hoặc thẻ ATM/Credit Card
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </div>

                                <div class="d-grid gap-2 mt-4">
                                    <button type="submit" class="btn btn-primary btn-payment">
                                        Tiếp tục thanh toán <i class="fas fa-arrow-right ms-2"></i>
                                    </button>
                                    <a href="cartcontact" class="btn btn-outline-secondary">
                                        <i class="fas fa-arrow-left me-2"></i>Quay lại
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Right Column - Order Summary -->
                <div class="col-lg-4">
                    <div class="card order-summary-card">
                        <div class="card-body">
                            <h5 class="card-title">
                                <i class="fas fa-file-invoice me-2"></i>Thông tin đơn hàng
                            </h5>

                            <c:choose>
                                <c:when test="${empty pending_order}">
                                    <div class="alert alert-warning">
                                        <i class="fas fa-exclamation-triangle me-2"></i>
                                        Không tìm thấy thông tin đơn hàng
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <!-- Shipping Information -->
                                    <div class="order-info-section">
                                        <div class="section-label">
                                            <i class="fas fa-map-marker-alt me-1"></i> Thông tin nhận xe
                                        </div>
                                        <div class="info-text">
                                            <div class="fw-semibold">${order.recipientName}</div>
                                            <div>${order.phone}</div>
                                            <div>${order.address}</div>
                                        </div>
                                    </div>

                                    <!-- Products List -->
                                    <div class="order-info-section">
                                        <div class="section-label">
                                            <i class="fas fa-car me-1"></i> Xe đã chọn
                                        </div>
                                        <c:choose>
                                            <c:when test="${empty order.items}">
                                                <div class="alert alert-warning small">
                                                    Không có sản phẩm nào
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach items="${order.items}" var="item">
                                                    <div class="product-item">
                                                        <div class="product-details">
                                                            <div class="product-name">
                                                                ${item.quantity}x ${item.carTitle}
                                                            </div>
                                                            <div class="product-variant">
                                                                Loại: ${item.size} | Màu: ${item.color}
                                                            </div>
                                                        </div>
                                                        <div class="product-price">
                                                            <fmt:formatNumber value="${item.carPrice * item.quantity}" 
                                                                              type="currency" currencySymbol="₫" 
                                                                              maxFractionDigits="0"/>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>

                                    <!-- Order Summary -->
                                    <div class="order-summary">
                                        <div class="summary-row">
                                            <span>Tổng tiền xe:</span>
                                            <span>
                                                <c:set var="subtotal" value="0" />
                                                <c:forEach items="${order.items}" var="item">
                                                    <c:set var="subtotal" value="${subtotal + (item.carPrice * item.quantity)}" />
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${empty order.items}">
                                                        <span class="text-muted">0₫</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <fmt:formatNumber value="${subtotal}" type="currency" 
                                                                          currencySymbol="₫" maxFractionDigits="0"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>

                                        <div class="summary-row">
                                            <span>Phí giao xe:</span>
                                            
                                            <span id="shippingFee">
                                                <c:choose>
                                                    <c:when test="${subtotal > 500000}">Miễn phí</c:when>
                                                    <c:otherwise>
                                                        <fmt:formatNumber value="${shippingFee}" 
                                                                          type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>

                                        <div class="summary-row summary-total">
                                            <span>Tổng thanh toán:</span>
                                            <span class="text-primary">
                                                <fmt:formatNumber value="${order.total}" type="currency" 
                                                                  currencySymbol="₫" maxFractionDigits="0"/>
                                            </span>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="chat.jsp" />
        <div><jsp:include page="/footer.jsp" /></div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            // Form validation before submission
            document.getElementById('paymentForm').addEventListener('submit', function (e) {
                const paymentMethod = document.querySelector('input[name="payment_method"]:checked');

                if (!paymentMethod) {
                    e.preventDefault();
                    alert('Vui lòng chọn phương thức thanh toán');
                    return false;
                }

                return true;
            });
        </script>
    </body>
</html>