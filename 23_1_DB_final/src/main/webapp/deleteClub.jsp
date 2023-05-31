<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.delete_member" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>


<%

delete_member member = new delete_member();
member.deleteClub(clubName);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/index.css">
<script src="js/index.js"></script>
</head>
<body>
	<div class=container>
		<div>동아리 삭제가 정상적으로 완료되었습니다.</div>
		<a href="/23_1_DB_final/">처음으로 돌아가기</a>

	</div>
</body> 
</html>