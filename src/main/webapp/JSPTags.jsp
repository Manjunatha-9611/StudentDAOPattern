<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<!-- JSP tags -->
	<!-- include directory -->
	<%@include file="header.jsp"%>
	
	<!-- ScriptLet tag -->
	<% Date d = new Date(); %>
	
	
	<!-- Expression tag -->
	<%= d %>
	<br>
	
	<!-- other examples -->
	<%Random rd = new Random();%>
	<%= rd.nextLong() %>

	<%@include file="footer.jsp" %>
</body>
</html>