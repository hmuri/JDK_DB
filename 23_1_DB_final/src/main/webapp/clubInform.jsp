<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container>
		<div class=container style="flex-direction: column; opacity: 100%;">
		<div class=titleBox style="margin-top: 7rem;">동아리 정보</div>
		<div class=typingBox>
			<form method="post" action="clubaction.jsp">
				<div class= titleBox style="margin-bottom: 2rem;">동아리명을 입력해주세요</div>
				<input type= "text" class= "inputBox"  name=club_name style="margin-bottom: 4px;" placeholder="동아리명">
				<input type= "submit" class= "submitBox" style="background-color: green;" value="동아리 찾기">
			</form>
		
		</div>
	</div>
</body>
</html>

