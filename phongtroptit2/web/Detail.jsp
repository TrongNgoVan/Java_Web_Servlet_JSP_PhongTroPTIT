

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="icon" href ="image/logo.png"
              type="image/x-icon">
        <title>Phòng Trọ PTIT</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            
    .small-ggmap {
        width: 50%; /* hoặc giảm điều này nếu bạn muốn chiều rộng cố định */
        
        
       
    }

            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                               <span class="num">${detail.price}</span> <span class="currency">VND</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        <hr>
                                        <a href=" ${detail.fb}" class="btn btn-lg btn-primary text-uppercase" target="_blank"> Liên Hệ FB  </a>

                                            <a href="#" onclick="openGmail()" class="btn btn-lg btn-outline-primary text-uppercase" target="_blank">
  <i class="fas fa-shopping-cart"></i> Send Gmail
</a>

<script>
function openGmail() {
  // Thay thế địa chỉ email của người nhận và các thông tin khác theo nhu cầu của bạn
  var toEmail = '${detail.gmail}';
  var subject = 'Tìm Trọ';
  var body = 'Xin chào,Sau khi thấy thông tin phòng trên trang PhongtroPTIT ,Tôi muốn thương lượng thêm để đặt cọc phòng trọ!';
 

  // Tạo URL của Gmail với tham số
  var gmailUrl = 'https://mail.google.com/mail/?view=cm&fs=1&to=' + encodeURIComponent(toEmail) + '&su=' + encodeURIComponent(subject) + '&body=' + encodeURIComponent(body);

  // Mở trang Gmail trong trình duyệt mặc định
  window.location.href = gmailUrl;
}
</script>
<hr>
<hr>




                                    </article> 
                                 <article class="gallery-wrap">
        <div class="small-ggmap">
            ${detail.ggmap}
        </div>
        <div class="img-small-wrap">
        </div>
    </article>
                                </aside> <!-- col.// -->

                            </div> <!-- row.// -->
                        </div> <!-- card.// -->


                    </div>
                </div>
            </div>
        </div>
       <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
