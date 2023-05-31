<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.add_member" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
    String clubName = request.getParameter("clubName");
    // clubName 변수를 원하는 방식으로 활용
%>


<%
// 전송된 데이터 받기
String s_id = request.getParameter("s_id");
String dept_name = request.getParameter("s_name");
String s_name = request.getParameter("dept_name");
String club_name = clubName;

// add_member 클래스의 인스턴스 생성 및 addStudent() 메서드 호출
add_member member = new add_member();
member.addStudent(s_id, s_name, dept_name, club_name);
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
		<div>부원 추가가 정상적으로 완료되었습니다.</div>
		<a href="/23_1_DB_final/">처음으로 돌아가기</a>

	</div>
</body> 
</html>
