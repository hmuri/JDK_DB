<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.select" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container style="flex-direction: column">
		<div class=titleBox style="margin-top: 3rem;">동아리 목록</div>
		<div class=headListBox style="height: 30rem; margin-bottom: 3rem; flex-direction: column;">
			<%
				select selectClub = new select();
				ArrayList<String> clubNames = selectClub.getClubNames();
				for(int i=0; i<clubNames.size(); i++){
			%>
				<a href="/23_1_DB_final/detailedClub.jsp?clubName=<%= clubNames.get(i) %>" class=mainClickBox><%= clubNames.get(i) %></a>	
			<%
				}
			%>
			
		</div>
	</div>
</body>
</html>

