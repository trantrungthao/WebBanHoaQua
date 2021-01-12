<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng ký</title>
<meta charset="UTF-8">
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${url}/img/product/product-12.jpg" alt="IMG">
				</div>
				<!-- form đăng ký -->
				<form:form action="${path}/dangky?action=dangky" method="POST" enctype="multipart/form-data"
					class="login100-form validate-form">
					<span class="login100-form-title"> ĐĂNG KÝ </span>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="tendangnhap"
							value="" placeholder="Tên đăng nhập"
							pattern="^([a-z0-9]){1,12}$" title="VD: trungthao, trungthao123" required />
					</div>
					<!--Khách hàng nhập họ tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="hovaten"
							value="" placeholder="Họ và tên"
							title="VD: Nguyễn Văn A, Trần Trung Thảo" required />
					</div>
					<!--  -->
					<div>
					<a>&emsp; Giới tính:</a>
					<input type="checkbox" name="gioitinh" id="gioitinh" value="Nam"/> <a>Nam</a>
					<br>
					</div>
					<!--  -->
					<div class="form-group">
					<a>&emsp; Ảnh đại diện:
					<input class="form-control" type="file" name="hinhanh" id="hinhanh" required /></a>
					</div>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="date" name="ngaysinh" required />
					</div>
					<!--Khách hàng nhập tên đăng kí-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="sodienthoai"
							value="" placeholder="Nhập số điện thoại"
							pattern="(\+84|0)\d{9,10}" title="VD: 0971230xxx, 0990888xxx" required />
					</div>
					<!--Khách hàng nhập email-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="email"
							value="" placeholder="Nhập email"
							pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"
							title="VD: trasua@gmail.com" required />
					</div>
					<!--Khách hàng nhập mật khẩu-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="matkhau" id="matkhau"
							placeholder="Nhập mật khẩu" pattern=".{6,}"
							title="6 kí tự trở lên" required />
					</div>
					<!--Khách hàng nhập lại mật khẩu-->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="nhaplaimk" id="nhaplaimk" placeholder="Nhập lại mật khẩu" required />
					</div>
					<!--Đăng ký-->
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Đăng ký</button>
					</div>
					<!--  -->
					<div class="text-center p-t-120">
						<a class="txt2" href="${path}/trangchu.jsp"><strong> Quay lại  </strong><i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="khachhang/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="khachhang/vendor/bootstrap/js/popper.js"></script>
	<script src="khachhang/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="khachhang/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="khachhang/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="khachhang/js/main.js"></script>

</body>
</html>