<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Test003_01登录验证</title>
<script type="text/javascript" src="../page/my.js"></script>
<script type="text/javascript">
	function check_name(){
		var xhr = getXhr();
		xhr.onreadystatechange=function(){
		if (xhr.readyState == 4 && xhr.status == 200) {
			document.getElementById("name_msg").innerHTML = xhr.responseText;
			} 
		};
		xhr.open("post" , "check_name.do" , true);
		xhr.setRequestHeader("content-type" , "application/x-www-form-urlencoded");
		document.getElementById("name_msg").innerHTML = "正在检查。。。。。" ;
		var uname = document.getElementById("userId");
		xhr.send("uname="+userId.value);
	}
</script>
</head>
<body>
		<form action="" method="post">
			<fieldset>
			<legend>注册信息</legend>
				用户名：<input type="text" name= "userId" id="userId" />
							<input type = "button" value="检查" onclick="check_name()"/>
							<span id="name_msg" style="color: red"></span><br><br>
							<input type="submit" value="注册"/>
 			</fieldset>
		</form>
</body>
</html>