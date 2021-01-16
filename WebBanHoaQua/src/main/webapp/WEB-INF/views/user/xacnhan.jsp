<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
	<title>Xác nhận</title>
	<meta charset="UTF-8">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${url}/img/product/product-12.jpg" alt="IMG">
				</div>

				<form action="xacnhan" method="POST" >
					<span class="login100-form-title">
						XÁC NHẬN
					</span>
					<div  style="text-align: center; padding-bottom: 10px">
						<i>Hãy kiểm tra email và nhập mã xác nhận</i>
				</div>
				<!--Đăng ký: 13. Khách hàng nhập mã xác nhận  -->
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="maxacnhan" placeholder="Mã xác nhận" required/>
					</div>
					<a style="color: red;">   ${error}</a>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" value="Xác nhận">
							Xác nhận
						</button>
					</div>
					<br>
					<br>
					<br>
					<br>
				</form>
			</div>
		</div>
	</div>
</body>
</html>