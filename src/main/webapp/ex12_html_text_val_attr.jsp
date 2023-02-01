<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html(), text(), val(), attr()</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	// text() : 텍스트 내용 설정 및 반환
	// html() : html 적용된 내용 설정 및 반환
	// val() : input type의 value 설정 및 반환
	// attr() : 속성 설정 및 반환
	
	$(document).ready(function() {
		$("#btn1").click(function() {
			$("#test").text("<h2> Hello jQuery </h2>");
		});
		
		$("#btn2").click(function() {
			$("#test").html("<h2> Hello jQuery </h2>");
		});
		
		$("#btn3").click(function() {
			$("#pwd").val("<h2>Hong Gil Dong</h2>");
		});
		
		$("#btn4").click(function() {
			$("#w3").text("www.naver.com").attr("href", "https://www.naver.com");
		});
	});
	
</script>
</head>
<body>
	<p id="test"> This is some <b>bold</b> text in a paragraph.</p>
	<p><input type="password" id="pwd" placeholder="비밀번호 입력"></p>
	<p><a href="https://www.w3schools.com" id="w3">w3schools.com</a>
	<hr>
	<button id="btn1">Show text</button>
	<button id="btn2">Show html</button>
	<button id="btn3">Show val</button>
	<button id="btn4">Show attr</button>
</body>
</html>