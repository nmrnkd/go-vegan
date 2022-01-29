<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER</title>
<style type="text/css">
body{
	background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTB0rtxazGAoxvxUD56E3Ez1BFd93b-wgbQ&usqp=CAU");
	background-size: auto;
}
.head{ padding-top : 200px; color: white;}
.form{ padding-top : 70px;}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

var id_chk = 0;
var pwd_chk = 0;

function chkDup(){
	var id = $('#userId').val();
    if( id == "" ){
        document.getElementById('userId').style.borderColor="#FF0000";
        document.getElementById('id_text').innerHTML = "아이디를 입력하세요."
        $("#userId").focus();
        return ;
     }
	$.ajax({
		url : 'chkId',
		type : 'Get',
		data : {id : id},
		success : function(result){
			console.log('success')
			if(result==0){
				var html = "<font size='2', color='white'>사용 가능한 ID입니다.</font>"	          
	            $("#id_text").html(html)
	            id_chk=1; console.log(id_chk);
			}
			else{
	            var html = "<font size='2', color='red'>이미 등록된 ID입니다.</font>"
	            $("#id_text").html(html)
			}
		}, error: function(result){
				console.log('error')
			alert('시스템 에러')
		}

	})
}
function chkPwd(){
	var pwd = $('#pwd').val();
	var pwdChk = $('#pwdChk').val();
	if(pwd==''){
		document.getElementById('pwd_text').innerHTML = "<font size='2', color = red>비밀번호를 입력하세요.</font>"
	     
	}else if(pwdChk==''){
		document.getElementById('pwdChk_text').innerHTML = "<font size='2', color = red>비밀번호를 확인해주세요.</font>"
	}else {
		if(pwd==pwdChk){
	        document.getElementById('pwdChk_text').innerHTML = "<font size='2', color = white>비밀번호가 일치합니다.</font>"
	        pwd_chk=1; console.log(pwd_chk);
		}
		else {
	         document.getElementById('pwdChk_text').innerHTML = "<font size='2', color = red>비밀번호가 일치하지 않습니다.</font>"
		}
	}
	
}
function chkForm(){
    var id = $("#userId").val()
    var name = $("#name").val()
    var pwd = $("#pwd").val()
    var pwdChk = $('#pwdChk').val()
    var email = $("#email").val()
    
    if (name == ""){
        document.getElementById('name_text').innerHTML = "<font size='2', color = white>이름을 입력하세요.</font>"
       $("name").focus();   
    }else if( id == ""){
        document.getElementById('id_text').innerHTML = "<font size='2', color = white>아이디를 입력하세요.</font>"
        $("#userId").focus();
    }else if ( pwd == ""){
        document.getElementById('pwd_text').innerHTML = "<font size='2', color = white>비밀번호를 입력하세요.</font>"
    	$("#pwd").focus();
    }else if ( pwdChk == ""){
        document.getElementById('pwdChk_text').innerHTML = "<font size='2', color = white>비밀번호를 확인 해주세요.</font>"
        $("#pwdChk").focus();
    }else if (email == ""){
        document.getElementById('email_text').innerHTML = "<font size='2', color = white>이메일을 입력하세요.</font>"
       $("#email").focus();
    }else if(id_chk==0){
        document.getElementById('id_text').innerHTML = "<font size='2', color = white>아이디 중복 확인을 해주세요.</font>"    	
    }else if(pwd_chk==0){
        document.getElementById('pwdChk_text').innerHTML = "<font size='2', color = white>비밀번호를 확인 해주세요.</font>"    	
    }
    else if(id_chk==1 && pwd_chk==1){
       regForm.submit();
    }
}

</script>
</head>
<body>
<jsp:include page="../default/header.jsp"/>
<div align="center" class="head">
	<h1>GO VEGAN</h1>
</div>
<div align="center" class="form">
<form id="regForm" action="register" method="post">
	<table>
		<tr>
		<td style="color:white;" align="center">이름</td>
			<td><input type="text" id="name" name="name" placeholder="Input your Name"></td>
		</tr>	
		<tr>
			<td></td>
			<td><span id="name_text"></span></td>
		</tr>
		
		<tr >
		<td style="color:white;" align="center">아이디</td>
			<td><input type="text" id="userId" name="id" placeholder="Input Id"></td>
			<td><input type="button" onclick="chkDup()" value="Check"></td>
		</tr>
		<tr>
			<td></td>
			<td><span id="id_text"></span></td>
		</tr>
		
		<tr>
		<td style="color:white;" align="center">비밀번호</td>
			<td><input type="password" id="pwd" name="pwd" placeholder="Input Password"></td>
		</tr>	
		
		<tr>
			<td></td>
			<td><span id="pwd_text"></span></td>
		</tr>
		
		
		<tr>
		<td style="color:white;" align="center">비밀번호 확인</td>
			<td><input type="password" id="pwdChk" name="pwdChk" placeholder="Input Password"></td>
			<td><input type="button" onclick="chkPwd()" value="Check"></td>			
		</tr>	
		
		<tr>
			<td></td>
			<td><span id="pwdChk_text"></span></td>
		</tr>
		
		<tr>
		<td style="color:white;" align="center">이메일</td>
			<td><input type="text" id="email" name="email" placeholder="Input Email"></td>
		</tr>
		<tr>
			<td></td>
			<td><span id="email_text"></span></td>
		</tr>
			
		<tr>
			<td colspan="3" align="center"><input type="button" onclick="chkForm()" value="REGISTER" style="width:90px; height:25px;"></td>
		</tr>	
	</table>
</form>
</div>
</body>
</html>