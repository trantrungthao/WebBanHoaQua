<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>Captcha</title>
<script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>
<!--  -->
	<form action="#" method="POST">
		<!--  -->
		<a>${error}</a>
		<!--  -->
		<div class="g-recaptcha" data-sitekey="6LdXdiMUAAAAAKirZUzx5jMHJ-Gs65uX-Kw5K7YF"></div>
		<br> <input type="submit" value="Xác nhận">
	</form>
</body>
</html>