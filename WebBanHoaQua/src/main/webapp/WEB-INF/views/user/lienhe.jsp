<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Liên Hệ</title>
</head>

<body>
 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${url}/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Liên hệ</h2>
                        <div class="breadcrumb__option">
                            <a href="trangchu">Trang Chủ</a>
                            <span>Liên hệ</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Để lại tin nhắn</h2>
                    </div>
                </div>
            </div>
            <a style="color: red;">&emsp; ${thongbao}</a>
            <form:form action="xulylienhe" method="post" modelAttribute="lienhe">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" id="email" name="email" placeholder="Email của bạn" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" required >
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea id="cmt" name="cmt" placeholder="Tin nhắn" required ></textarea>
                        <button type="submit" class="site-btn">Gửi</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
    <!-- Contact Form End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Số điện thoại</h4>
                        <p>+84 971999999</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Địa chỉ</h4>
                        <p>Đại học Nông lâm TP HCM</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Thời Gian Mở</h4>
                        <p>24/7</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p>trungthaoweb@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Begin -->
    <div class="map">
       <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15672.728116357672!2d106.78635968465579!3d10.87375570000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zxJDhuqFpIEjhu41jIE7DtG5nIEzDom0!5e0!3m2!1svi!2s!4v1609066580234!5m2!1svi!2s" width="600" height="450" style="border:0;" aria-hidden="false" tabindex="0"></iframe>
        <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>TP HCM</h4>
                <ul>
                    <li>Phone: +84 098799999</li>
                    <li>Add: Đại học Nông Lâm TP HCM</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Map End -->
</body>
</html>