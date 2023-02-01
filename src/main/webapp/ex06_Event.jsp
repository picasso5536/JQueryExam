<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	// 마우스 이벤트 : click(on, bind), dblclick, mouseover, mouseout
	
	// 키보드 이벤트 : keypress, keyup, keydown
	
	// form 이벤트 : focus, change, submit
	$(document).ready(function() {
		// 동적 처리 불가능
		// $("#p1").click(function(){ alert("클릭 성공");});
		
		// 주체가 되는 부모 속성의 이벤트를 물려받아서 지정 선택자에게 이벤트 연결
		// $("상위 선택자").on("click", "하위 선택자", function(){ alert("클릭 성공2");});
		// $("#p1").on("click", function(){alert("클릭 성공2");});
		
		// 동적 처리
		$("#p1").bind("click", function(){alert("클릭 성공3");});
		
		// 더블 클릭
		// $("#p1").dblclick(function(){ alert("더블 클릭 성공");});
		
		// 마우스 포인터 올렸을 때, 벗어날 때
		// attr -> 속성 설정
		$("#img").mouseover(function() {
			$(this).attr("src", "images/pic_bulbon.gif");
		});
		
		$("#img").mouseout(function() {
			$(this).attr("src", "images/pic_bulboff.gif");
		});
		
		// keyup
		$("#name").keyup(function() {
			// alert("누르셨네요");
			var name = $(this).val();
			alert(name);
		});
		
		// 체크박스,라디오버튼 선택여부 : change(), select()
		$("#chk").change(function() {
			// var str = $("#addr").val();
			// $("#addr2").val(str);
				var str = $("#addr").val();
			if($(this).is(":checked")){ //.is(":checked") -> 체크되어있는 상태?
				$("#addr2").val(str);
			}else{
				$("#addr2").val("");
			}
		});
		
		$("#pwd").keyup(function() {
			if($("#pwd").val() === $("#pwd2").val()){
				$("#s1").html("<b>암호가 일치합니다</b>");
			}else{
				$("#s1").html("<b>암호가 일치하지 않습니다</b>");
			}
		});
		
		$("#pwd2").keyup(function() {
			if($("#pwd").val() === $("#pwd2").val()){
				$("#s1").html("<b>암호가 일치합니다</b>");
			}else{
				$("#s1").html("<b>암호가 일치하지 않습니다</b>");
			}
		});
	});
</script>
</head>
<body>
	<p><span id="p1">이벤트 처리</span></p>
	<p><img id="img" src="images/pic_bulboff.gif"></p>
	<p><input type="text" name="name" id="name"></p>
	<hr>
	
	<p>주소 : <input type="text" name="addr" id="addr"></p>
	<p><input type="checkbox" name="addr" id="chk"> 상동 </p>
	<p>주소 : <input type="text" name="addr2" id="addr2"></p>
	<hr>
	
	<p>비번 : <input type="password" name="pwd" id="pwd"></p>
	<p>비번확인 : <input type="password" name="pwd2" id="pwd2"></p>
	<p><span id="s1"></span></p>
</body>
</html>