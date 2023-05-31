<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.select" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>


<%
// 전송된 데이터 받기
String p_name = request.getParameter("p_name");

select findClub = new select();
ArrayList<String> clubInfo= findClub.profInfo(p_name);
String profName = clubInfo.get(0);
String clubName = clubInfo.get(1);
String areaName = clubInfo.get(2);
String prsdName = clubInfo.get(3);
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
				<div class= "inputBox"  style="margin-bottom: 4px;"> 담 당 교 수 : <%= profName %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 분 야 : <%= areaName %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 회 장 : <%= prsdName %></div>
		</div>
	</div>
</body> 
</html>
