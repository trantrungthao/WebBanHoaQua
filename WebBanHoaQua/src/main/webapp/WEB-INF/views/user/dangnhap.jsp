<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng nhập</title>
<meta charset="UTF-8">

<!-- API captcha google -->
<script src="https://www.google.com/recaptcha/api.js"></script>

<!-- Đăng nhập bằng google -->

</head>
<body>
		<div class="container-login100" >
			<div class="wrap-login100">
			<div class="login100-pic js-tilt" data-tilt>
					<img src="${url}/img/product/product-12.jpg" alt="IMG">
				</div>
				<!--  -->
				<form action="j_spring_security_check" method="POST" class="login100-form validate-form">
					<span class="login100-form-title"> ĐĂNG NHẬP </span>
					<!--Hiện thông báo đăng nhập không thành công-->
					<c:if test="${param.incorrectAccount != null}">
					<div align="center">	
							<a style="color: red">Tài khoản hoặc Mật khẩu không đúng!</a>
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div align="center">	
							<a style="color: red">Cần đăng nhập để truy cập!</a>
					</div>
				</c:if>
					<div class="wrap-input100 validate-input">
						<!-- Kiểm tra trường dữ liệu không để trống và nhận vào userName-->
						<input class="input100" type="text" id="username" name="j_username"
							placeholder="Tên đăng nhập" pattern="^([a-z0-9]){1,12}$" title="VD: trungthao, thaohien" required />
					</div>

					<div class="wrap-input100 validate-input">
						<!--Kiểm tra password đủ 6 kí tự trở lên và nhận vào password-->
						<input class="input100" type="password" id="password" name="j_password"
							placeholder="Mật khẩu" pattern=".{6,}" title="6 kí tự trở lên"
							required />
		
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">Đăng nhập
						</button>
					</div>
					<div class="text-center p-t-12">
						<span class="txt1"> Quên </span> <a class="txt2" href="#"> Tên
							đăng nhập / Mật khẩu? </a>
					</div>
					<div class="text-center p-t-12">
						<a
							href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=https://localhost:8443/WebBanTraSua/google&response_type=code
    &client_id=788574466020-k3ifc49gl8efn3hq4ebu5s9o5jf7ako5.apps.googleusercontent.com&approval_prompt=force">Google+</a>
						
						
						<!-- dùng để gọi hộp thoại Đăng nhập và cài đặt URL chuyển hướng. -->
						<a
							href="https://www.facebook.com/dialog/oauth?client_id=736929813734347&redirect_uri=https://localhost:8443/WebBanTraSua/facebook">/Facebook+</a>
					</div>
					<div class="text-center p-t-100">
						<a class="txt2" href="dangky"> Đăng kí tài khoản <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	<div id="fb-root"></div>

	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="khachhang/js/main.js"></script>

</body>
</html>