<%-- 
    Document   : homepage
    Created on : Feb 18, 2025, 12:13:18 AM
    Author     : VuxD4t
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thuê Xe Ô Tô - Dịch Vụ Cho Thuê Xe Uy Tín</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Swiper CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Custom CSS -->
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
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #fff;
                color: var(--text-dark);
                line-height: 1.6;
                padding-top: 80px;
            }

            /* Hero Carousel */
            .hero-carousel {
                position: relative;
                margin-bottom: 60px;
                border-radius: 0;
                overflow: hidden;
            }

            .hero-carousel .carousel-item {
                height: 600px;
                position: relative;
            }

            .hero-carousel .carousel-item img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .hero-carousel .carousel-item::after {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: linear-gradient(135deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.3) 100%);
            }

            .hero-carousel .carousel-caption {
                position: absolute;
                bottom: 30%;
                left: 10%;
                right: 10%;
                text-align: left;
                z-index: 10;
                background: transparent;
                padding: 0;
            }

            .hero-carousel .carousel-caption h1 {
                font-size: 3.5rem;
                font-weight: 800;
                text-shadow: 2px 2px 8px rgba(0,0,0,0.5);
                margin-bottom: 20px;
                animation: fadeInUp 1s ease;
            }

            .hero-carousel .carousel-caption p {
                font-size: 1.5rem;
                text-shadow: 1px 1px 4px rgba(0,0,0,0.5);
                margin-bottom: 30px;
                animation: fadeInUp 1.2s ease;
            }

            .hero-carousel .btn-hero {
                padding: 15px 40px;
                font-size: 1.1rem;
                font-weight: 600;
                border-radius: 50px;
                background: var(--primary-color);
                color: white;
                border: none;
                transition: all 0.3s;
                animation: fadeInUp 1.4s ease;
                box-shadow: 0 4px 15px rgba(30, 136, 229, 0.4);
            }

            .hero-carousel .btn-hero:hover {
                background: var(--secondary-color);
                transform: translateY(-3px);
                box-shadow: 0 6px 20px rgba(30, 136, 229, 0.6);
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(30px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            /* Features Section */
            .features-section {
                padding: 60px 0;
                background: var(--bg-light);
            }

            .feature-card {
                text-align: center;
                padding: 40px 20px;
                background: white;
                border-radius: 15px;
                transition: all 0.3s;
                box-shadow: 0 5px 15px rgba(0,0,0,0.08);
                height: 100%;
            }

            .feature-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 30px rgba(0,0,0,0.15);
            }

            .feature-card i {
                font-size: 3.5rem;
                color: var(--primary-color);
                margin-bottom: 20px;
            }

            .feature-card h3 {
                font-size: 1.3rem;
                font-weight: 700;
                margin-bottom: 15px;
                color: var(--text-dark);
            }

            .feature-card p {
                color: var(--text-light);
                font-size: 0.95rem;
            }

            /* Section Title */
            .section-title {
                text-align: center;
                margin-bottom: 50px;
            }

            .section-title h2 {
                font-size: 2.5rem;
                font-weight: 800;
                color: var(--text-dark);
                position: relative;
                display: inline-block;
                padding-bottom: 15px;
            }

            .section-title h2::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                width: 80px;
                height: 4px;
                background: var(--primary-color);
                border-radius: 2px;
            }

            .section-title p {
                color: var(--text-light);
                font-size: 1.1rem;
                margin-top: 15px;
            }

            /* Product Card */
            .product-card {
                border: none;
                border-radius: 20px;
                overflow: hidden;
                box-shadow: 0 8px 20px rgba(0,0,0,0.1);
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

            .product-card .img-wrapper {
                position: relative;
                overflow: hidden;
                height: 280px;
            }

            .product-card .thumbnail-img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s ease;
            }

            .product-card:hover .thumbnail-img {
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

            .product-card .card-body {
                padding: 25px;
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

            /* Swiper */
            .productSwiper {
                padding: 30px 0 60px;
            }

            .swiper-button-next,
            .swiper-button-prev {
                color: white;
                background: var(--primary-color);
                width: 50px;
                height: 50px;
                border-radius: 50%;
                box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            }

            .swiper-button-next:hover,
            .swiper-button-prev:hover {
                background: var(--secondary-color);
            }

            .swiper-button-next:after,
            .swiper-button-prev:after {
                font-size: 1.3rem;
            }

            .swiper-pagination-bullet {
                width: 12px;
                height: 12px;
                background: #ccc;
            }

            .swiper-pagination-bullet-active {
                background: var(--primary-color);
                width: 30px;
                border-radius: 6px;
            }

            /* Category Section */
            .category-section {
                padding: 80px 0;
                background: white;
            }

            .category-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
                gap: 30px;
                margin-top: 40px;
            }

            /* Stats Section */
            .stats-section {
                padding: 80px 0;
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
                color: white;
            }

            .stat-card {
                text-align: center;
                padding: 30px;
            }

            .stat-card i {
                font-size: 3rem;
                margin-bottom: 20px;
                opacity: 0.9;
            }

            .stat-card h3 {
                font-size: 2.5rem;
                font-weight: 800;
                margin-bottom: 10px;
            }

            .stat-card p {
                font-size: 1.1rem;
                opacity: 0.9;
            }

            /* CTA Section */
            .cta-section {
                padding: 100px 0;
                background: linear-gradient(135deg, rgba(30, 136, 229, 0.05) 0%, rgba(66, 165, 245, 0.05) 100%);
                text-align: center;
            }

            .cta-section h2 {
                font-size: 2.5rem;
                font-weight: 800;
                margin-bottom: 20px;
                color: var(--text-dark);
            }

            .cta-section p {
                font-size: 1.2rem;
                color: var(--text-light);
                margin-bottom: 40px;
            }

            .cta-buttons {
                display: flex;
                gap: 20px;
                justify-content: center;
                flex-wrap: wrap;
            }

            .btn-cta-primary {
                padding: 15px 40px;
                font-size: 1.1rem;
                font-weight: 600;
                border-radius: 50px;
                background: var(--primary-color);
                color: white;
                border: none;
                transition: all 0.3s;
                box-shadow: 0 4px 15px rgba(30, 136, 229, 0.3);
            }

            .btn-cta-primary:hover {
                background: var(--secondary-color);
                transform: translateY(-3px);
                box-shadow: 0 6px 20px rgba(30, 136, 229, 0.5);
            }

            .btn-cta-secondary {
                padding: 15px 40px;
                font-size: 1.1rem;
                font-weight: 600;
                border-radius: 50px;
                background: white;
                color: var(--primary-color);
                border: 2px solid var(--primary-color);
                transition: all 0.3s;
            }

            .btn-cta-secondary:hover {
                background: var(--primary-color);
                color: white;
                transform: translateY(-3px);
            }

            /* Back to Top */
            .back-to-top {
                position: fixed;
                bottom: 30px;
                right: 30px;
                background: var(--primary-color);
                color: white;
                width: 50px;
                height: 50px;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                opacity: 0;
                visibility: hidden;
                transition: all 0.3s ease;
                border: none;
                box-shadow: 0 4px 15px rgba(30, 136, 229, 0.4);
                z-index: 999;
            }

            .back-to-top.show {
                opacity: 1;
                visibility: visible;
            }

            .back-to-top:hover {
                background: var(--secondary-color);
                transform: translateY(-5px);
            }

            /* Responsive */
            @media (max-width: 768px) {
                .hero-carousel .carousel-item {
                    height: 400px;
                }

                .hero-carousel .carousel-caption h1 {
                    font-size: 2rem;
                }

                .hero-carousel .carousel-caption p {
                    font-size: 1rem;
                }

                .section-title h2 {
                    font-size: 1.8rem;
                }

                .product-card .img-wrapper {
                    height: 220px;
                }

                .stat-card h3 {
                    font-size: 2rem;
                }
            }
        </style>
    </head>
    <body>
        <!-- Include header -->
        <jsp:include page="header.jsp" />

        <!-- Hero Carousel -->
        <div id="mainCarousel" class="carousel slide hero-carousel" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://photo.znews.vn/Uploaded/aobhuua/2025_07_01/The_Mansour_Ojjeh_Collection_McLaren_11.jpg" alt="Banner 1">
                    <div class="carousel-caption">
                        <h1>Thuê Xe Ô Tô Chất Lượng Cao</h1>
                        <p>Đa dạng dòng xe - Giá tốt nhất - Giao xe nhanh chóng</p>
                        <a href="listproduct" class="btn btn-hero">Xem Dòng Xe</a>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="https://photo.znews.vn/Uploaded/aobhuua/2025_10_17/The_Tailored_for_Speed_Collection_11.jpg" alt="Banner 2">
                    <div class="carousel-caption">
                        <h1>Ưu Đãi Lên Đến 30%</h1>
                        <p>Giảm giá đặc biệt cho thuê dài ngày và đặt xe online</p>
                        <a href="listproduct" class="btn btn-hero">Đặt Xe Ngay</a>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="https://icdn.dantri.com.vn/thumb_w/960/2019/08/19/rollsroyceghostwraithdawnpebblebeach-2019-collection-002-1566203057660.jpg" alt="Banner 3">
                    <div class="carousel-caption">
                        <h1>Dòng Xe Đời Mới Nhất</h1>
                        <p>Xe 4-7 chỗ, tự lái hoặc có tài xế, phục vụ 24/7</p>
                        <a href="listproduct" class="btn btn-hero">Khám Phá Ngay</a>
                    </div>
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <!-- Features Section -->
        <section class="features-section">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6">
                        <div class="feature-card">
                            <i class="fas fa-car-side"></i>
                            <h3>Đa Dạng Dòng Xe</h3>
                            <p>Hơn 500+ xe từ 4-7 chỗ, đáp ứng mọi nhu cầu</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="feature-card">
                            <i class="fas fa-shield-alt"></i>
                            <h3>Bảo Hiểm 100%</h3>
                            <p>Xe được bảo hiểm toàn diện, an tâm tuyệt đối</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="feature-card">
                            <i class="fas fa-headset"></i>
                            <h3>Hỗ Trợ 24/7</h3>
                            <p>Đội ngũ hỗ trợ nhiệt tình, sẵn sàng phục vụ</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="feature-card">
                            <i class="fas fa-tag"></i>
                            <h3>Giá Cả Hợp Lý</h3>
                            <p>Cam kết giá tốt nhất, nhiều ưu đãi hấp dẫn</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured Products -->
        <section class="category-section">
            <div class="container">
                <div class="section-title">
                    <h2>Xe Mới Cập Bến</h2>
                    <p>Những dòng xe mới nhất, chất lượng cao được nhiều khách hàng tin tưởng</p>
                </div>

                <div class="swiper productSwiper">
                    <div class="swiper-wrapper">
                        <c:forEach items="${featuredProducts}" var="product">
                            <div class="swiper-slide">
                                <a href="productdetail?id=${product.id}" class="text-decoration-none">
                                    <div class="card product-card">
                                        <div class="img-wrapper">
                                            <img src="${product.thumbnail}" class="thumbnail-img" alt="${product.title}">
                                            <span class="product-badge">Mới</span>
                                        </div>
                                        <div class="card-body">
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
                            </div>
                        </c:forEach>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <!-- Categories -->
        <c:forEach items="${level1Categories}" var="category">
            <section class="category-section" style="background: var(--bg-light);">
                <div class="container">
                    <div class="section-title" style="display: flex; justify-content: space-between; align-items: center;">
                        <h2>${category.name}</h2>
                        <a href="listproduct?category=${category.id}" class="btn btn-cta-secondary">
                            Xem Tất Cả <i class="fas fa-arrow-right ms-2"></i>
                        </a>
                    </div>

                    <div class="row g-4">
                        <c:forEach items="${productsByCategory[category.id]}" var="product" varStatus="status">
                            <c:if test="${status.index < 4}">
                                <div class="col-lg-3 col-md-6">
                                    <a href="productdetail?id=${product.id}" class="text-decoration-none">
                                        <div class="card product-card">
                                            <div class="img-wrapper">
                                                <img src="${product.thumbnail}" class="thumbnail-img" alt="${product.title}">
                                            </div>
                                            <div class="card-body">
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
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </section>
        </c:forEach>

        <!-- Stats Section -->
        <section class="stats-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card">
                            <i class="fas fa-car"></i>
                            <h3>500+</h3>
                            <p>Xe Chất Lượng Cao</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card">
                            <i class="fas fa-users"></i>
                            <h3>1,000+</h3>
                            <p>Khách Hàng Tin Tưởng</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card">
                            <i class="fas fa-map-marker-alt"></i>
                            <h3>50+</h3>
                            <p>Địa Điểm Giao Xe</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card">
                            <i class="fas fa-star"></i>
                            <h3>4.9/5</h3>
                            <p>Đánh Giá Trung Bình</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="cta-section">
            <div class="container">
                <h2>Sẵn Sàng Bắt Đầu Hành Trình?</h2>
                <p>Đặt xe ngay hôm nay và nhận ưu đãi đặc biệt cho khách hàng mới</p>
                <div class="cta-buttons">
                    <a href="listproduct" class="btn btn-cta-primary">Đặt Xe Ngay</a>
                    <a href="tel:0778395957" class="btn btn-cta-secondary">Gọi: 0778395957</a>
                </div>
            </div>
        </section>

        <!-- Chat Widget -->
        <jsp:include page="chat.jsp" />

        <!-- Back to Top -->
        <button id="backToTopButton" class="back-to-top">
            <i class="fas fa-arrow-up"></i>
        </button>

        <!-- Footer -->
        <jsp:include page="footer.jsp" />

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.3.2/swiper-bundle.min.js"></script>

        <script>
            // Swiper initialization
            var swiper = new Swiper(".productSwiper", {
                slidesPerView: 1,
                spaceBetween: 30,
                loop: true,
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                },
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                autoplay: {
                    delay: 4000,
                    disableOnInteraction: false,
                },
                breakpoints: {
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 20,
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 25,
                    },
                    1024: {
                        slidesPerView: 4,
                        spaceBetween: 30,
                    },
                },
            });

            // Carousel initialization
            document.addEventListener('DOMContentLoaded', function () {
                const carousel = document.getElementById('mainCarousel');
                const carouselInstance = new bootstrap.Carousel(carousel, {
                    interval: 5000,
                    pause: 'hover',
                    wrap: true,
                    keyboard: true,
                    touch: true
                });

                // Save carousel index
                const savedSlideIndex = localStorage.getItem('mainCarouselIndex');
                if (savedSlideIndex !== null) {
                    carouselInstance.to(parseInt(savedSlideIndex));
                }

                carousel.addEventListener('slide.bs.carousel', function (event) {
                    localStorage.setItem('mainCarouselIndex', event.to);
                });

                // Back to top button
                const backToTopButton = document.getElementById('backToTopButton');

                window.addEventListener('scroll', function () {
                    if (window.pageYOffset > 300) {
                        backToTopButton.classList.add('show');
                    } else {
                        backToTopButton.classList.remove('show');
                    }
                });

                backToTopButton.addEventListener('click', function () {
                    window.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });
                });

                // Smooth scroll for anchor links
                document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                    anchor.addEventListener('click', function (e) {
                        e.preventDefault();
                        const target = document.querySelector(this.getAttribute('href'));
                        if (target) {
                            target.scrollIntoView({
                                behavior: 'smooth',
                                block: 'start'
                            });
                        }
                    });
                });

                // Animate stats on scroll
                const observerOptions = {
                    threshold: 0.5,
                    rootMargin: '0px'
                };

                const observer = new IntersectionObserver((entries) => {
                    entries.forEach(entry => {
                        if (entry.isIntersecting) {
                            entry.target.style.opacity = '1';
                            entry.target.style.transform = 'translateY(0)';
                        }
                    });
                }, observerOptions);

                document.querySelectorAll('.stat-card, .feature-card').forEach(card => {
                    card.style.opacity = '0';
                    card.style.transform = 'translateY(20px)';
                    card.style.transition = 'all 0.6s ease';
                    observer.observe(card);
                });
            });

            // Prevent default on rent buttons
            document.addEventListener('click', function (e) {
                if (e.target.classList.contains('btn-rent')) {
                    e.preventDefault();
                    const link = e.target.closest('a');
                    if (link) {
                        window.location.href = link.href;
                    }
                }
            });
        </script>
    </body>
</html>