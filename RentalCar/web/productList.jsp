<%-- 
    Document   : productList
    Created on : Feb 24, 2025, 1:40:02 AM
    Author     : tphon
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>${categoryName != null ? categoryName : 'Tất Cả Xe'} - Thuê Xe Ô Tô</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            :root {
                --primary-color: #1E88E5;
                --secondary-color: #0D47A1;
                --accent-color: #42A5F5;
                --text-dark: #2c3e50;
                --text-light: #666;
                --bg-light: #f8f9fa;
                --success-color: #4CAF50;
                --warning-color: #FF9800;
                --card-shadow: 0 8px 20px rgba(0,0,0,0.1);
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: var(--bg-light);
                color: var(--text-dark);
                line-height: 1.6;
                padding-top: 80px;
            }

            /* Container and Layout */
            .container {
                max-width: 1400px;
                padding: 2rem;
            }

            /* Page Header */
            .page-header {
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
                padding: 60px 0;
                margin-bottom: 50px;
                color: white;
                text-align: center;
                border-radius: 0;
            }

            .page-header h1 {
                font-size: 2.5rem;
                font-weight: 800;
                margin-bottom: 15px;
                text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
            }

            .page-header p {
                font-size: 1.1rem;
                opacity: 0.95;
            }

            /* Sidebar Filters */
            .sidebar-filters {
                background: white;
                border-radius: 15px;
                box-shadow: var(--card-shadow);
                padding: 30px;
                position: sticky;
                top: 100px;
                transition: all 0.3s ease;
            }

            .sidebar-filters:hover {
                box-shadow: 0 15px 35px rgba(0,0,0,0.15);
            }

            .filter-section {
                margin-bottom: 10px;
            }

            .filter-title {
                font-weight: 700;
                color: var(--text-dark);
                font-size: 1.1rem;
                margin-bottom: 20px;
                padding-bottom: 12px;
                border-bottom: 3px solid var(--primary-color);
            }

            /* Price Range Inputs */
            .price-range {
                display: flex;
                gap: 10px;
                align-items: center;
                margin-bottom: 20px;
            }

            .price-input {
                background-color: #f9f9f9;
                border: 2px solid #e0e0e0;
                border-radius: 8px;
                padding: 10px;
                transition: all 0.3s ease;
                font-size: 0.95rem;
            }

            .price-input:focus {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 3px rgba(30, 136, 229, 0.1);
                background-color: white;
                outline: none;
            }

            .price-radio-options {
                margin-top: 15px;
            }

            .radio-option {
                margin-bottom: 12px;
                display: flex;
                align-items: center;
                padding: 8px 12px;
                border-radius: 8px;
                transition: all 0.3s ease;
                cursor: pointer;
            }

            .radio-option:hover {
                background-color: rgba(30, 136, 229, 0.05);
            }

            .radio-option input[type="radio"] {
                cursor: pointer;
                width: 18px;
                height: 18px;
                accent-color: var(--primary-color);
            }

            .radio-option label {
                margin-left: 10px;
                cursor: pointer;
                font-size: 0.95rem;
                color: var(--text-light);
                margin-bottom: 0;
            }

            .radio-option input[type="radio"]:checked + label {
                color: var(--primary-color);
                font-weight: 600;
            }

            /* Sort Select */
            .form-select {
                border: 2px solid #e0e0e0;
                border-radius: 8px;
                padding: 10px;
                transition: all 0.3s ease;
                font-size: 0.95rem;
            }

            .form-select:focus {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 3px rgba(30, 136, 229, 0.1);
                outline: none;
            }

            /* Apply Filter Button */
            .apply-filters-btn {
                width: 100%;
                padding: 14px;
                background: var(--primary-color);
                color: white;
                border: none;
                border-radius: 10px;
                font-weight: 600;
                font-size: 1rem;
                transition: all 0.3s ease;
                margin-top: 25px;
                box-shadow: 0 4px 15px rgba(30, 136, 229, 0.3);
            }

            .apply-filters-btn:hover {
                background: var(--secondary-color);
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(30, 136, 229, 0.5);
            }

            /* Product Grid */
            .product-grid {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 30px;
            }

            /* Product Card - Đồng bộ với homepage */
            .product-card {
                border: none;
                border-radius: 20px;
                overflow: hidden;
                box-shadow: var(--card-shadow);
                transition: all 0.4s ease;
                background: white;
                height: 100%;
                display: flex;
                flex-direction: column;
            }

            .product-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            }

            .img-wrapper {
                position: relative;
                overflow: hidden;
                height: 280px;
            }

            .product-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s ease;
            }

            .product-card:hover .product-image {
                transform: scale(1.15);
            }

            .product-badge {
                position: absolute;
                top: 15px;
                right: 15px;
                background: var(--primary-color);
                color: white;
                padding: 8px 20px;
                border-radius: 25px;
                font-size: 0.85rem;
                font-weight: 600;
                z-index: 2;
                box-shadow: 0 3px 10px rgba(30, 136, 229, 0.4);
            }

            .product-info {
                padding: 25px;
                background: white;
                flex-grow: 1;
                display: flex;
                flex-direction: column;
            }

            .product-title {
                font-size: 1.2rem;
                font-weight: 700;
                color: var(--text-dark);
                margin-bottom: 15px;
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                min-height: 60px;
            }

            .product-specs {
                display: flex;
                justify-content: space-between;
                margin-bottom: 15px;
                padding: 15px 0;
                border-top: 1px solid #eee;
                border-bottom: 1px solid #eee;
            }

            .spec-item {
                display: flex;
                align-items: center;
                gap: 8px;
                font-size: 0.9rem;
                color: var(--text-light);
            }

            .spec-item i {
                color: var(--primary-color);
            }

            .product-price {
                color: var(--primary-color);
                font-size: 1.6rem;
                font-weight: 800;
                margin-bottom: 20px;
                margin-top: auto;
            }

            .product-price span {
                font-size: 0.9rem;
                color: var(--text-light);
                font-weight: 400;
            }

            .btn-rent {
                width: 100%;
                padding: 12px;
                background: var(--primary-color);
                color: white;
                border: none;
                border-radius: 10px;
                font-weight: 600;
                transition: all 0.3s;
                font-size: 1rem;
            }

            .btn-rent:hover {
                background: var(--secondary-color);
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(30, 136, 229, 0.3);
            }

            /* No Products */
            .no-products {
                background: white;
                border-radius: 20px;
                box-shadow: var(--card-shadow);
                padding: 80px 40px;
                text-align: center;
            }

            .no-products i {
                color: var(--primary-color);
                font-size: 100px;
                margin-bottom: 30px;
                opacity: 0.7;
            }

            .no-products h3 {
                color: var(--text-dark);
                font-size: 1.8rem;
                font-weight: 700;
                margin-bottom: 15px;
            }

            .no-products p {
                color: var(--text-light);
                font-size: 1.1rem;
            }

            /* Pagination */
            .pagination {
                justify-content: center;
                margin-top: 60px;
            }

            .page-item {
                margin: 0 5px;
            }

            .page-link {
                color: var(--primary-color);
                border: 2px solid #e0e0e0;
                border-radius: 8px;
                padding: 10px 18px;
                transition: all 0.3s ease;
                font-weight: 600;
            }

            .page-link:hover {
                background-color: var(--primary-color);
                border-color: var(--primary-color);
                color: white;
                transform: translateY(-2px);
            }

            .page-item.active .page-link {
                background-color: var(--primary-color);
                border-color: var(--primary-color);
                box-shadow: 0 4px 15px rgba(30, 136, 229, 0.3);
            }

            /* Responsive */
            @media (max-width: 992px) {
                .sidebar-filters {
                    position: static;
                    margin-bottom: 40px;
                }

                .product-grid {
                    grid-template-columns: repeat(2, 1fr);
                    gap: 25px;
                }
            }

            @media (max-width: 768px) {
                .page-header h1 {
                    font-size: 2rem;
                }

                .product-grid {
                    grid-template-columns: 1fr;
                    gap: 20px;
                }

                .price-range {
                    flex-direction: column;
                }

                .img-wrapper {
                    height: 220px;
                }
            }

            @media (max-width: 576px) {
                .container {
                    padding: 1rem;
                }

                .page-header {
                    padding: 40px 20px;
                }
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />


        <div class="container">
            <div class="row">
                <!-- Sidebar Filters -->
                <div class="col-lg-3">
                    <div class="sidebar-filters">
                        <form action="listproduct" method="GET" id="filterForm">
                            <input type="hidden" name="category" value="${category}">

                            <!-- Price Range Filter -->
                            <div class="filter-section">
                                <div class="filter-title">
                                    <i class="fas fa-money-bill-wave me-2"></i>Khoảng Giá
                                </div>
                                <div class="d-flex flex-column">
                                    <div class="price-range">
                                        <input type="text" id="minPrice" name="minPrice"
                                               class="form-control price-input" placeholder="Thấp nhất" value="${minPrice}">
                                        <span>-</span>
                                        <input type="text" id="maxPrice" name="maxPrice"
                                               class="form-control price-input" placeholder="Cao nhất" value="${maxPrice}">
                                    </div>

                                    <!-- Price Range Radio Options -->
                                    <div class="price-radio-options">
                                        <div class="radio-option">
                                            <input type="radio" id="price_all" name="priceRange" value="" class="form-check-input"
                                                   ${empty minPrice && empty maxPrice ? 'checked' : ''}>
                                            <label for="price_all" class="form-check-label">Tất cả mức giá</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_under_500k" name="priceRange" value="0-500000" class="form-check-input"
                                                   ${minPrice == '0' && maxPrice == '500000' ? 'checked' : ''}>
                                            <label for="price_under_500k" class="form-check-label">Dưới 500.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_500k_1000k" name="priceRange" value="500000-1000000" class="form-check-input"
                                                   ${minPrice == '500000' && maxPrice == '1000000' ? 'checked' : ''}>
                                            <label for="price_500k_1000k" class="form-check-label">500.000đ - 1.000.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_1000k_1500k" name="priceRange" value="1000000-1500000" class="form-check-input"
                                                   ${minPrice == '1000000' && maxPrice == '1500000' ? 'checked' : ''}>
                                            <label for="price_1000k_1500k" class="form-check-label">1.000.000đ - 1.500.000đ</label>
                                        </div>
                                        <div class="radio-option">
                                            <input type="radio" id="price_over_1500k" name="priceRange" value="1500000-99999000" class="form-check-input"
                                                   ${minPrice == '1500000' ? 'checked' : ''}>
                                            <label for="price_over_1500k" class="form-check-label">Trên 1.500.000đ</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Sorting Filter -->
                            <div class="filter-section">
                                <div class="filter-title">
                                    <i class="fas fa-sort me-2"></i>Sắp Xếp
                                </div>
                                <select name="sortBy" class="form-select">
                                    <option value="">Mặc Định</option>
                                    <option value="price_asc" ${sortBy == 'price_asc' ? 'selected' : ''}>Giá: Thấp đến Cao</option>
                                    <option value="price_desc" ${sortBy == 'price_desc' ? 'selected' : ''}>Giá: Cao đến Thấp</option>
                                    <option value="newest" ${sortBy == 'newest' ? 'selected' : ''}>Xe Mới Nhất</option>
                                </select>
                            </div>

                            <button class="btn apply-filters-btn" type="submit">
                                <i class="fas fa-filter me-2"></i>Áp Dụng Bộ Lọc
                            </button>
                        </form>
                    </div>
                </div>

                <!-- Products Content -->
                <div class="col-lg-9">
                    <!-- Products Grid -->
                    <c:choose>
                        <c:when test="${not empty products}">
                            <div class="product-grid">
                                <c:forEach items="${products}" var="product">
                                    <a href="productdetail?id=${product.id}" class="text-decoration-none">
                                        <div class="card product-card">
                                            <div class="img-wrapper">
                                                <img src="${product.thumbnail}" class="product-image" alt="${product.title}">
                                                <c:if test="${product.isCombo}">
                                                    <span class="product-badge">Combo</span>
                                                </c:if>
                                            </div>
                                            <div class="product-info">
                                                <h5 class="product-title">${product.title}</h5>
                                                <div class="product-specs">
                                                    <%
                                                        java.util.Random rand = new java.util.Random();
                                                        java.util.List<String[]> specList = java.util.Arrays.asList(
                                                            
                                                            new String[]{"fa-cog", rand.nextBoolean() ? "Tự động" : "Số sàn"},  // Random transmission
                                                            new String[]{"fa-gas-pump", rand.nextBoolean() ? "Xăng" : "Dầu"},  // Random fuel type
                                                            new String[]{"fa-bolt", rand.nextBoolean() ? "Điện" : "Hybrid"},  // Random power type
                                                            new String[]{"fa-suitcase-rolling", rand.nextInt(3) + 2 + " vali"},  // Random luggage capacity
                                                            new String[]{"fa-snowflake", "Điều hòa " + (rand.nextBoolean() ? "2 vùng" : "tự động")}  // Random AC info
                                                        );
                                                        java.util.Collections.shuffle(specList);
                                                        for (int i = 0; i < 2; i++) {  // Show 2 random specs per product
                                                            String[] spec = specList.get(i);
                                                    %>
                                                    <div class="spec-item">
                                                        <i class="fas <%= spec[0] %>"></i>
                                                        <span><%= spec[1] %></span>
                                                    </div>
                                                    <%
                                                        }
                                                    %>
                                                </div>
                                                <div class="product-price">
                                                    <fmt:formatNumber value="${product.salePrice}" type="currency" currencySymbol="đ" maxFractionDigits="0"/>
                                                    <span>/ngày</span>
                                                </div>
                                                <button class="btn-rent">Thuê Xe Ngay</button>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="no-products">
                                <i class="fas fa-car-side"></i>
                                <h3>Không Tìm Thấy Xe Phù Hợp</h3>
                                <p>Vui lòng điều chỉnh tiêu chí tìm kiếm hoặc xem tất cả các dòng xe của chúng tôi</p>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <!-- Pagination -->
                    <c:if test="${totalPages > 1}">
                        <nav aria-label="Product pagination">
                            <ul class="pagination">
                                <!-- Previous page -->
                                <c:if test="${currentPage > 1}">
                                    <li class="page-item">
                                        <a class="page-link" href="listproduct?page=${currentPage - 1}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            <i class="fas fa-chevron-left"></i>
                                        </a>
                                    </li>
                                </c:if>

                                <!-- Page numbers -->
                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                                        <a class="page-link" href="listproduct?page=${i}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>

                                <!-- Next page -->
                                <c:if test="${currentPage < totalPages}">
                                    <li class="page-item">
                                        <a class="page-link" href="listproduct?page=${currentPage + 1}&keyword=${keyword}&category=${selectedCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}&sortBy=${sortBy}">
                                            <i class="fas fa-chevron-right"></i>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>
                    </c:if>
                </div>
            </div>
        </div>

        <jsp:include page="chat.jsp" />
        <jsp:include page="footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            function formatNumberInput(input) {
                let value = input.value.replace(/\D/g, '');
                if (value) {
                    value = parseInt(value, 10).toLocaleString('vi-VN');
                    input.value = value;
                } else {
                    input.value = '';
                }
            }

            document.addEventListener('DOMContentLoaded', function () {
                const minPriceInput = document.getElementById('minPrice');
                const maxPriceInput = document.getElementById('maxPrice');

                minPriceInput.addEventListener('input', function () {
                    formatNumberInput(this);
                    if (minPriceInput.value.replace(/\./g, '') > 99999999) {
                        alert('Giới hạn nhập vào là 99.999.999 đ');
                        $('#minPrice').val('99.999.999');
                    }
                });

                maxPriceInput.addEventListener('input', function () {
                    formatNumberInput(this);
                    if (maxPriceInput.value.replace(/\./g, '') > 99999999) {
                        alert('Giới hạn nhập vào là 99.999.999 đ');
                        $('#maxPrice').val('99.999.999');
                    }
                });

                // Prevent default on rent buttons
                document.querySelectorAll('.btn-rent').forEach(button => {
                    button.addEventListener('click', function (e) {
                        e.preventDefault();
                        const link = this.closest('a');
                        if (link) {
                            window.location.href = link.href;
                        }
                    });
                });
            });

            $(document).ready(function () {
                $('input[name="priceRange"]').on('change', function () {
                    if (this.value) {
                        const[min, max] = this.value.split('-');
                        $('#minPrice').val(parseInt(min, 10).toLocaleString('vi-VN'));
                        $('#maxPrice').val(parseInt(max, 10).toLocaleString('vi-VN'));
                    } else {
                        $('#minPrice').val('');
                        $('#maxPrice').val('');
                    }
                });

                $('#minPrice, #maxPrice').on('input', function () {
                    $('input[name="priceRange"]').prop('checked', false);
                });

                $('#maxPrice').on('change', function () {
                    const maxPrice = parseInt($('#maxPrice').val().replace(/\./g, '')) || 0;
                    const minPrice = parseInt($('#minPrice').val().replace(/\./g, '')) || 0;

                    if (maxPrice < minPrice) {
                        alert('Giá tối đa không được nhỏ hơn giá tối thiểu!');
                        $('#maxPrice').val(parseInt(minPrice, 10).toLocaleString('vi-VN'));
                    }
                });
            });
        </script>
    </body>
</html>