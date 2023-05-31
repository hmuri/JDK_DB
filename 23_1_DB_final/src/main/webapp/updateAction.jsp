<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.update" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>


<%
// 전송된 데이터 받기
String location = request.getParameter("location");
String day = request.getParameter("day");

// add_member 클래스의 인스턴스 생성 및 addStudent() 메서드 호출
update activity = new update();
activity.changeAct(location, day, clubName);
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
		<div>활동 정보 수정이 정상적으로 완료되었습니다.</div>
		<a href="/23_1_DB_final/">처음으로 돌아가기</a>

	</div>
</body> 
</html>
