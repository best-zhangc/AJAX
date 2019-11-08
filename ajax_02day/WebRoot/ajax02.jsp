<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Test_02day</title>
<script type="text/javascript">
	function getXhr(){
		var xhr = null ; 
		if (window.XMLHttpRequest) {
			xhr = new XMLHttpRequest();
			
		} else {
			xhr = new ActiveXobject("Microsoft.XMLHttp"); /* 针对IE5 时执行*/
		}
		
		return xhr ;
	}
	function getText(){
		var xhr = getXhr() ;
		xhr.onreadystatechange = function(){
			if (xhr.readyState == 4 && xhr.status == 200) {
				var txt = xhr.responseText ;
				alert(txt);
			}
		};
		xhr.open("get" , "get_text.do" , true);
		xhr.send(null);
	}
	
</script>
</head>
<body>
			<a href="javascript:;" onclick="getText()">请求连接</a>
</body>
</html>