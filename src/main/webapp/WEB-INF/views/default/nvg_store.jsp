<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#font {	font-family: 'Andada Pro', serif; }
.wrap{ width: 1000px; background-color: white;}
.container {
	display: flex; width: 100%;
}
.left {
	position: fixed;
	width: 15%; height: 100%;
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
/*	background-color: #E18048;*/
}
.right {
	width: 85%; height: 2500px;
	margin-left: auto;
	margin-right: auto;
}
.back-img {
	background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTB0rtxazGAoxvxUD56E3Ez1BFd93b-wgbQ&usqp=CAU");
	background-repeat: repeat-y;
}

div ul { 
	list-style: none;
	margin-top: 50%;
	}

div ul li{
	text-align: center;
	margin: 0 0 20%;
	padding: 0% 15% 0% 0%;
}
div ul li a{
	color: white;
	font-size: 12pt;
}

nav {position: fixed; width:1500px; height:50px; background-color: black;}
nav ul { 
	list-style: none; display: flex;
	padding: 0 1200px;	
}
nav ul li{
	text-align: center; 
	padding: 0 0 0 50px;
}
nav ul li a{
	color: white;
	font-size: 10pt;
	display: flex;
}
nav ul li a:hover{
	color: #41FF3A;
}

</style>
</head>
<body>
<div class="container">
	<div class="left back-img">
		<ul>
			<li><a href="${contextPath }/store/best">BEST</a></li>
			<li><a href="${contextPath }/store/new_">NEW</a></li>
			<li><a href="${contextPath }/store/brand">BRAND</a></li>
			<li><a href="${contextPath }/store/total">TOTAL</a></li>
		</ul>
	</div>
	<div class="right">
		
	</div>
</div>



</body>
</html>