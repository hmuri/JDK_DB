<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
	<div class=container>
		<a href="/23_1_DB_final/clubList.jsp?clubName=<%= clubName %>" class=mainClickBox>동아리 목록</a>
		<a href="/23_1_DB_final/selectHead.jsp?clubName=<%= clubName %>" class=mainClickBox>대표 선출</a>
		<a href="/23_1_DB_final/activityStatus.jsp?clubName=<%= clubName %>" class=mainClickBox>활동 현황</a>
	</div>
</body>
</html>