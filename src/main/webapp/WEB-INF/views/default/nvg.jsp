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
</style>
<title>Insert title here</title>
</head>
<body>
			<ul id="font1">
				<li><a href="${contextPath }/store/storeHome">STORE</a></li>
				<li><a href="${contextPath }/veganroad/veganroadHome">VEGAN ROAD</a></li>
				<li><a href="${contextPath }/event/eventHome">FAIR<br>EVENT</a></li>
				<li><a href="${contextPath }/board/boardHome">BOARD</a></li>
			</ul>

</body>
</html>