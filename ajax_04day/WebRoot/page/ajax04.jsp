<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery AjaxTest_004 登录</title>
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
		$(function(){
			$("#loginBtn").click(function(){
				var userName = $("#userName").val(); //取得输入用户名值
				var pwd = $("#pwd").val(); //去的输入用户名密码
				//alert(userName+","+password);

				//判断是否为空（没输入）
				if (!userName) {
					alert("用户名必填！！！");
					$("#userName").focus(); //获取焦点在用户名框内
					return;
				}
				if (!pwd) {
					alert("密码必填！！！");
					$("#pwd").focus(); //获取焦点在密码框内
					return;
				}
				
				$.ajax({
					url:"/ajax_04day/AjaxTest_04",
					data:{"userName":userName,"pwd":pwd},
					type:"post",
					//dataType:"json",
					success:function(data){
						if (data=="true") {
						window.location.href = "/ajax_04day/page/ajax04_1.jsp" ;
						}
						else {
						alert("请输入正确信息！！");
						window.location.href = "/ajax_04day/page/ajax04.jsp" ;
						}
						//console.log(data);
						//alert(data);
					},

					error:function(){
						alert("456");
					}

				});
				
				/*var param = {"userName":userName,"pwd":pwd};
				//alert(param);
				$post("ajax04" , param , function(data){
					if (data) {
						window.location.href = "/ajax04_1.jsp" ;
					} else {
						alert("登录信息错误！！！");
					}

				});*/
			});
		});
</script>
</head>
<body>
		<form>
			<fieldset>
				<legend>登录信息</legend>
				用户名：<input type="text" name="userName" id="userName"/><br><br>
				密　码：<input type="password" name="pwd" id="pwd"/><br><br>
						<input type="button" value="登录" id="loginBtn">
			</fieldset>
		</form>
</body>
</html>