<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "connect.add_member" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container style="flex-direction: column;">
		<div class=titleBox style="margin-top: 7rem;">학생 정보 입력</div>
		<div class=typingBox>
			<form method="post" action="addAction.jsp?clubName=<%= clubName %>">
				<div class= titleBox style="margin-bottom: 2rem;"><%= clubName %></div>
				<input type= "text" class= "inputBox"  name="s_id" style="margin-bottom: 4px;" placeholder="학번">
				<input type= "text" class= "inputBox" name="dept_name" style="margin-bottom: 4px;" placeholder="이름">
				<input type= "text" class= "inputBox" name="s_name" style="margin-bottom: 4px;" placeholder="단대">
				<input type= "submit" class= "submitBox" style="background-color: green;" value="학생 추가">
			</form>
		
		</div>
	</div>
</body>
</html>