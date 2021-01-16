<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:url value="upload" var="img"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sản Phẩm</title>
</head>
<body>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${url}/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Sản phẩm</h2>
                        <div class="breadcrumb__option">
                            <a href="trangchu">Trang Chủ</a>
                            <span>Sản Phẩm</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <div>
    <br>
    <br>
    </div>
    <!-- Hero Section Begin -->
    <section class="hero">
    	<div class="container">
            <div class="hero__search__form">
                  <form action="timkiemsanpham" method="post">
                        <input type="text" id="productName" name="productName" placeholder="cà chua" required>
                        <button id="button-id" type="submit" class="site-btn">Tìm kiếm</button>
                  </form>
        	</div>
        </div>	
    </section>
    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Tất Cả Sản Phẩm</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
             <c:forEach items="${danhsachsanpham}" var="sp">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${img}/${sp.hinhanh}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="themsanpham?id=${sp.id}&soluong=1&page=danhsachsanpham"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6 ><a href="chitietsanpham?id=${sp.id}" style="color: blue;">${sp.tensanpham}</a></h6>
                            <h5> ${sp.gia} </h5>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
</body>
</html>