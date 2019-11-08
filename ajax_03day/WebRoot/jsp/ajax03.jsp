<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Test003</title>
<script type="text/javascript" src="../page/my.js"></script>
<script type="text/javascript">
		function  getText (){
			var  xhr = getXhr();
			//alert(xhr);
			xhr.onreadystatechange = function (){
				if (xhr.readyState == 4 && xhr.status == 200) {
					alert(xhr.responseText);
				} 
			};
			
			xhr.open("post" , "servlet" , true);
			
			xhr.setRequestHeader('content-type' , 
					'application/x-www-form-urlencoded');
			xhr.send("uname=旧的不去，新的不来");
		}
</script>
</head>
<body>
		<input type="button" onclick="getText()" value="post请求">
</body>
</html>