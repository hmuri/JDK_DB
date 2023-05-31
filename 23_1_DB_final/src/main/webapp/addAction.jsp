<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="connect.add_member" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>


<%
// 전송된 데이터 받기
String s_id = request.getParameter("s_id");
String dept_name = request.getParameter("dept_name");
String s_name = request.getParameter("s_name");
String club_name = request.getParameter("club_name");

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
	<!-- 원하는 내용 추가 -->
</body> 
</html>
