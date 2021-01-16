<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Thanh toán</title>
</head>

<body>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${url}/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Thanh toán</h2>
                        <div class="breadcrumb__option">
                            <a href="trangchu">Trang Chủ</a>
                            <span>Thanh toán</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <br>
	<div>
	       <h5 style="color: red;" align="center">${thongbao}</h5>
	</div>
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <h4>Chi tiết thanh toán</h4>
                <form action="thanhtoan" method="post" >
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="checkout__input">
                                <p>Họ và Tên<span>*</span></p>
                                <input type="text" placeholder="Nguyễn Văn A" value="${tttk.hoten}" name="hoten" required>
                            </div>
                            <div class="checkout__input">
                                <p>Số điện thoại<span>*</span></p>
                                <input type="text" placeholder="0971234xxx" value="${tttk.sdt}" name="sdt" required>
                            </div>
                            <div class="checkout__input">
                                <p>Địa chỉ<span> (Kiểm tra địa chỉ giao hàng) * </span></p>
                                <input type="text" placeholder="Vui lòng nhập địa chỉ giao hàng" value="${tttk.diachi}" name="diachi" required>
                            </div>
                           <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" placeholder="example@gmail.com" value="${tttk.email}" name="email" required>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Đơn hàng của bạn</h4>
                                <div class="checkout__order__products">Sản phẩm <span>Tiền</span></div>
                                <ul>
                               	 	<c:forEach items="${dssp}" var="sp">
                                   	 <li>${sp.tensanpham}<span>${sp.tonggia}</span></li>
                                	</c:forEach>  
                                </ul>
                                <div class="checkout__order__total">Tổng <span>${giohang.tongtien}</span></div>
                                <button type="submit" class="site-btn">Đặt hàng</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
</body>
</html>