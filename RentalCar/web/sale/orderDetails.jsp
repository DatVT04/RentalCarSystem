<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chi tiết đơn thuê xe</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <style>
            /* Order Details Specific Styling */
            .main-content {
                margin-left: 250px;
                padding: 20px;
            }

            /* Card Enhancements */
            .main-content .card {
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                margin-bottom: 20px;
                border: 1px solid #e9ecef;
                background: white;
            }

            .main-content .card-header {
                background-color: #f8f9fa;
                border-bottom: 1px solid #e9ecef;
                font-weight: 600;
                color: #2c3e50;
                padding: 12px 15px;
            }

            /* Page Title Styling */
            .page-title {
                margin-bottom: 20px;
                color: #2c3e50;
                display: flex;
                align-items: center;
                font-size: 1.75rem;
                font-weight: 700;
            }

            .page-title i {
                margin-right: 10px;
                color: #3498db;
            }

            /* Status Badge */
            .status-badge {
                padding: 6px 12px;
                border-radius: 6px;
                font-weight: 600;
                text-transform: uppercase;
                font-size: 0.85em;
                display: inline-block;
            }

            .bg-success { 
                background-color: #28a745; 
                color: white; 
            }
            .bg-danger { 
                background-color: #dc3545; 
                color: white; 
            }
            .bg-warning { 
                background-color: #ffc107; 
                color: #212529; 
            }
            .bg-info {
                background-color: #17a2b8;
                color: white;
            }

            /* Table Styling */
            .main-content .table {
                margin-bottom: 0;
            }

            .main-content .table thead {
                background-color: #f1f3f5;
            }

            .main-content .table th {
                font-weight: 600;
                color: #2c3e50;
                vertical-align: middle;
                border: 1px solid #dee2e6;
            }

            .main-content .table td {
                vertical-align: middle;
                border: 1px solid #dee2e6;
            }

            /* Car Image */
            .main-content .table img {
                max-width: 150px;
                max-height: 150px;
                object-fit: cover;
                border-radius: 4px;
            }

            /* Form Buttons */
            .main-content .btn {
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 10px;
                padding: 10px 15px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .main-content .btn i {
                margin-right: 5px;
            }

            .main-content .btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.15);
            }

            /* Back Button Styling */
            .back-button-container {
                display: flex;
                justify-content: flex-start;
                margin-top: 20px;
            }

            .btn-back {
                background-color: #6c757d;
                color: white;
                border: none;
                display: flex;
                align-items: center;
                padding: 10px 15px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
                text-decoration: none;
            }

            .btn-back:hover {
                background-color: #5a6268;
                color: white;
            }

            .btn-back i {
                margin-right: 8px;
            }

            /* Info Items */
            .info-item {
                margin-bottom: 12px;
            }

            .info-item strong {
                color: #6c757d;
                display: inline-block;
                min-width: 150px;
            }

            /* Warning Alert */
            .alert-warning-custom {
                background-color: #fff3cd;
                border-left: 4px solid #ffc107;
                padding: 15px;
                margin: 20px 0;
                border-radius: 5px;
            }

            /* Responsive Adjustments */
            @media (max-width: 768px) {
                .main-content {
                    margin-left: 0;
                    padding: 10px;
                }

                .page-title {
                    font-size: 1.5rem;
                }

                .main-content .table img {
                    max-width: 100px;
                    max-height: 100px;
                }

                .info-item strong {
                    display: block;
                    margin-bottom: 5px;
                }
            }

            /* Alert Styling */
            .alert {
                border-radius: 8px;
                padding: 15px;
                margin-bottom: 20px;
            }

            .alert-success {
                background-color: #d4edda;
                border-color: #c3e6cb;
                color: #155724;
                border-left: 4px solid #28a745;
            }

            .alert-danger {
                background-color: #f8d7da;
                border-color: #f5c6cb;
                color: #721c24;
                border-left: 4px solid #dc3545;
            }

            /* Form Controls */
            .form-control {
                border-radius: 5px;
                border: 1px solid #ced4da;
                padding: 8px 12px;
            }

            .form-control:focus {
                border-color: #80bdff;
                box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
            }

            .form-label {
                font-weight: 600;
                margin-bottom: 5px;
                color: #495057;
            }
        </style>
    </head>
    <body>
        <jsp:include page="sidebar.jsp" />
        <div class="main-content" style="margin-left: 250px; padding: 20px;">
            <div class="container-fluid p-4">
                <h2 class="page-title">
                    <i class="fas fa-file-invoice me-2"></i>Chi tiết đơn thuê xe #${order.orderCode}
                </h2>

                <!-- Thông báo -->
                <c:if test="${param.alert == 'SSU'}">
                    <div class="alert alert-success">
                        <i class="fas fa-check-circle me-2"></i>Cập nhật trạng thái thành công!
                    </div>
                </c:if>
                <c:if test="${param.alert == 'ERR'}">
                    <div class="alert alert-danger">
                        <i class="fas fa-exclamation-circle me-2"></i>Có lỗi xảy ra khi cập nhật trạng thái!
                    </div>
                </c:if>
              
                <!-- Thông tin đơn thuê xe -->
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-info-circle me-2"></i>Thông tin đơn thuê xe
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="info-item">
                                    <strong>ID đơn thuê:</strong> ${order.id}
                                </div>
                                <div class="info-item">
                                    <strong>Mã đơn thuê:</strong> 
                                    <span class="text-primary">#${order.orderCode}</span>
                                </div>
                                <div class="info-item">
                                    <strong>Ngày đặt:</strong> 
                                    <fmt:formatDate value="${order.orderDate}" pattern="dd/MM/yyyy HH:mm"/>
                                </div>
                                <div class="info-item">
                                    <strong>Tổng chi phí:</strong> 
                                    <span class="text-primary fw-bold">
                                        <fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                    </span>
                                </div>
                                <div class="info-item">
                                    <strong>Trạng thái:</strong> 
                                    <span class="status-badge bg-${order.status == 'completed' ? 'success' : order.status == 'cancelled' ? 'danger' : 'warning'}">
                                        <c:choose>
                                            <c:when test="${order.status == 'pending_pay'}">Chờ thanh toán</c:when>
                                            <c:when test="${order.status == 'pending'}">Chờ xác nhận</c:when>
                                            <c:when test="${order.status == 'processing'}">Đang chuẩn bị xe</c:when>
                                            <c:when test="${order.status == 'shipping'}">Đang giao xe</c:when>
                                            <c:when test="${order.status == 'completed'}">Đã hoàn trả</c:when>
                                            <c:when test="${order.status == 'returned'}">Đã hoàn trả</c:when>
                                            <c:when test="${order.status == 'cancelled'}">Đã hủy</c:when>
                                            <c:otherwise>${order.status}</c:otherwise>
                                        </c:choose>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <c:if test="${order.status == 'shipping' || order.status == 'completed' || order.status == 'returned' || order.status == 'cancelled'}">
                                    <div class="info-item">
                                        <strong>Nhân viên giao xe:</strong> ${order.shippingProvider}
                                    </div>
                                    <div class="info-item">
                                        <strong>Mã nhân viên:</strong> 
                                        <span class="text-primary">${order.trackingNumber}</span>
                                    </div>
                                </c:if>
                                
                                <!-- Xử lý trạng thái -->
                                <c:choose>
                                    <c:when test="${order.status == 'pending_pay'}">
                                        <!-- Chờ thanh toán: Nút hủy -->
                                        <form method="POST" action="orderdetails">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="cancelled">
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn hủy đơn thuê xe này?')">
                                                <i class="fas fa-times"></i>Hủy đơn thuê
                                            </button>
                                        </form>
                                    </c:when>
                                    
                                    <c:when test="${order.status == 'pending'}">
                                        <!-- Chờ xác nhận: Nút xác nhận và hủy -->
                                        <form method="POST" action="orderdetails" class="mb-2">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="processing">
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-check"></i>Xác nhận đơn thuê
                                            </button>
                                        </form>
                                        <form method="POST" action="orderdetails">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="cancelled">
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn hủy đơn thuê xe này?')">
                                                <i class="fas fa-times"></i>Hủy đơn thuê
                                            </button>
                                        </form>
                                    </c:when>
                                    
                                    <c:when test="${order.status == 'processing'}">
                                        <!-- Đang chuẩn bị xe: Nhập thông tin giao xe -->
                                        <form method="POST" action="orderdetails">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="shipping">
                                            <div class="mb-3">
                                                <label class="form-label">Nhân viên giao xe:</label>
                                                <input type="text" name="shippingProvider" class="form-control" 
                                                        required>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Mã nhân viên:</label>
                                                <input type="text" name="trackingNumber" class="form-control" 
                                                       placeholder="Nhập mã nhân viên" required>
                                            </div>
                                            <button type="submit" class="btn btn-primary">
                                                <i class="fas fa-truck"></i>Bắt đầu giao xe
                                            </button>
                                        </form>
                                    </c:when>
                                    
                                    <c:when test="${order.status == 'shipping'}">
                                        <!-- Đang giao xe: Nút hoàn thành và hoàn trả -->
                                        <form method="POST" action="orderdetails" class="mb-2">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="completed">
                                            <button type="submit" class="btn btn-success" onclick="return confirm('Xác nhận xe đã được giao và khách hàng đã thuê xong?')">
                                                <i class="fas fa-check"></i>Xe đã giao - Hoàn thành
                                            </button>
                                        </form>
                                        <form method="POST" action="orderdetails">
                                            <input type="hidden" name="orderId" value="${order.id}">
                                            <input type="hidden" name="status" value="returned">
                                            <button type="submit" class="btn btn-warning" onclick="return confirm('Xác nhận xe đã được hoàn trả?')">
                                                <i class="fas fa-undo"></i>Xe đã hoàn trả
                                            </button>
                                        </form>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Thông tin người thuê -->
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-user me-2"></i>Thông tin người thuê xe
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="info-item">
                                    <strong>Họ tên:</strong> ${order.recipientName}
                                </div>
                                <div class="info-item">
                                    <strong>Giới tính:</strong> ${user != null ? user.gender : 'Không xác định'}
                                </div>
                                <div class="info-item">
                                    <strong>Email:</strong> ${order.recipientEmail}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-item">
                                    <strong>Điện thoại:</strong> ${order.phone}
                                </div>
                                <div class="info-item">
                                    <strong>Địa điểm nhận xe:</strong> ${order.address}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Danh sách xe thuê -->
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-car me-2"></i>Xe trong đơn thuê
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Ảnh xe</th>
                                        <th>Tên xe</th>
                                        <th>Loại xe</th>
                                        <th>Màu sắc</th>
                                        <th>Số ngày</th>
                                        <th>Giá thuê xe/ngày</th>
                                        <th>Thành tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${order.items}" var="item">
                                        <tr>
                                            <td>
                                                <img src="${item.carThumbnail.contains('http') ? item.carThumbnail : pageContext.request.contextPath.concat(item.carThumbnail)}" 
                                                     alt="${item.carTitle}" height="150px"/>
                                            </td>
                                            <td><strong>${item.carTitle}</strong></td>
                                            <td>${item.size}</td>
                                            <td>${item.color}</td>
                                            <td class="text-center">${item.quantity}</td>
                                            <td>
                                                <fmt:formatNumber value="${item.carPrice}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                            </td>
                                            <td class="text-end">
                                                <strong class="text-primary">
                                                    <fmt:formatNumber value="${item.carPrice * item.quantity}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                                </strong>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="6" class="text-end"><strong>Tổng chi phí thuê xe:</strong></td>
                                        <td class="text-end">
                                            <strong class="text-primary" style="font-size: 1.1rem;">
                                                <fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₫" maxFractionDigits="0"/>
                                            </strong>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Lịch sử cập nhật -->
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-history me-2"></i>Lịch sử cập nhật đơn thuê
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Thời gian</th>
                                        <th>Người cập nhật</th>
                                        <th>Trạng thái</th>
                                        <th>Ghi chú</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${history}" var="entry">
                                        <tr>
                                            <td>
                                                <fmt:formatDate value="${entry.updatedAt}" pattern="dd/MM/yyyy HH:mm"/>
                                            </td>
                                            <td>${entry.updaterName}</td>
                                            <td>
                                                <span class="status-badge bg-${entry.status == 'completed' ? 'success' : entry.status == 'cancelled' ? 'danger' : 'info'}">
                                                    <c:choose>
                                                        <c:when test="${entry.status == 'pending_pay'}">Chờ thanh toán</c:when>
                                                        <c:when test="${entry.status == 'pending'}">Chờ xác nhận</c:when>
                                                        <c:when test="${entry.status == 'processing'}">Đang chuẩn bị xe</c:when>
                                                        <c:when test="${entry.status == 'shipping'}">Đang giao xe</c:when>
                                                        <c:when test="${entry.status == 'completed'}">Đã hoàn trả</c:when>
                                                        <c:when test="${entry.status == 'returned'}">Đã hoàn trả</c:when>
                                                        <c:when test="${entry.status == 'cancelled'}">Đã hủy</c:when>
                                                        <c:otherwise>${entry.status}</c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </td>
                                            <td>${entry.notes}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Nút quay lại -->
                <div class="back-button-container">
                    <a href="${pageContext.request.contextPath}/sale/orderlist" class="btn btn-back">
                        <i class="fas fa-arrow-left"></i> Quay lại danh sách đơn thuê xe
                    </a>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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