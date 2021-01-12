<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
<c:url value="template/user" var="url"></c:url>


    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> trungthaoweb@gmail.com</li>
                                <li>FreeShip cho các đơn hàng trên 50k</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <!-- Ngôn ngữ -->
                            <div class="header__top__right__language">
                                <img src="${url}/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">VietNam</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <!-- Đăng nhập -->
                            <div class="header__top__right__auth">
                                <a href="dangnhap"><i class="fa fa-user"></i> Đăng nhập</a>
                                <a>/</a>
                                <a href="dangky"><i class="fa fa-user"></i> Đăng ký</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- -->
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="#"><img src="${url}/img/logo1.png" alt="" width="200" height="50"></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="trangchu">Trang Chủ</a></li>
                            <li><a href="sanpham">Sản Phẩm</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="lienhe">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                        <!-- Shopping Cart -->
                            <li><a href="giohang"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">Tổng tiền: <span>15000VNĐ</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->