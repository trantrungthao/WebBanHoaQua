<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/hinhanh" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Thông tin khách hàng</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="khachhang/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="khachhang/css/style.css" type="text/css">
</head>
<body>
	<div align="center">
    <h3>Thông tin chi tiết tài khoản</h3>
	<table>
		<tr>
			<td>Ảnh đại diện:</td>
			<td><img src="${url}/${tttk.hinhanh}" alt="Ảnh đại diện" width="100" height="100"/></td>
		</tr>
		<tr>
			<td>Tên đăng nhập:</td>
			<td>${tttk.tendangnhap}</td>
		</tr>
		<tr>
			<td>Họ tên:</td>
			<td>${tttk.hovaten}</td>
		</tr>
		<tr>
			<td>Giới tính:</td>
			<td>${tttk.gioitinh}</td>
		</tr>
		<tr>
			<td>Ngày sinh:</td>
			<td>${tttk.ngaysinh}</td>
		</tr>
		<tr>
			<td>Số điện thoại:</td>
			<td>${tttk.sdt}</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td>${tttk.email}</td>
		</tr>
	</table>
	<a href="trangchu"><button class="btn btn-primary">Sửa tài khoản</button></a>
	<a href="trangchu"><button class="btn btn-primary">Trở về</button></a>

	<!-- Js Plugins -->
	<script src="khachhang/js/jquery-3.3.1.min.js"></script>
	<script src="khachhang/js/bootstrap.min.js"></script>
	<script src="khachhang/js/jquery.nice-select.min.js"></script>
	<script src="khachhang/js/jquery-ui.min.js"></script>
	<script src="khachhang/js/jquery.slicknav.js"></script>
	<script src="khachhang/js/mixitup.min.js"></script>
	<script src="khachhang/js/owl.carousel.min.js"></script>
	<script src="khachhang/js/main.js"></script>

</body>
</html>