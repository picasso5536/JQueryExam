<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>효과 : animate</title>
<style type="text/css">
	div{
		background: skyblue;
		width: 100px;
		height: 100px;
		position: absolute;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// $(선택자).animate({params}, speed, callback);
		// params는 보통 애니메이션할 CSS 특성을 정의
		// div의 position은 보통 absolute, fixed, relative 가능, static은 사용 불가
		
		/* $("#btn").click(function() {
			$("#div").animate({right:'250px', top :'250px'}, 3000);
		}); */
		
		var i = 0;
		$("#btn").click(function() {
			if(i % 2 == 0){
				$("#div").animate({
					width:'1000px', 
					height :'1000px',
					opacity : '0.7'}, 3000);
			} else{
				$("#div").animate({
					width:'100px', 
					height :'100px',
					opacity : '1.0'}, 3000);
			}
			i++;
		});
	});
</script>
</head>
<body>
	<button id="btn">애니메이션 시작</button>
	<hr>
	<div id="div"></div>
</body>
</html>