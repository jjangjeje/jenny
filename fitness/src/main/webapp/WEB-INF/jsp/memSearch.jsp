<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
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
table, th, td {
	border: 1px solid black;
}

table {
	width: inherit;
	text-align: center;
}

table.center {
	margin-left: 0;
	margin-right: 0;
}

form {
	text-align: right;
	padding-top: 15px;
}
</style>
</head>

<script>
	$(function() {
		$('.searchBtn').click(function() {
			$.ajax({
				type : 'GET', // get 방식으로 통신
				url : "memInfo.html", // 탭의 data-tab속성의 값으로된 html파일로 통신
				dataType : "html", // html 형식으로 값 읽기
				error : function() { // 통신실패시 안내창
					alert('통신실패');
				},
				success : function(data) { // 통신 성공시 탭 내용의 div 가져오기
					$('#searchContent').html(data);
				}
			});
		});
	});
</script>
<body>
	<div>
		<form action="/memInfo.html" id="searchForm">
			<label for="searchTxt"></label> <input type="text" id="searchTxt"
				name="searchTxt">
			<button class="searchBtn" href="#">검색</button>
		</form>
	</div>
	<div class="searchContent" data-tab="memInfo">
		<div id="home" class="container tab-pane active">
			<br>
			<h4>검색결과</h4>
			<table class="center">
				<tr>
					<th>회원번호</th>
					<th>이름</th>
					<th>핸드폰번호</th>
					<th>가입일자</th>
					<th>이용기간</th>
				</tr>
				<tr>
					<td>1</td>
					<td>재은</td>
					<td>010-1234-1234</td>
					<td>2020/06/09</td>
					<td>이용중인 회원권이 없습니다.</td>
				</tr>
				<tr>
					<td>2</td>
					<td>재은</td>
					<td>010-4567-1234</td>
					<td>2020/06/09</td>
					<td>2020/06/01 ~ 2020/08/31</td>
				</tr>
			</table>
		</div>
		<div id="menu1" class="container tab-pane fade">
			<br>
			<h3>회원검색</h3>

		</div>
		<div id="menu2" class="container tab-pane fade">
			<br>
			<h3>회원등록</h3>

		</div>
	</div>
</body>
</html>