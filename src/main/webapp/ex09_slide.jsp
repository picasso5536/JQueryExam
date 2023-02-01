<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>효과 : slide Up/Down/Toggle</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	// $(선택자).slideUp(), $(선택자).slideUp(speed)
	// $(선택자).slideDown(), $(선택자).slideDown(speed)
	// $(선택자).sildeToggle(), $(선택자).slideToggle(speed)
	// speed : 숫자(200-600, 기본 400), 문자("fast", "slow");
	
	$(document).ready(function() {
		$("#btn1").click(function() {
			$("#img").slideUp("fast");
		});
		
		$("#btn2").click(function() {
			$("#img").slideDown("slow");
		});
		
		var i = 0;
		$("#btn3").click(function() {
			if(i%2 == 0){
				$(this).text("보이기");
				
			}else{
				$(this).text("감추기");
			}
			++i;
			$("#img").slideToggle("600");
		});
	});
</script>
</head>
<body>
	<button id="btn1">감추기</button>
	<button id="btn2">보이기</button>
	<button id="btn3">감추기</button>
	<hr>
	<img id="img" src="images/pic_bulboff.gif">
	<p>hello world</p>
</body>
</html>