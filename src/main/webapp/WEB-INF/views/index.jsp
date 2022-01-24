<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/home.css">
<link href="https://fonts.googleapis.com/css2?family=Andada+Pro&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<style type="text/css">
#font1 {	font-family: 'Andada Pro', serif; }
#font2 {	font-family: 'Roboto', sans-serif; }
.wrap{ width: 1500px; background-color: white;}
.container {
	display: flex; width: 100%;
}
.left {
	width: 50%;
	margin-top: 100px;
	margin-left: auto;
	margin-right: auto;
}
.right {
	width: 50%;
	margin-left: auto;
	margin-right: auto;

}
div ul { list-style: none;}
div ul li { 
	text-align: center;
	margin: 20% 20% 20% 20%;
}
div ul li a {
	color: black;
}
div ul li a:hover{
	color: #9536FF;
}
div img {
	width: 80%;
	height: 70%;
	margin-top: 10%;
	margin-bottom: 10%;
}
</style>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="default/header.jsp"/>
	<div class="container">
		<div class="left">
			<jsp:include page="default/nvg.jsp"></jsp:include>
		</div>
		<div class="right">
			<div class="back-img">		
				<img src="https://ih1.redbubble.net/image.1198607014.3986/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg">
			</div>
		</div>
	</div>


</body>
</html>