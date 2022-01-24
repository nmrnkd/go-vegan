<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<style type="text/css">
body{
	background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTB0rtxazGAoxvxUD56E3Ez1BFd93b-wgbQ&usqp=CAU");
	background-size: auto;
}
.head{ padding-top : 200px; color: white;}
.form{ padding-top : 70px;}
</style>
</head>
<body>
<jsp:include page="../default/header.jsp"/>
<div align="center" class="head">
	<h1>GO VEGAN</h1>
</div>
<div align="center" class="form">
	<form action="userCheck" method="post">
		<table>
			<tr>
				<td>
					<input type="text" name="id" placeholder="Input Id">
				</td>	
				<td rowspan="2">
					<input type="submit" value="login" style="width:60px; height:50px;" >	
				</td>	
			</tr>
			<tr>
				<td>
					<input type="password" name="pwd" placeholder="Input Pwd">
				</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="autoLogin">auto login</td>
				<td><a href="register_form">register</a></td>
			</tr>
		</table>
	</form>
</div>	
</body>
</html>