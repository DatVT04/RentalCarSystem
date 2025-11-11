<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar">
    <div class="sidebar-header p-3 border-bottom">
        <h5 class="mt-2 mb-3">Quản Lý Tiếp Thị</h5>
    </div>

    <!-- User Profile Section -->
    <div class="user-profile p-3 border-bottom">
        <div class="d-flex align-items-center mb-2">
            <div class="avatar-container me-2">
                <img src="${pageContext.request.contextPath}/${sessionScope.acc.avatar}" alt="Avatar" class="avatar-img rounded-circle"
                     onerror="this.src='https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg'">
            </div>
            <div class="user-info">
                <h6 class="mb-0 text-light">${sessionScope.acc.fullName}</h6>
                <c:choose>
                    <c:when test="${sessionScope.acc.role == 'admin'}">
                        <span class="text-light-50 small">Administrator</span>
                    </c:when>
                    <c:when test="${sessionScope.acc.role == 'owner'}">
                        <span class="text-light-50 small">Owner</span>
                    </c:when>
                </c:choose>
            </div>
        </div>
        <!-- Profile and Logout Buttons -->
        <div class="d-flex" style="margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/profile" class="btn btn-outline-light btn-sm me-2 flex-grow-1">
                <i class="fas fa-user-cog me-1"></i> Hồ sơ
            </a>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger btn-sm flex-grow-1">
                <i class="fas fa-sign-out-alt me-1"></i> Đăng xuất
            </a>
        </div>
    </div>

    <!-- Sidebar Menu -->
    <ul class="sidebar-menu list-unstyled p-0 mt-3">

        
        <li class="menu-item p-2">
            <a href="#carSubmenu" data-bs-toggle="collapse" class="text-decoration-none text-light d-flex align-items-center justify-content-between collapsed">
                <div>
                    <i class="fas fa-box me-2"></i>
                    Quản lý xe
                </div>
                <i class="fas fa-chevron-down ms-auto"></i>
            </a>
            <ul class="submenu collapse list-unstyled ms-3 mt-1" id="carSubmenu">
                <li class="submenu-item py-1">
                    <a href="${pageContext.request.contextPath}/owner/carlist" class="text-decoration-none text-light">Danh sách xe</a>
                </li>
                <li class="submenu-item py-1">
                    <a href="${pageContext.request.contextPath}/owner/inventorylist" class="text-decoration-none text-light">Quản lý kho xe</a>
                </li>
            </ul>
        </li>

        <li class="menu-item p-2">
            <a href="${pageContext.request.contextPath}/owner/feedbacklist" class="text-decoration-none text-light d-flex align-items-center">
                <i class="fas fa-comments me-2"></i>
                Đánh giá xe
            </a>
        </li>
        
        <c:if test="${sessionScope.acc.role == 'owner'}">
        <li class="menu-item p-2">
            <a href="${pageContext.request.contextPath}/owner/chatlist" class="text-decoration-none text-light d-flex align-items-center">
                <i class="fas fa-user-cog me-2"></i>
                Chăm sóc khách hàng  
<!--                <span class="badge bg-danger rounded-pill">3</span>-->
            </a>
        </li>
        </c:if>

        

        <li class="menu-item p-2">
            <a href="${pageContext.request.contextPath}/home" class="text-decoration-none text-light d-flex align-items-center">
                <i class="fas fa-home me-2 "></i>
                Trang chủ
            </a>
        </li>

        <c:if test="${sessionScope.acc.role == 'admin'}">
            <li class="menu-item p-2">
                <a href="${pageContext.request.contextPath}/admin/userlists" class="text-decoration-none text-light d-flex align-items-center">
                    <i class="fas fa-arrow-left me-2"></i>
                    Quay lại trang Quản trị
                </a>
            </li>
        </c:if>
    </ul>

    <!-- No separate logout section as it's been moved to the User Profile section -->
</div>

<style>
    /* Giữ nguyên style hiện tại */
    .sidebar {
        position: fixed;
        left: 0;
        top: 0;
        bottom: 0;
        width: 250px;
        background: #2c3e50;
        color: #ecf0f1;
        transition: all 0.3s;
        z-index: 1000;
        overflow-y: auto;
        display: flex;
        flex-direction: column;
        box-shadow: 2px 0 8px rgba(0,0,0,0.15);
    }

    .sidebar-header {
        background-color: #1a2530;
        border-bottom: 1px solid rgba(255,255,255,0.1);
    }

    .user-profile {
        background-color: rgba(0,0,0,0.1);
    }

    .avatar-container {
        width: 40px;
        height: 40px;
        overflow: hidden;
        border: 2px solid rgba(255,255,255,0.3);
        border-radius: 50%
    }

    .avatar-img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .text-light-50 {
        color: rgba(255,255,255,0.7);
    }

    .user-info {
        overflow: hidden;
    }

    .user-info h6 {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 170px;
    }

    .sidebar .menu-item {
        position: relative;
        transition: all 0.3s;
        border-radius: 5px;
        margin: 0 5px;
    }

    .sidebar .menu-item:hover {
        background: #34495e;
    }

    .sidebar .menu-item.active {
        background: #34495e;
        border-left: 3px solid #3498db;
    }

    .sidebar .submenu-item {
        padding-left: 10px;
        border-radius: 3px;
    }

    .sidebar .submenu-item:hover {
        background: #34495e;
    }

    .submenu-item.active {
        background-color: #34495e;
        border-left: 3px solid #3498db;
    }

    .submenu-item.active a {
        padding-left: 7px;
        font-weight: 500;
    }

    .notification-badge {
        background-color: #e74c3c;
        color: white;
        padding: 2px 6px;
        border-radius: 50%;
        font-size: 0.7rem;
    }

    @media (max-width: 768px) {
        .sidebar {
            margin-left: -250px;
        }
        .sidebar.active {
            margin-left: 0;
        }
    }
</style>

<!-- JavaScript để đánh dấu menu item active -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Get the current page URL path
        const currentPath = window.location.pathname;

        // Reset all active states first
        document.querySelectorAll('.menu-item').forEach(item => {
            item.classList.remove('active');
        });

        document.querySelectorAll('.submenu').forEach(submenu => {
            submenu.classList.remove('show');
        });

        // Handle car management section
        if (currentPath.includes('/owner/carlist') ||
                currentPath.includes('/owner/inventorylist') ||
                currentPath.includes('/owner/addcar') ||
                currentPath.includes('/owner/editcar') ||
                currentPath.includes('/owner/deletecar') ||
                currentPath.includes('/owner/inventoryDetail')) {

            // Show car submenu
            const carSubmenu = document.getElementById('carSubmenu');
            if (carSubmenu) {
                carSubmenu.classList.add('show');
            }

            // Highlight parent menu item
            const carMenuItem = document.querySelector('a[href="#carSubmenu"]').closest('.menu-item');
            if (carMenuItem) {
                MenuItem.classList.add('active');
            }

            // Highlight specific submenu item based on current page
            if (currentPath.includes('/owner/carlist')) {
                const carListItem = document.querySelector('a[href$="/owner/carlist"]').closest('.submenu-item');
                if (carListItem) {
                    carListItem.classList.add('active');
                }
            } else if (currentPath.includes('/owner/inventorylist')) {
                const inventoryListItem = document.querySelector('a[href$="/owner/inventorylist"]').closest('.submenu-item');
                if (inventoryListItem) {
                    inventoryListItem.classList.add('active');
                }
            }
        }
        
        // Handle coupon page
        else if (currentPath.includes('/owner/couponlist')) {
            const couponMenuItem = document.querySelector('a[href$="/owner/couponlist"]').closest('.menu-item');
            if (couponMenuItem) {
                couponMenuItem.classList.add('active');
            }
        }
        // Handle home page
        else if (currentPath.includes('/home')) {
            const homeMenuItem = document.querySelector('a[href$="/home"]').closest('.menu-item');
            if (homeMenuItem) {
                homeMenuItem.classList.add('active');
            }
        }
        // Handle other pages with direct links
        else {
            // Check for other direct menu items that don't have submenu
            const otherMenuItems = document.querySelectorAll('.menu-item a:not([data-bs-toggle])');
            otherMenuItems.forEach(item => {
                const href = item.getAttribute('href');
                if (href && currentPath.includes(href) && href !== '#' && !href.includes('/home')) {
                    item.closest('.menu-item').classList.add('active');
                }
            });
        }
    });
</script>