<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery AjaxTest_004 首页</title>
	<script src="../js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".s1").click(function(){
				var eId = 
				$(this).parent().siblings().eq(0).text();
				$(this).next().load("salary.do" , "eId=" + eId);
			});
	});
	</script>
</head>
<body>
	<table cellpadding="0" cellspacing="0" width="50%" border="1">
		<tr>
			<td>员工号</td>
			<td>员工姓名</td>
			<td>&nbsp;</td>
		</tr>

		<tr>
			<td>T10001</td>
			<td>张三</td>
			<td>
				<a href="javascript:;" class="s1">显示工资明细</a>
				<div></div>
				<a href="/ajax_04day/page/stock.jsp">查看股票</a>
			</td>
		</tr>

		<tr>
			<td>T10002</td>
			<td>李四</td>
			<td>
				<a href="javascript:;" class="s1">显示工资明细</a>
				<div></div>
				<a href="/ajax_04day/page/stock2.jsp">查看股票</a>
			</td>
		</tr>
	</table>
	<div></div>
	<div></div>
		
</body>
</html>