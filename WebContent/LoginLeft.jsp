<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %> <!-- 현재 페이지를 세션에 추가해줌 -->
<%--
세션 객체에 id 속성이 있으면 해당 값(id)을 가져와서 로그인 유지 상태를 보여주고,
세션 객체에 id 속성이 없으면 로그인을 할 수 있는 화면을 보여준다.
 --%>
 <%
String id = (String) session.getAttribute("id");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Left</title>
</head>
<body>
<a href="login.jsp"><h3>LOGIN</h3></a>
</body>
</html>