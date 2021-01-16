<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Website Bán Hoa Quả </title>
</head>
<body>
<!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="timkiemsanpham" method="post">
                                <input type="text" name="productName" id="productName" placeholder="cà chua" required>
                                <button type="submit" class="site-btn">Tìm kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+84 97199999</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="${url}/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>Khuyến mãi</span>
                            <h2>Giảm đến <br />50% Các Loại Quả Trong Mùa Hè</h2>
                            <p>FreeShip trong thành phố</p>
                            <a href="#" class="primary-btn">Mua Ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>