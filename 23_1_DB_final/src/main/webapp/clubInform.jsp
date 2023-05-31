<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.select" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>

<%
	select selectClub = new select();
	ArrayList<String> clubInfo = selectClub.clubInfo(clubName);
	String clubPresident = clubInfo.get(1);
	String deptName = clubInfo.get(2);			
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container style="flex-direction: column;">
		<div class=titleBox style="margin-top: 3rem;">동아리 정보</div>
			<div class=typingBox style="flex-direction: column;">		
				<div class= titleBox style="margin-bottom: 2rem;"><%= clubName %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 동아리 회장 : <%= clubPresident %></div>
				<div class= "inputBox"  style="margin-bottom: 4px;"> 소   속 : <%= deptName %></div>
			</div>
	</div>
</body>
</html>

