<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<title>Đăng ký</title>
<meta charset="UTF-8">
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">	
			<div class="container" style="width: 500px">		
				<!-- form đăng ký -->
				<form:form method="POST" action="xulydangky" enctype="multipart/form-data" modelAttribute="taikhoan" onSubmit="return validateSubmit()">
					<span class="login100-form-title"> ĐĂNG KÝ </span>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="tendangnhap" id="tendangnhap" onkeyup="check()"
							placeholder="Tên đăng nhập"  pattern="^([a-z0-9]){1,12}$" 
							title="VD: trungthao, trungthao123" required />
							<a id="nameMsg" style="color: red" ></a>
					</div>
					<!--Khách hàng nhập họ tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="hoten"
							placeholder="Họ và tên" title="VD: Nguyễn Văn A, Trần Trung Thảo" required />
					</div>
					<!--  -->
					<div>
						<a>&emsp; Giới tính:</a>
						<input type="checkbox" name="gioitinh" id="gioitinh" value="Nam"/> <a>Nam</a>
					</div>
					<!--  -->
					<div class="form-group">
						<a>&emsp; Ảnh đại diện: <input type="file" name="hinhanh" required /></a>
					</div>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="date" name="ngaysinh" required />
					</div>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="sdt"
							placeholder="Nhập số điện thoại"
							pattern="(\+84|0)\d{9,10}" title="VD: 0971230xxx, 0990888xxx" required />
					</div>
					<!--Khách hàng nhập email-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="email"
							placeholder="Nhập email"
							pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"
							title="VD: trasua@gmail.com" required />
					</div>
					<!--  -->
					<!--Khách hàng nhập họ tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="diachi"
							placeholder="Nhập địa chỉ" title="VD: TP HCM, Hà Nội" required />
					</div>
					<!--Khách hàng nhập mật khẩu-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="matkhau" id="matkhau"
							placeholder="Nhập mật khẩu" pattern=".{6,}"
							title="6 kí tự trở lên" required />
					</div>
					<!--Khách hàng nhập lại mật khẩu-->
				 	<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="nhaplaimk"
							id="nhaplaimk" placeholder="Nhập lại mật khẩu" required />
					</div>
					<a id="message" style="color: red"></a>
					<!--Đăng ký-->
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="dangky">Đăng ký</button>
					</div>
					<!--  -->
					<div class="text-center p-t-120">
						
					</div>
				</form:form>
			</div>
			</div>
		</div>
	</div>
</body>
</html>