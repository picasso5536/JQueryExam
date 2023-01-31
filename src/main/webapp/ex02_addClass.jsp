<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addClass() : 스타일에 지정된 클래스 추가(적용)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
	.silver{background: silver;}
	.orange{color:white; background: orange;}
</style>
<script type="text/javascript">
	function go_1(){
		alert("HI ~~");
	}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		// Style에서 미리 만들어진 클래스 호출해서 스타일 적용
		$("#k1").addClass("silver");
		$("#k2").addClass("orange");
		$("#k2").click("orange");
	});
</script>
</head>
<body>
	<div style="background: yellow;" onclick="alert('hi')">안녕하세요 jQuery-1 입니다.</div>
	<div class="silver" onclick="go_1()">안녕하세요 jQuery-2 입니다.</div>
	<div id="k1">안녕하세요 jQuery-3 입니다.</div>
	<div id="k2">안녕하세요 jQuery-4 입니다.</div>
</body>
</html>