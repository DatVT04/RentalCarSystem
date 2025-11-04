<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer - Thuê Xe Uy Tín</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
        }

        .footer-container {
            background: linear-gradient(135deg, #1a1f2e 0%, #252A37 100%);
            color: white;
            padding: 50px 0 20px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            flex-wrap: wrap;
            padding: 0 20px;
        }

        .footer-section {
            width: 23%;
            margin-bottom: 30px;
        }

        .footer-section h3 {
            color: white;
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
            font-size: 18px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .footer-section h3:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background: linear-gradient(to right, #1E88E5, #42A5F5);
            border-radius: 2px;
        }

        .footer-section ul {
            list-style: none;
            padding: 0;
        }

        .footer-section ul li {
            margin-bottom: 12px;
            color: #b0b0b0;
            transition: all 0.3s;
        }

        .footer-section ul li:hover {
            color: white;
            transform: translateX(5px);
        }

        .footer-section ul li i {
            margin-right: 10px;
            color: #1E88E5;
            width: 20px;
        }

        .footer-section ul li a {
            color: #b0b0b0;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section ul li a:hover {
            color: #1E88E5;
        }

        .company-logo {
            max-width: 150px;
            margin-bottom: 15px;
            filter: brightness(1.1);
        }

        .social-icons {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            margin-top: 15px;
        }

        .social-icons a {
            color: white;
            background: rgba(255, 255, 255, 0.1);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s;
            font-size: 18px;
            backdrop-filter: blur(10px);
        }

        .social-icons a:hover {
            background: #1E88E5;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(30, 136, 229, 0.4);
        }

        .footer-map {
            width: 100%;
            height: 220px;
            border-radius: 12px;
            overflow: hidden;
            margin-top: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            border: 2px solid rgba(255, 255, 255, 0.1);
        }

        .footer-map iframe {
            width: 100%;
            height: 100%;
            border: none;
        }

        .footer-bottom {
            text-align: center;
            padding: 20px 0;
            margin-top: 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #888;
        }

        .highlight {
            color: #1E88E5;
            font-weight: bold;
        }

        @media (max-width: 992px) {
            .footer-section {
                width: 48%;
            }
        }

        @media (max-width: 768px) {
            .footer-section {
                width: 100%;
            }

            .footer-content {
                padding: 0 15px;
            }
        }
    </style>
</head>
<body>
    <footer class="footer-container">
        <div class="footer-content">
            <!-- Thông tin công ty -->
            <div class="footer-section">
                <h3>Về Chúng Tôi</h3>
               
                <ul>
                    <li><i class="fas fa-building"></i> Công ty TNHH Thuê Xe Uy Tín</li>
                    <li><i class="fas fa-certificate"></i> Giấy phép KD: 0123456789</li>
                    <li><i class="fas fa-calendar-check"></i> Thành lập: 2025</li>
                    <li><i class="fas fa-award"></i> Hơn 1.000 khách hàng tin tùng</li>
                </ul>
            </div>

            <!-- Thông tin liên hệ -->
            <div class="footer-section">
                <h3>Liên Hệ</h3>
                <ul>
                    <li><i class="fas fa-map-marker-alt"></i> 123 Đường Láng, Đống Đa, Hà Nội</li>
                    <li><i class="fas fa-phone"></i> Hotline: <a href="tel:0123456789">0778395957</a></li>
                    <li><i class="fas fa-envelope"></i> Email: <a href="mailto:info@thuexe.vn">info@thuexe.vn</a></li>
                    <li><i class="fas fa-clock"></i> Giờ làm việc: 24/7</li>
                    <li><i class="fas fa-headset"></i> Hỗ trợ khách hàng: 24/7</li>
                </ul>
            </div>

            <!-- Dịch vụ -->
            <div class="footer-section">
                <h3>Dịch Vụ</h3>
                <ul>
                    <li><i class="fas fa-car"></i> <a href="#">Thuê xe tự lái</a></li>
                    <li><i class="fas fa-user-tie"></i> <a href="#">Thuê xe có lái</a></li>
                    <li><i class="fas fa-plane"></i> <a href="#">Đưa đón sân bay</a></li>
                    <li><i class="fas fa-calendar-alt"></i> <a href="#">Thuê xe dài hạn</a></li>
                    <li><i class="fas fa-briefcase"></i> <a href="#">Xe doanh nghiệp</a></li>
                    <li><i class="fas fa-ring"></i> <a href="#">Xe cưới hỏi</a></li>
                </ul>
                
                <h3 style="margin-top: 25px;">Mạng Xã Hội</h3>
                <div class="social-icons">
                    <a href="https://facebook.com" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://instagram.com" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="https://youtube.com" target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a>
                    <a href="https://zalo.me" target="_blank" title="Zalo"><i class="fas fa-comment-dots"></i></a>
                    <a href="https://tiktok.com" target="_blank" title="TikTok"><i class="fab fa-tiktok"></i></a>
                    <a href="tel:0778395957" title="Gọi ngay"><i class="fas fa-phone-alt"></i></a>
                </div>
            </div>

            <!-- Bản đồ -->
            <div class="footer-section">
                <h3>Địa Chỉ Cửa Hàng</h3>
                <div class="footer-map">
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0969367647567!2d105.81638331533427!3d21.028810993076816!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab86cdc47219%3A0x3a7a5b5f4d8e9c0!2zxJDGsOG7nW5nIEzDoW5nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1699999999999!5m2!1svi!2s" 
                        allowfullscreen="" 
                        loading="lazy" 
                        referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>
                <ul style="margin-top: 15px; font-size: 13px;">
                    <li><i class="fas fa-map-signs"></i> Ngay gần Chợ Láng</li>
                    <li><i class="fas fa-subway"></i> Cách Metro Đống Đa 500m</li>
                </ul>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; 2025 <span class="highlight">Thuê Xe Uy Tín</span>. All rights reserved. | Thiết kế bởi <span class="highlight">VTĐ</span></p>
        </div>
    </footer>
</body>
</html>