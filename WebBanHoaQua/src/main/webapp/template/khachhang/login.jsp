<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="img\ts\logodn.png" alt="IMG">
				</div>

				<form action="<%=request.getContextPath()%>/dangnhap" method="POST" class="login100-form validate-form">
					<span class="login100-form-title">
						Đăng nhập
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="TÃÂªn ÃÂÃÂng nhÃ¡ÂºÂ­p">
<!--						<span class="focus-input100"></span>-->
<!--						<span class="symbol-input100">-->
<!--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
<!--						</span>-->
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="MÃ¡ÂºÂ­t khÃ¡ÂºÂ©u">
<!--						<span class="focus-input100"></span>-->
<!--						<span class="symbol-input100">-->
<!--							<i class="fa fa-lock" aria-hidden="true"></i>-->
<!--						</span>-->
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							ÄÄng Nháº­p
						</button>
					</div>
					<p>${error}</p>	
					<div class="text-center p-t-12">
						<span class="txt1">
							QuÃÂªn
						</span>
						<a class="txt2" href="#">
							TÃÂªn ÃÂÃÂng nhÃ¡ÂºÂ­p / MÃ¡ÂºÂ­t khÃ¡ÂºÂ©u?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="register.html">
							ÃÂÃÂng kÃÂ½ tÃÂ i khoÃ¡ÂºÂ£n
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>