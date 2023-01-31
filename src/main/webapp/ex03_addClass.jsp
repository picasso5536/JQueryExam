<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
	.selected{color: red;}
	.bg{background: yellow;}
	div{background: green;}
	.white{color: white;}
	.red{background: red;}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// p요소의 첫번째, 마지막 선택
		// $("p").first().addClass("bg selected");
		// $("p").last().addClass("bg selected");
		$("p:first").addClass("white red");
		$("p:last").addClass("white red");
	
		$("div:even").addClass("white red");
		$("div:odd").addClass("bg selected");
	});
</script>
</head>
<body>
	<p> Hello </p>
	<p> And </p>
	<p> GoodBey </p>
	<br>
	<hr>
	<div> This div-0 </div>
	<div> This div-1 </div>
	<div> This div-2 </div>
	<div> This div-3 </div>
	<div> This div-4 </div>
</body>
</html>