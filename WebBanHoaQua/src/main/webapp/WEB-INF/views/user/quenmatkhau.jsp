<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Xác nhận</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="khachhang/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="khachhang/css/util.css">
	<link rel="stylesheet" type="text/css" href="khachhang/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="khachhang\img\ts\logodn.png" alt="IMG">
				</div>

				<form action="<%=request.getContextPath()%>/dangky?action=maxacnhan" method="POST" >
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
					<a>${error}</a>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" value="Xác nhận">
							Xác nhận
						</button>
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
	<script src="khachhang/js/main.js"></script>

</body>
</html>