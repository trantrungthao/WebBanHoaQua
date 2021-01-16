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
    <title>Tìm kiếm sản phẩm</title>
</head>
<body>
 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${url}/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Sản phẩm bạn cần tìm</h2>
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
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <h4 style="color: red;">${thongbao}</h4>
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng còn</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${dssp}" var="sp">
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="${img}/${sp.hinhanh}" width="100" height="100">
                                        <h5><a href="chitietsanpham?id=${sp.id}">${sp.tensanpham}</a></h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        ${sp.gia} VND
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="${sp.soluong}">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>                     
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
</body>
</html>