<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:url value="upload" var="img"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <title>Chi Tiết Sản Phẩm</title>
</head>

<body>
 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${url}/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Chi tiết sản phẩm</h2>
                        <div class="breadcrumb__option">
                            <a href="trangchu">Trang Chủ</a>
                            <span>Chi tiết sản phẩm</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
     <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="${img}/${sp.hinhanh}">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${sp.tensanpham}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(9 reviews)</span>
                        </div>
                        <div class="product__details__price">${sp.gia} VND</div>
                        <p><a>${sp.mieuta}</a></p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="themsanpham?id=${sp.id}&soluong=1&page=chitietsanpham"><button class="btn btn-warning">Thêm vào giỏ hàng</button></a>
                        <ul>
                            <li><b>Tình trạng</b> <span><a>${sp.soluong}</a>kg</span></li>
                            <li><b>Shipping</b> <span>Ship trong ngày <samp>(Mua trên 2 kg FreeShip)</samp></span></li>
                            <li><b>Trọng lượng</b> <span>1kg</span></li>
                            <li><b>Chia sẽ</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
</body>
</html>