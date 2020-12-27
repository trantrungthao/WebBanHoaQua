<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng nhập</title>
<meta charset="UTF-8">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='${url}/css/bootstrap.min.css'/>">
<!--===============================================================================================-->
 <link rel="stylesheet" type="text/css"
	href="<c:url value='${url}/css/font-awesome.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<c:url value='${url}/vendor/animate/animate.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='${url}/vendor/css-hamburgers/hamburgers.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='${url}/vendor/select2/select2.min.css'/>">
<!--===============================================================================================-->
 <link rel="stylesheet" type="text/css" href="<c:url value='${url}/css/util.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='${url}/css/main.css'/>">
<!--===============================================================================================-->
<!-- API captcha google -->
<script src="https://www.google.com/recaptcha/api.js"></script>

<!-- Đăng nhập bằng google -->

</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${url}\img\logo.png" alt="IMG">
				</div>
	
				<form action="j_spring_security_check" id="formLogin" method="post" class="login100-form validate-form">
					<span class="login100-form-title"> ĐĂNG NHẬP </span>
					<!--Hiện thông báo đăng nhập không thành công-->
					<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">	
							Tài khoản hoặc Mật khẩu không đúng!
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">	
							Phải đăng nhập
					</div>
				</c:if>
				
					<div class="wrap-input100 validate-input">
						<!-- Kiểm tra trường dữ liệu không để trống và nhận vào userName-->
						<input class="input100" type="text" id="username" name="j_username"
							placeholder="Tên đăng nhập" pattern="^([a-z0-9]){1,12}$" title="VD: trungthao, hoanganh" required />
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
					<!--  
					<div class="fb-login-button" data-size="large" data-button-type="login_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div>
					<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
				-->
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
					<div class="text-center p-t-136">
						<a class="txt2" href="dangky.jsp"> Đăng kí tài khoản <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%-- <script></script>

	<script src="<c:url value='${url}/vendor/jquery/jquery-3.2.1.min.js'/>"></script>

	<script src="<c:url value='${url}/vendor/bootstrap/js/popper.js'/>"></script>
	<script src="<c:url value='${url}/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

	<script src="<c:url value='${url}/vendor/select2/select2.min.js'/>"></script>

	<script src="<c:url value='${url}/vendor/tilt/tilt.jquery.min.js'/>"></script>
	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

	<script src="<c:url value='${url}/js/main.js'/>"></script> --%>

</body>
</html>