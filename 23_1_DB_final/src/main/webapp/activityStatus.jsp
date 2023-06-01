<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.select" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%

select Budget = new select();
ArrayList<String> budget = Budget.areaBudget();

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
		<div class=titleBox>분야별 동아리 평균 예산</div>
		<div class=headListBox style="flex-direction: column;  ">
			<%
				for(int i=0; i<budget.size(); i++){
			%>
				<div class=inputBox style="margin: 1rem 0 1rem 3rem;"><%= budget.get(i) %></div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>