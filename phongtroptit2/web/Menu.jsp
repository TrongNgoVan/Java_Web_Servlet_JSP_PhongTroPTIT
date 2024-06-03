<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-danger">
    <div class="container">
         <a class="navbar-brand" href="home"<li><i class="fa fa-home mr-2"></i>Phòng Trọ PTIT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Manager Account</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1 || sessionScope.acc.isSell == 0}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Room</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
<!--               <a class="btn btn-success btn-sm ml-3" href="cart">
                    <i class="fa fa-check"></i> ROOM SAVED
                    <span class="badge badge-light">0</span>
               </a>-->

            </form>
        </div>
    </div>
</nav>
<style>
    .red-text {
        color: red;
    }
</style>
<style>
    .jumbotron {
/*        background-image: url('image/Toa_nha_A2_PTIT.jpg');*/
         background-image: url('image/ptitnen.jpg');
        background-size: cover;
        background-position: center;
        color: #000000; /* Đổi màu chữ thành đen */
        /* Thêm các thuộc tính khác cho phần tử của bạn nếu cần thiết */
    }
</style>


<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">PHÒNG TRỌ UY TÍN DÀNH CHO SINH VIÊN PTIT</h1>
        <h3 class="jumbotron-heading">HỌC VIỆN CÔNG NGHỆ BƯU CHÍNH VIỄN THÔNG - PTIT</h3>
        <h2 class="jumbotron-heading red-text">Posts and Telecommunications Institute of Technology</h2>
    </div>
    <div class="map-container">
        <div class="logo-container">
            
            <img src="image/ptit-logo.png" alt="Logo" width="180" height="180">
        </div>
        <div class="map-description">
            <!-- Add your descriptions or captions here -->
            <p>Trang web được nhóm sinh viên đang học bộ môn OOP-JAVA-PTIT , được hướng dẫn bởi thầy Nguyễn Mạnh Sơn, tạo ra với mong muốn giúp sinh viên PTIT dễ dàng hơn trong việc ổn định nơi ở cư trú , để tập trung chăm lo học hành!</p>
        </div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.3016784838646!2d105.78789859999999!3d20.980540899999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acce762c2bb9%3A0xbb64e14683ccd786!2zSOG7jWMgVmnhu4duIENOIELGsHUgQ2jDrW5oIFZp4buFbiBUaMO0bmcgLSBIw6AgxJDDtG5n!5e0!3m2!1svi!2s!4v1701147969190!5m2!1svi!2s" width="800" height="450" style="border:10;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</section>

<style>
    .map-container {
        position: relative;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }
    .logo-container {
        margin-right: 20px;
    }

    .logo-container img {
        max-width: 100%;
        height: auto;
        border-radius: 5px; /* Optional: Add border-radius for rounded corners */
    }

    .map-description {
        max-width: 400px; /* Adjust the width as needed */
        padding: 30px;
        background-color: #fff; /* Set the background color */
        border: 10px solid #ddd; /* Set the border color */
        border-radius: 20px; /* Optional: Add border-radius for rounded corners */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Optional: Add a box shadow */
      
    }
</style>


<!--end of menu-->
