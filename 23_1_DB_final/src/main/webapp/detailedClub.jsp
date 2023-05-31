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
		<a href="/23_1_DB_final/addMember.jsp?clubName=<%= clubName %>" class=mainClickBox style="height: 10rem;">부원 추가</a>
		<a href="/23_1_DB_final/deleteClub.jsp?clubName=<%= clubName %>" class=mainClickBox style="height: 10rem;">동아리 폐지</a>
		<a href="/23_1_DB_final/addProf.jsp?clubName=<%= clubName %>" class=mainClickBox style="height: 10rem;">지도교수 추가</a>
		<a href="/23_1_DB_final/addProf.jsp?clubName=<%= clubName %>" class=mainClickBox style="height: 10rem;">동아리 활동 추가</a>
	</div>
</body>
</html>