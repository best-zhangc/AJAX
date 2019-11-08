<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery ajaxTest_004  股票</title>
	<link rel="stylesheet" type="text/css" href="../css/stock2.css">
	<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			setInterval(quoto , 2000);
			//setInterval(quoto , 20000);
		});
		function quoto(){
			$.post("quoto.do" , function(data){
				$("#tb1").empty();
				for (i = 0 ; i < data.length ; i++) {
					var s = data[i];
					$("#tb1").append(
						"<tr><td>" + s.code + 
						"</td><td>" + s.name + 
						"</td><td>" + s.price +
						"</td></tr>");
				}
			}, "json");
		}
	</script>
</head>
<body>
	<div id="d1">
		<div id="d2">股票实时行情</div>
		<div id="d3">
			<table cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<td>代码</td>
						<td>名称</td>
						<td>价格</td>
					</tr>
				</thead>
				<tbody id="tb1"></tbody>
			</table>
		</div>
	</div>
</body>
</html>