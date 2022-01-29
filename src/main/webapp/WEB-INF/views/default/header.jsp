<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#font1 {	font-family: 'Andada Pro', serif; }
#font2 {	font-family: 'Roboto', sans-serif; }
header { width: 100%; height: 100px; background-color: balck;}
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
<title>GO VEGAN</title>
</head>
<body>
	<nav>
		<nav>
			<ul>
				<li><a href ="${contextPath }/index">HOME</a></li>
			 <c:choose>
				<c:when test="${loginUser != null }">									
					<li><a href ="${contextPath }/member/logout">LOGOUT</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${contextPath }/member/login">LOGIN</a></li>			
				</c:otherwise>
			</c:choose>			
			
			
				<li><a href ="${contextPath }/member/register_form">JOIN</a></li>
			</ul>
		</nav>
	</nav>

</body>
</html>