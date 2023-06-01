<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.select" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>


<%
// 전송된 데이터 받기
String clubName = request.getParameter("club_name");
select club = new select();
ArrayList<String> clubInfo= club.clubInfo(clubName);
String clubPresident = clubInfo.get(1);
String deptName = clubInfo.get(2);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container style="flex-direction: column;">
	<div class= titleBox style="margin-bottom: 2rem;"><%= clubName %></div>
		<div class=typingBox>		
				<div class= "inputBox"  style="margin-bottom: 4px;"> 동아리 회장 : <%= clubPresident %> (<%= deptName %>)</div>
		</div>
	</div>
</body> 
</html>

