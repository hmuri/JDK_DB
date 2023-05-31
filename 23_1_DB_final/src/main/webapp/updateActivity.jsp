<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "connect.select" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>

<%
	select selectClub = new select();
	ArrayList<String> activity = selectClub.clubActivity(clubName);	
	String location = activity.get(0); // Retrieve the club name from the result set
	String day = activity.get(1); // Retrieve the club president from the result set
	String startTime = activity.get(2);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container style="flex-direction: column;">
		<div class=titleBox style="margin-top: 1rem;">동아리 활동 정보</div>
			<div class=typingBox style="flex-direction: column; height: 12rem;">		
				<div class= titleBox style="margin-bottom: 2rem;"><%= clubName %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 위 치 : <%= location %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 요 일 : <%= day %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 시작시간 : <%= startTime %></div>
			</div>
		<div class=titleBox style="margin-top: 3rem;">활동 정보 수정하기</div>
			<div class=typingBox style="flex-direction: column; height: 12rem;">
			<form method="post" action="updateAction.jsp?clubName=<%= clubName %>">
				<input type= "text" class= "inputBox"  name="location" style="margin-bottom: 4px;" placeholder="위치">
				<input type= "text" class= "inputBox" name="day" style="margin-bottom: 4px;" placeholder="요일">
				<div class= "inputBox"  style="margin-bottom: 4px;"> 시작시간 : <%= startTime %></div>
				<input type= "submit" class= "submitBox" style="background-color: green;" value="정보 수정">
			</form>
		
		</div>
	</div>
</body>
</html>