<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<c:url value="template/user" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value='${url}/css/bootstrap.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/font-awesome.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/elegant-icons.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/nice-select.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/jquery-ui.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/owl.carousel.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/slicknav.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/style.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='${url}/css/util.css'/>" type="text/css">
	<link rel="stylesheet" href="<c:url value='${url}/css/main.css'/>" type="text/css">
</head>

<body>
   <!-- header start -->
		<div>
			<jsp:include page="/common/user/header.jsp" />
		</div>
	<!-- header end -->

   <dec:body/>
   
    <!-- Footer Begin -->
		<div>
			<jsp:include page="/common/user/footer.jsp" />
		</div>
    <!-- Footer End -->

    <!-- Js Plugins -->
    <script src="<c:url value='${url}/js/jquery-3.3.1.min.js'/>"></script>
    <script src="<c:url value='${url}/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='${url}/js/jquery.nice-select.min.js'/>"></script>
    <script src="<c:url value='${url}/js/jquery-ui.min.js'/>"></script>
    <script src="<c:url value='${url}/js/jquery.slicknav.js'/>"></script>
    <script src="<c:url value='${url}/js/mixitup.min.js'/>"></script>
    <script src="<c:url value='${url}/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='${url}/js/main.js'/>"></script>

</body>

</html>