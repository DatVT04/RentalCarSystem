<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Báo Cáo Cho Thuê</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <!-- DataTables CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
        <style>
            /* Add spacing between report sections */
            .report-card {
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                overflow: hidden;
                margin-bottom: 30px;
            }

            /* Custom headers for each section */
            .report-card .card-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 20px;
                font-weight: bold;
                font-size: 1.1rem;
            }

            /* Table styling */
            .table {
                margin-bottom: 0;
            }

            .table thead th {
                font-weight: bold;
            }

            .summary-row {
                font-weight: bold;
            }

            /* Filter section styling */
            .filters {
                border: 1px solid rgba(0, 0, 0, 0.1);
            }

            /* Badge styling for better visibility */
            .badge {
                font-size: 85%;
                padding: 0.35em 0.65em;
            }

            /* Export buttons styling */
            .btn-export {
                font-weight: 500;
            }
            :root {
                --primary-color: #2c3e50;
                --secondary-color: #34495e;
                --accent-color: #3498db;
                --light-color: #ecf0f1;
                --border-color: #dee2e6;
                --hover-color: #f8f9fa;
                --success-color: #28a745;
                --danger-color: #dc3545;
                --warning-color: #ffc107;
                --info-color: #17a2b8;
            }

            body {
                background-color: #f8f9fa;
            }

            .main-content {
                margin-left: 250px;
                transition: all 0.3s;
                padding: 20px;
                min-height: 100vh;
            }

            .dashboard-card {
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease;
                border: 1px solid var(--border-color);
                margin-bottom: 20px;
            }

            .dashboard-card:hover {
                transform: translateY(-5px);
            }

            .icon-bg {
                width: 60px;
                height: 60px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .stat-title {
                font-size: 14px;
                color: #6c757d;
            }

            .stat-value {
                font-size: 24px;
                font-weight: bold;
            }

            .page-title {
                color: var(--primary-color);
                margin-bottom: 20px;
                padding-bottom: 10px;
                border-bottom: 2px solid var(--accent-color);
                display: inline-block;
            }

            .card-header {
                background-color: #fff;
                border-bottom: 1px solid var(--border-color);
                padding: 15px 20px;
                font-weight: 600;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .filters {
                background: white;
                border-radius: 8px;
                padding: 15px;
                margin-bottom: 20px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            }

            .table-container {
                max-height: 500px;
                overflow-y: auto;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                background-color: white;
            }

            .table {
                margin-bottom: 0;
            }

            .table th {
                position: sticky;
                top: 0;
                background-color: var(--primary-color);
                color: white;
                font-weight: 600;
                z-index: 1;
            }

            .table-hover tbody tr:hover {
                background-color: var(--hover-color);
            }

            .sidebar-toggle {
                position: fixed;
                left: 10px;
                top: 10px;
                z-index: 1001;
                display: none;
                border-radius: 50%;
                width: 40px;
                height: 40px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .btn-export {
                background-color: var(--accent-color);
                color: white;
                border: none;
                border-radius: 4px;
                padding: 0.375rem 0.75rem;
                transition: background-color 0.3s;
            }

            .btn-export:hover {
                background-color: #2980b9;
                color: white;
            }

            .summary-row {
                background-color: var(--light-color);
                font-weight: bold;
            }

            .status-badge {
                font-size: 0.8rem;
                padding: 0.35em 0.65em;
                border-radius: 30px;
                font-weight: 500;
            }

            .dataTables_wrapper .dataTables_length,
            .dataTables_wrapper .dataTables_filter,
            .dataTables_wrapper .dataTables_info,
            .dataTables_wrapper .dataTables_processing,
            .dataTables_wrapper .dataTables_paginate {
                margin-top: 10px;
                margin-bottom: 10px;
                padding: 0 15px;
            }

            .dataTables_wrapper .dataTables_paginate .paginate_button {
                border-radius: 4px;
                margin: 0 2px;
            }

            .dataTables_wrapper .dataTables_paginate .paginate_button.current {
                background: var(--accent-color);
                border-color: var(--accent-color);
                color: white !important;
            }

            .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
                background: var(--hover-color);
                border-color: var(--border-color);
            }

            @media (max-width: 768px) {
                .main-content {
                    margin-left: 0;
                }
                .sidebar-toggle {
                    display: block;
                }
            }
            /* Add these new styles for navigation and report switching */
            .report-nav {
                margin-bottom: 20px;
            }
            .report-section {
                display: none;
            }
            .report-section.active {
                display: block;
            }
        </style>
    </head>
    <body class="bg-light">
        <!-- Include the sidebar -->
        <jsp:include page="/admin/adminsidebar.jsp" />

        <button class="btn btn-primary sidebar-toggle">
            <i class="fas fa-bars"></i>
        </button>

        <div class="main-content">
            <div class="container-fluid p-4">
                <h2 class="page-title">
                    <i class="fas fa-file-alt me-2"></i>Báo Cáo Cho Thuê
                </h2>

                <!-- Navigation Bar for Reports -->
                <ul class="nav nav-pills report-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#user-report" data-report="user-report">Báo cáo người dùng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#order-report" data-report="order-report">Báo cáo đơn thuê</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#car-report" data-report="car-report">Báo cáo xe</a>
                    </li>
                </ul>

                <!-- User Reports Section -->
                <div id="user-report" class="report-section report-card active">
                    <div class="card-header bg-primary text-white">
                        <span><i class="fas fa-users me-2"></i>Báo cáo người dùng</span>
                        <button class="btn btn-light" id="exportUserBtn">
                            <i class="fas fa-file-export me-1"></i>Xuất báo cáo
                        </button>
                    </div>
                    <div class="card-body">
                        <!-- User Role Table -->
                        <div class="table-responsive mt-3">
                            <table class="table table-striped table-hover" id="userTable">
                                <thead class="table-primary">
                                    <tr>
                                        <th>Vai trò</th>
                                        <th>Tổng số người dùng</th>
                                        <th>Đang hoạt động</th>
                                        <th>Không hoạt động</th>
                                        <th>Tổng doanh thu từ khách</th>
                                        <th>Tổng số đơn thuê</th>
                                        <th>Giá trị đơn trung bình</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${userRoleReports}" var="report">
                                        <tr>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${report.role eq 'admin'}">
                                                        <span class="badge bg-danger">Quản trị viên</span>
                                                    </c:when>
                                                    <c:when test="${report.role eq 'sale'}">
                                                        <span class="badge bg-primary">Nhân viên bán hàng</span>
                                                    </c:when>
                                                    <c:when test="${report.role eq 'owner'}">
                                                        <span class="badge bg-info">Chủ xe</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-secondary">Khách hàng</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${report.totalUsers}</td>
                                            <td>${report.activeCount}</td>
                                            <td>${report.inactiveCount}</td>
                                            <td><fmt:formatNumber type="currency" value="${report.totalRevenue}" currencySymbol="₫" maxFractionDigits="0"/></td>
                                            <td>${report.totalOrders}</td>
                                            <td><fmt:formatNumber type="currency" value="${report.avgOrderValue}" currencySymbol="₫" maxFractionDigits="0"/></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot class="table-primary fw-bold">
                                    <tr class="summary-row">
                                        <td>Tổng cộng</td>
                                        <td>${userCount}</td>
                                        <td>${userRoleTotalActive}</td>
                                        <td>${userRoleTotalInactive}</td>
                                        <td><fmt:formatNumber type="currency" value="${userRoleTotalRevenue}" currencySymbol="₫" maxFractionDigits="0"/></td>
                                        <td>${userRoleTotalOrders}</td>
                                        <td><fmt:formatNumber type="currency" value="${userRoleAvgOrderValue}" currencySymbol="₫" maxFractionDigits="0"/></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <!-- Phân tích và nhận xét về dữ liệu -->
                        <div class="analytics-section mt-4">
                            <h5 class="text-primary"><i class="fas fa-chart-line me-2"></i>Nhận xét</h5>
                            <div class="card">
                                <div class="card-body">
                                    <div class="analytics-insights">
                                        <c:set var="activePercentage" value="${userRoleTotalActive / userCount * 100}" />
                                        

                                        <div class="insight-item mb-2">
                                            <i class="fas fa-user-check text-success me-2"></i>
                                            <span>
                                                <strong>Tình trạng người dùng:</strong> 
                                                <c:choose>
                                                    <c:when test="${activePercentage gt 80}">
                                                        Tỷ lệ người dùng hoạt động rất cao (${activePercentage}%), chứng tỏ nền tảng có khả năng giữ chân người dùng tốt.
                                                    </c:when>
                                                    <c:when test="${activePercentage gt 60}">
                                                        Tỷ lệ người dùng hoạt động khá tốt (${activePercentage}%), nhưng vẫn có thể cải thiện.
                                                    </c:when>
                                                    <c:otherwise>
                                                        Tỷ lệ người dùng hoạt động thấp (${activePercentage}%), cần xem xét các chiến lược kích hoạt lại tài khoản.
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>

                                        <div class="insight-item mb-2">
                                            <i class="fas fa-shopping-cart text-primary me-2"></i>
                                            <span>
                                                <strong>Hiệu suất thuê xe:</strong> 
                                                <c:choose>
                                                    <c:when test="${userRoleTotalOrders gt 1000 && userRoleAvgOrderValue gt 500000}">
                                                        Doanh số cho thuê mạnh với ${userRoleTotalOrders} đơn thuê và giá trị đơn trung bình cao.
                                                    </c:when>
                                                    <c:when test="${userRoleTotalOrders gt 500}">
                                                        Doanh số ở mức trung bình với ${userRoleTotalOrders} đơn thuê. Cần chiến lược tăng giá trị đơn thuê.
                                                    </c:when>
                                                    <c:otherwise>
                                                        Doanh số cần cải thiện với chỉ ${userRoleTotalOrders} đơn thuê. Nên xem xét chiến dịch khuyến mãi mới.
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>

                                        

                                        <div class="insight-item">
                                            <i class="fas fa-money-bill-wave text-success me-2"></i>
                                            <span>
                                                <strong>Doanh thu:</strong> 
                                                <c:choose>
                                                    <c:when test="${userRoleTotalRevenue gt 1000000000}">
                                                        Doanh thu rất tốt đạt <fmt:formatNumber type="currency" value="${userRoleTotalRevenue}" currencySymbol="₫" maxFractionDigits="0"/>, 
                                                        vượt chỉ tiêu kỳ vọng.
                                                    </c:when>
                                                    <c:when test="${userRoleTotalRevenue gt 500000000}">
                                                        Doanh thu khả quan đạt <fmt:formatNumber type="currency" value="${userRoleTotalRevenue}" currencySymbol="₫" maxFractionDigits="0"/>, 
                                                        đang đi đúng kế hoạch.
                                                    </c:when>
                                                    <c:otherwise>
                                                        Doanh thu còn khiêm tốn đạt <fmt:formatNumber type="currency" value="${userRoleTotalRevenue}" currencySymbol="₫" maxFractionDigits="0"/>, 
                                                        cần thúc đẩy mạnh hơn.
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>
                                    </div>

                                    <!-- Đề xuất hành động -->
                                    <div class="action-recommendations mt-3 pt-3 border-top">
                                        <h6 class="text-primary">Đề xuất:</h6>
                                        <ul class="action-list">
                                            <c:if test="${activePercentage lt 80}">
                                                <li>Gửi email kích hoạt lại cho ${userRoleTotalInactive} tài khoản không hoạt động</li>
                                                </c:if>
                                                <c:if test="${userRoleAvgOrderValue lt 500000}">
                                                <li>Tạo chiến dịch up-sell để tăng giá trị đơn thuê trung bình</li>
                                                </c:if>
                                                <c:if test="${userRoleTotalOrders lt 500}">
                                                <li>Tạo chương trình khuyến mãi để thu hút đơn thuê mới</li>
                                                </c:if>
                                            <li>Tiếp tục theo dõi tỷ lệ chuyển đổi của khách hàng để đánh giá hiệu quả</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Order Reports Section -->
                <!-- Order Reports Section -->
<div id="order-report" class="report-section report-card">
    <div class="card-header bg-success text-white">
        <span><i class="fas fa-shopping-cart me-2"></i>Báo cáo đơn thuê</span>
        <button class="btn btn-light" id="exportOrderBtn">
            <i class="fas fa-file-export me-1"></i>Xuất báo cáo
        </button>
    </div>
    <div class="card-body">
        <!-- Filters -->
        <div class="filters p-3 bg-light rounded mb-3">
            <form action="${pageContext.request.contextPath}/admin/rentalreport" method="get" class="row">
                <div class="col-md-10 mb-3 mb-md-0">
                    <label for="orderStatus" class="form-label">Trạng thái đơn thuê</label>
                    <select class="form-select" id="orderStatus" name="orderStatus" onchange="this.form.submit()">
                        <option value="all" ${orderStatusFilter eq 'all' ? 'selected' : ''}>Tất cả trạng thái</option>
                        <option value="pending_pay" ${orderStatusFilter eq 'pending_pay' ? 'selected' : ''}>Chờ thanh toán</option>
                        <option value="pending" ${orderStatusFilter eq 'pending' ? 'selected' : ''}>Đang chờ</option>
                        <option value="processing" ${orderStatusFilter eq 'processing' ? 'selected' : ''}>Đang xử lý</option>
                        <option value="shipping" ${orderStatusFilter eq 'shipped' ? 'selected' : ''}>Đang bàn giao</option>
                        <option value="completed" ${orderStatusFilter eq 'completed' ? 'selected' : ''}>Đã hoàn thành</option>
                        <option value="cancelled" ${orderStatusFilter eq 'cancelled' ? 'selected' : ''}>Đã hủy</option>
                    </select>
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button type="submit" class="btn btn-success w-100">Lọc</button>
                </div>
            </form>
        </div>

        <!-- Order Table -->
        <div class="table-responsive mt-3">
            <table class="table table-striped table-hover" id="orderTable">
                <thead class="table-success">
                    <tr>
                        <th>Trạng thái đơn thuê</th>
                        <th>Tổng số đơn thuê</th>
                        <th>Tổng giá trị đơn</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orderReports}" var="order">
                        <tr>
                            <td>
                                <c:choose>
                                    <c:when test="${order.status eq 'pending_pay'}">
                                        <span class="badge bg-secondary">Chờ thanh toán</span>
                                    </c:when>
                                    <c:when test="${order.status eq 'pending'}">
                                        <span class="badge bg-warning">Đang phê duyệt</span>
                                    </c:when>
                                    <c:when test="${order.status eq 'processing'}">
                                        <span class="badge bg-info">Đang xử lý</span>
                                    </c:when>
                                    <c:when test="${order.status eq 'shipping'}">
                                        <span class="badge bg-primary">Đang bàn giao</span>
                                    </c:when>
                                    <c:when test="${order.status eq 'completed'}">
                                        <span class="badge bg-success">Đã hoàn thành</span>
                                    </c:when>
                                    <c:when test="${order.status eq 'cancelled'}">
                                        <span class="badge bg-danger">Đã huỷ</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-dark">Đã trả lại</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>${order.orderCount}</td>
                            <td><fmt:formatNumber type="currency" value="${order.totalAmount}" currencySymbol="₫" maxFractionDigits="0"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
                <tfoot class="table-success fw-bold">
                    <tr class="summary-row">
                        <td>Tổng cộng</td>
                        <td>${orderReportTotalOrders}</td>
                        <td><fmt:formatNumber type="currency" value="${orderReportTotalAmount}" currencySymbol="₫" maxFractionDigits="0"/></td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <!-- Phần nhận xét tự động dựa vào số liệu đơn thuê -->
        <div class="mt-4 p-3 bg-light rounded">
            <h5 class="mb-3 text-success"><i class="fas fa-chart-pie me-2"></i>Nhận xét</h5>
            <div class="row">
                <div class="col-md-12">
                    <ul class="list-group">
                        <!-- Phân tích tỷ lệ hoàn thành đơn thuê -->
                        <li class="list-group-item">
                            <c:set var="completionRate" value="${0}" />
                            <c:forEach items="${orderReports}" var="order">
                                <c:if test="${order.status eq 'completed'}">
                                    <c:set var="completionRate" value="${(order.orderCount / orderReportTotalOrders) * 100}" />
                                </c:if>
                            </c:forEach>
                            <div class="d-flex justify-content-between align-items-center">
                                <span>Tỷ lệ hoàn thành đơn thuê: <span class="fw-bold"><fmt:formatNumber value="${completionRate}" maxFractionDigits="1"/>%</span></span>
                                <c:choose>
                                    <c:when test="${completionRate > 80}">
                                        <span class="badge bg-success">Tốt</span>
                                    </c:when>
                                    <c:when test="${completionRate > 60}">
                                        <span class="badge bg-info">Bình thường</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-warning text-dark">Cần cải thiện</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <!-- Phân tích tỷ lệ hủy đơn thuê -->
                        <li class="list-group-item">
                            <c:set var="cancellationRate" value="${0}" />
                            <c:forEach items="${orderReports}" var="order">
                                <c:if test="${order.status eq 'cancelled'}">
                                    <c:set var="cancellationRate" value="${(order.orderCount / orderReportTotalOrders) * 100}" />
                                </c:if>
                            </c:forEach>
                            <div class="d-flex justify-content-between align-items-center">
                                <span>Tỷ lệ hủy đơn thuê: <span class="fw-bold"><fmt:formatNumber value="${cancellationRate}" maxFractionDigits="1"/>%</span></span>
                                <c:choose>
                                    <c:when test="${cancellationRate < 5}">
                                        <span class="badge bg-success">Tốt</span>
                                    </c:when>
                                    <c:when test="${cancellationRate < 10}">
                                        <span class="badge bg-info">Bình thường</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">Cần xem xét nguyên nhân</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <!-- Đơn thuê đang xử lý -->
                        <li class="list-group-item">
                            <c:set var="pendingOrdersCount" value="${0}" />
                            <c:forEach items="${orderReports}" var="order">
                                <c:if test="${order.status eq 'pending' || order.status eq 'pending_pay' || order.status eq 'processing'}">
                                    <c:set var="pendingOrdersCount" value="${pendingOrdersCount + order.orderCount}" />
                                </c:if>
                            </c:forEach>
                            <c:set var="pendingOrdersRate" value="${(pendingOrdersCount / orderReportTotalOrders) * 100}" />
                            <div class="d-flex justify-content-between align-items-center">
                                <span>Đơn thuê đang xử lý: <span class="fw-bold">${pendingOrdersCount} đơn (<fmt:formatNumber value="${pendingOrdersRate}" maxFractionDigits="1"/>%)</span></span>
                                <c:choose>
                                    <c:when test="${pendingOrdersRate > 30}">
                                        <span class="badge bg-warning text-dark">Cần tăng tốc xử lý</span>
                                    </c:when>
                                    <c:when test="${pendingOrdersRate > 15}">
                                        <span class="badge bg-info">Bình thường</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-success">Tốc độ xử lý tốt</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <!-- Đề xuất hành động -->
                        <li class="list-group-item bg-light">
                            <strong>Đề xuất:</strong>
                            <ul class="mt-2">
                                <c:if test="${cancellationRate > 10}">
                                    <li>Kiểm tra nguyên nhân hủy đơn cao (<fmt:formatNumber value="${cancellationRate}" maxFractionDigits="1"/>%) và có biện pháp khắc phục.</li>
                                </c:if>
                                <c:if test="${pendingOrdersRate > 25}">
                                    <li>Cần tăng cường nhân sự xử lý đơn thuê đang chờ (${pendingOrdersCount} đơn).</li>
                                </c:if>
                                <c:if test="${completionRate < 60}">
                                    <li>Cải thiện quy trình để tăng tỷ lệ hoàn thành đơn thuê.</li>
                                </c:if>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

                <!-- Car Reports Section -->
                <div id="car-report" class="report-section report-card">
                    <div class="card-header bg-warning text-dark">
                        <span><i class="fas fa-boxes me-2"></i>Báo cáo xe</span>
                        <div>
                            <button class="btn btn-danger me-2" id="showLowStockBtn" data-bs-toggle="modal" data-bs-target="#lowStockModal">
                                <i class="fas fa-exclamation-triangle me-1"></i>Xe tồn thấp
                            </button>
                            <button class="btn btn-dark" id="exportCarBtn">
                                <i class="fas fa-file-export me-1"></i>Xuất báo cáo
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Filters -->
                        <div class="filters p-3 bg-light rounded mb-3">
                            <form action="${pageContext.request.contextPath}/admin/rentalreport" method="get" class="row">
                                <div class="col-md-10 mb-3 mb-md-0">
                                    <label for="carStatus" class="form-label">Trạng thái xe</label>
                                    <select class="form-select" id="carStatus" name="carStatus" onchange="this.form.submit()">
                                        <option value="all" ${carStatusFilter eq 'all' ? 'selected' : ''}>Tất cả trạng thái</option>
                                        <option value="active" ${carStatusFilter eq 'active' ? 'selected' : ''}>Xe có sẵn</option>
                                        <option value="inactive" ${carStatusFilter eq 'inactive' ? 'selected' : ''}>Xe ngừng cho thuê</option>
                                        <option value="EOStock" ${carStatusFilter eq 'EOStock' ? 'selected' : ''}>Hết xe thuê</option>
                                    </select>
                                </div>
                                <div class="col-md-2 d-flex align-items-end">
                                    <button type="submit" class="btn btn-warning w-100">Lọc</button>
                                </div>
                            </form>
                        </div>

                        <!-- Car Inventory Table -->
                        <div class="table-responsive mt-3">
                            <table class="table table-striped table-hover" id="carTable">
                                <thead class="table-warning">
                                    <tr>
                                        <th>Trạng thái xe</th>
                                        <th>Tổng số xe</th>
                                        <th>Tổng tồn kho</th>
                                        <th>Xe tồn thấp</th>
                                        <th>Tổng số lượng cho thuê</th>
                                        <!--                        <th>Tổng doanh thu</th>-->
                                        <th>Xe có đơn thuê chạy</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${empty carInventoryReports}">
                                        <tr>
                                            <td colspan="7" class="text-center">Không có dữ liệu để hiển thị</td>
                                        </tr>
                                    </c:if>
                                    <c:forEach items="${carInventoryReports}" var="car">
                                        <tr>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${car.status eq 'active'}">
                                                        <span class="badge bg-success">Xe có sẵn</span>
                                                    </c:when>
                                                    <c:when test="${car.status eq 'inactive'}">
                                                        <span class="badge bg-danger">Xe ngừng cho thuê</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-warning text-dark">Hết xe thuê</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${car.totalCars}</td>
                                            <td>${car.totalStock}</td>
                                            <td>${car.lowStockCount}</td>
                                            <td>${car.totalSoldQuantity}</td>
                <!--                            <td><fmt:formatNumber type="currency" value="${car.totalRevenue}" currencySymbol="₫" maxFractionDigits="0"/></td>-->
                                            <td>${car.bestSellerCount}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot class="table-warning fw-bold">
                                    <tr class="summary-row">
                                        <td>Tổng cộng</td>
                                        <td>${carCount}</td>
                                        <td>${totalStock}</td>
                                        <td>${totalLowStockCount}</td>
                                        <td>${totalSoldQuantity}</td>
                <!--                        <td><fmt:formatNumber type="currency" value="${carTotalRevenue}" currencySymbol="₫" maxFractionDigits="0"/></td>-->
                                        <td>${totalBestSellerCount}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <!-- Phần nhận xét tự động dựa vào số liệu -->
                        <div class="mt-4 p-3 bg-light rounded">
                            <h5 class="mb-3 text-primary"><i class="fas fa-chart-line me-2"></i>Nhận xét</h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="list-group">
                                        <!-- Nhận xét về tỷ lệ xe tồn thấp -->
                                        <li class="list-group-item">
                                            <c:set var="lowStockPercentage" value="${(totalLowStockCount / carCount) * 100}" />
                                            <div class="d-flex justify-content-between align-items-center">
                                                <span>Tỷ lệ xe tồn thấp: <span class="fw-bold"><fmt:formatNumber value="${lowStockPercentage}" maxFractionDigits="1"/>%</span></span>
                                                <c:choose>
                                                    <c:when test="${lowStockPercentage > 20}">
                                                        <span class="badge bg-danger">Cần nhập thêm hàng</span>
                                                    </c:when>
                                                    <c:when test="${lowStockPercentage > 10}">
                                                        <span class="badge bg-warning text-dark">Cần chú ý</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-success">Bình thường</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </li>

                                        <!-- Phân tích tốc độ cho thuê -->
                                        <li class="list-group-item">
                                            <c:set var="sellThroughRate" value="${(totalSoldQuantity / (totalSoldQuantity + totalStock)) * 100}" />
                                            <div class="d-flex justify-content-between align-items-center">
                                                <span>Tỷ lệ cho thuê <span class="fw-bold"><fmt:formatNumber value="${sellThroughRate}" maxFractionDigits="1"/>%</span></span>
                                                <c:choose>
                                                    <c:when test="${sellThroughRate > 70}">
                                                        <span class="badge bg-success">Tốt</span>
                                                    </c:when>
                                                    <c:when test="${sellThroughRate > 40}">
                                                        <span class="badge bg-info">Bình thường</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-warning text-dark">Chậm</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </li>

                                        <!-- Phân tích xe bán chạy -->
                                        <li class="list-group-item">
                                            <c:set var="bestSellerPercentage" value="${(totalBestSellerCount / carCount) * 100}" />
                                            <div class="d-flex justify-content-between align-items-center">
                                                <span>Tỷ lệ xe cho thuê chạy: <span class="fw-bold"><fmt:formatNumber value="${bestSellerPercentage}" maxFractionDigits="1"/>%</span></span>
                                                <c:choose>
                                                    <c:when test="${bestSellerPercentage < 10}">
                                                        <span class="badge bg-warning text-dark">Cần đa dạng hóa</span>
                                                    </c:when>
                                                    <c:when test="${bestSellerPercentage > 30}">
                                                        <span class="badge bg-success">Danh mục xe hiệu quả</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-info">Bình thường</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </li>

                                        <!-- Đề xuất hành động -->
                                        <li class="list-group-item bg-light">
                                            <strong>Đề xuất:</strong>
                                            <ul class="mt-2">
                                                <c:if test="${lowStockPercentage > 15}">
                                                    <li>Cần nhập thêm hàng cho ${totalLowStockCount} xe đang tồn thấp.</li>
                                                    </c:if>
                                                    <c:if test="${sellThroughRate < 40}">
                                                    <li>Xem xét áp dụng chương trình khuyến mãi để tăng tốc độ cho thuê xe.</li>
                                                    </c:if>
                                                    <c:if test="${bestSellerPercentage < 15}">
                                                    <li>Cần phân tích và đẩy mạnh tiếp thị các xe tiềm năng.</li>
                                                    </c:if>

                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Low Stock Cars Modal -->
            <div class="modal fade" id="lowStockModal" tabindex="-1" aria-labelledby="lowStockModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header bg-danger text-white">
                            <h5 class="modal-title" id="lowStockModalLabel"><i class="fas fa-exclamation-triangle me-2"></i>Xe tồn thấp</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover" id="lowStockTable">
                                    <thead class="table-danger">
                                        <tr>
                                            <th>Mã Xe</th>
                                            <th>Tên Xe</th>
                                            <th>Danh mục</th>
                                            <th>Kích thước</th>
                                            <th>Màu sắc</th>
                                            <th>Số lượng tồn kho</th>
                                        </tr>
                                    </thead>
                                    <tbody id="lowStockTableBody">
                                        <!-- Data will be loaded via AJAX -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-danger" id="exportLowStockBtn">Xuất báo cáo</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- jQuery -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <!-- Bootstrap JS Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- DataTables JS -->
            <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
            <!-- SheetJS (XLSX) for exporting -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

            <script>
                                        $(document).ready(function () {
                                            // Initialize DataTables
                                            const userTable = $('#userTable').DataTable({
                                                "language": {
                                                    "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                                                    "zeroRecords": "Không tìm thấy dữ liệu",
                                                    "info": "Trang _PAGE_ trên _PAGES_",
                                                    "infoEmpty": "Không có dữ liệu",
                                                    "infoFiltered": "(lọc từ _MAX_ tổng số dòng)",
                                                    "search": "Tìm kiếm:",
                                                    "paginate": {
                                                        "first": "Đầu",
                                                        "last": "Cuối",
                                                        "next": "Tiếp",
                                                        "previous": "Trước"
                                                    }
                                                }
                                            });

                                            const orderTable = $('#orderTable').DataTable({
                                                "language": {
                                                    "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                                                    "zeroRecords": "Không tìm thấy dữ liệu",
                                                    "info": "Trang _PAGE_ trên _PAGES_",
                                                    "infoEmpty": "Không có dữ liệu",
                                                    "infoFiltered": "(lọc từ _MAX_ tổng số dòng)",
                                                    "search": "Tìm kiếm:",
                                                    "paginate": {
                                                        "first": "Đầu",
                                                        "last": "Cuối",
                                                        "next": "Tiếp",
                                                        "previous": "Trước"
                                                    }
                                                }
                                            });

                                            const carTable = $('#carTable').DataTable({
                                                "language": {
                                                    "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                                                    "zeroRecords": "Không tìm thấy dữ liệu",
                                                    "info": "Trang _PAGE_ trên _PAGES_",
                                                    "infoEmpty": "Không có dữ liệu",
                                                    "infoFiltered": "(lọc từ _MAX_ tổng số dòng)",
                                                    "search": "Tìm kiếm:",
                                                    "paginate": {
                                                        "first": "Đầu",
                                                        "last": "Cuối",
                                                        "next": "Tiếp",
                                                        "previous": "Trước"
                                                    }
                                                }
                                            });

                                            // Report navigation
                                            $('.nav-link').click(function (e) {
                                                e.preventDefault();
                                                $('.nav-link').removeClass('active');
                                                $(this).addClass('active');

                                                const reportId = $(this).data('report');
                                                $('.report-section').removeClass('active');
                                                $('#' + reportId).addClass('active');
                                            });

                                            // Export functions
                                            function exportTableToExcel(tableId, fileName) {
                                                const table = document.getElementById(tableId);
                                                const wb = XLSX.utils.table_to_book(table, {sheet: "Sheet1"});
                                                XLSX.writeFile(wb, fileName + '.xlsx');
                                            }

                                            $('#exportUserBtn').click(function () {
                                                exportTableToExcel('userTable', 'user_report');
                                            });

                                            $('#exportOrderBtn').click(function () {
                                                exportTableToExcel('orderTable', 'order_report');
                                            });

                                            $('#exportCarBtn').click(function () {
                                                exportTableToExcel('carTable', 'car_report');
                                            });

                                            // Low Stock Modal AJAX (unchanged)
                                            $('#lowStockModal').on('shown.bs.modal', function () {
                                                $.ajax({
                                                    url: '${pageContext.request.contextPath}/admin/low-stock-cars',
                                                    method: 'GET',
                                                    dataType: 'json',
                                                    success: function (data) {
                                                        let table = $('#lowStockTable');
                                                        if ($.fn.DataTable.isDataTable(table)) {
                                                            table.DataTable().destroy();
                                                        }
                                                        table.DataTable({
                                                            "language": {
                                                                "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                                                                "zeroRecords": "Không tìm thấy dữ liệu",
                                                                "info": "Trang _PAGE_ trên _PAGES_",
                                                                "infoEmpty": "Không có dữ liệu",
                                                                "infoFiltered": "(lọc từ _MAX_ tổng số dòng)",
                                                                "search": "Tìm kiếm:",
                                                                "paginate": {
                                                                    "first": "Đầu",
                                                                    "last": "Cuối",
                                                                    "next": "Tiếp",
                                                                    "previous": "Trước"
                                                                }
                                                            },
                                                            "data": data,
                                                            "columns": [
                                                                {"data": "id"},
                                                                {"data": "title"},
                                                                {"data": "categoryName", "defaultContent": ""},
                                                                {"data": "size", "defaultContent": ""},
                                                                {"data": "color", "defaultContent": ""},
                                                                {"data": "stockQuantity"}
                                                            ]
                                                        });
                                                    },
                                                    error: function (xhr, status, error) {
                                                        console.error('Error loading low stock cars:', error);
                                                        $('#lowStockTableBody').html('<tr><td colspan="6" class="text-center">Lỗi khi tải dữ liệu</td></tr>');
                                                    }
                                                });
                                            });

                                            $('#exportLowStockBtn').click(function () {
                                                const table = document.getElementById('lowStockTable');
                                                const wb = XLSX.utils.table_to_book(table, {sheet: "Sheet1"});
                                                XLSX.writeFile(wb, 'low_stock_cars.xlsx');
                                            });
                                        });
            </script>

    </body>
</html>
