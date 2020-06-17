<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>FITNESS MANAGER</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	
<style>
#container {
	width: 960px;
	margin: 0 auto;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

#tabcontent {
	display: block;
	background-color: green;
	padding: 6px 12px;
	color: #fff;
}

a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
}

a:visited {
	color: black;
	text-decoration: none;
}

li {
	float: left;
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
}
</style>
</head>
<script>
	$(function() {
		$('.nav-item').click(function() {
			var activeTab = $(this).attr('data-tab');
			$.ajax({
				type : 'GET', // get 방식으로 통신
				url : activeTab, // 탭의 data-tab속성의 값으로된 html파일로 통신
				dataType : "html", // html 형식으로 값 읽기
				error : function() { // 통신실패시 안내창
					alert('통신실패');
				},
				success : function(data) { // 통신 성공시 탭 내용의 div 가져오기
					$('#tabContent').html(data);
				}
			});
		});
		$('#default').click();

	});
</script>
<body>
	<div class="container mt-3" id="container">
		<h2 style="text-align: center">FITNESS MANAGER</h2>
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs">
			<li data-tab="memList" class="nav-item" id="default"><a href="#">전체회원</a></li>
			<li data-tab="memSearch" class="nav-item"><a href="#">회원검색</a></li>
			<li data-tab="memInsert" class="nav-item"><a href="#">회원등록</a></li>
		</ul>
		<div id="tabContent"></div>
	</div>
</body>
</html>