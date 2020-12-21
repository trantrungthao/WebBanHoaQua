<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="khachhang/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="khachhang/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="khachhang/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="khachhang/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="khachhang/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="khachhang/vendor/select2/select2.min.css">
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
                <img src="khachhang\img\ts\logodk.png" alt="IMG">
            </div>
            
          <form action="<%=request.getContextPath()%>/dangky?action=dangky" method="POST" class="login100-form validate-form"> 
         
					<span class="login100-form-title">
						ĐĂNG KÝ
					</span>
					
					<%String tendangnhap=request.getParameter("tendangnhap");
					if (tendangnhap == null) {
						tendangnhap = "";
						}%>
						<!--Đăng ký: 3. Khách hàng nhập tên đăng kí-->
                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="tendangnhap" value="<%=tendangnhap%>" placeholder="Tên đăng nhập"
                    pattern="^([a-z0-9]){1,12}$" title="VD: trasua, trasua123" required/>
                    <!--						<span class="focus-input100"></span>-->
                    <!--						<span class="symbol-input100">-->
                    <!--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
                    <!--						</span>-->
                </div>
                <!--Đăng ký: 4. Khách hàng nhập email-->
                	<%String email=request.getParameter("email");
                	if (email == null) {
						email = "";
						}%>
                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="email" value="<%=email%>" placeholder="Email"
                    pattern="^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,6}$" title="VD: trasua@gmail.com" required/>
                    <!--						<span class="focus-input100"></span>-->
                    <!--						<span class="symbol-input100">-->
                    <!--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
                    <!--						</span>-->
                </div>
                <!--Đăng ký: 5. Khách hàng nhập mật khẩu-->
                	<%String matkhau=request.getParameter("matkhau");
                	if (matkhau == null) {
                		matkhau = "";
						}%>
                <div class="wrap-input100 validate-input" data-validate = "Password is required">
                    <input class="input100" type="password" name="matkhau" value="<%=matkhau%>" placeholder="Mật khẩu" pattern=".{6,}"
              title="6 kí tự trở lên" required/>
                    <!--						<span class="focus-input100"></span>-->
                    <!--						<span class="symbol-input100">-->
                    <!--							<i class="fa fa-lock" aria-hidden="true"></i>-->
                    <!--						</span>-->
                </div>
                <!--Đăng ký: 6. Khách hàng nhập lại mật khẩu-->
                <%String nhaplaimk=request.getParameter("nhaplaimk");
                	if (nhaplaimk == null) {
                		nhaplaimk = "";
						}%>
                <div class="wrap-input100 validate-input" data-validate = "Password is required">
                    <input class="input100" type="password" name="nhaplaimk" value="<%=nhaplaimk%>" placeholder="Nhập lại mật khẩu" required/>
                    <!--						<span class="focus-input100"></span>-->
                    <!--						<span class="symbol-input100">-->
                    <!--							<i class="fa fa-envelope" aria-hidden="true"></i>-->
                    <!--						</span>-->
                </div>
                <span>${maxn}</span>
                <a>${error}</a>
                <!--Đăng ký: 7. Khách hàng chọn đăng ký
                			   8. Hệ thống kiểm tra dữ liệu-->
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Đăng ký
                    </button>
                </div>

<!--                <div class="text-center p-t-12">-->
<!--						<span class="txt1">-->
<!--							Quên-->
<!--						</span>-->
<!--                    <a class="txt2" href="#">-->
<!--                        Tên đăng nhập / Mật khẩu?-->
<!--                    </a>-->
<!--                </div>-->

                <div class="text-center p-t-120">
<!--                    <a class="txt2" href="#">-->
<!--                        Đăng ký tài khoản-->
<!--                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>-->
<!--                    </a>-->
                </div>
            </form>
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
<script >
    $('.js-tilt').tilt({
        scale: 1.1
    })
</script>
<!--===============================================================================================-->
<script src="khachhang/js/main.js"></script>

</body>
</html>