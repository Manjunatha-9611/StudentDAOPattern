<%@page import="com.demo.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	margin: 0px;
	overflow-x: hidden;
}

h2 {
	font-size: 40px;
	margin-left: 80px;
}

#footer {
	position: relative;
	bottom: -430px;
}

/* table styling */
table {

	font-size: 25px;
	margin: 0px;
	padding: 0px;
	border-radius: 7px;
	margin-top: 20px;
	margin-left:-920px;
}

table tr {
	display: grid;
	grid-template-columns: 63% 63% 63% 65%;
	text-align: center;
}

table th {
	background-color: #044AD3;
	color: #E1E3E1;
	height: 60px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid lightgrey;
}

table td {
	background-color: #AAD4EC;
	color: black;
	height: 60px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid lightgrey;
}

#table-container {
	border: 1.5px solid lightgrey;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	border-radius: 9px;
	width: 80%;
	height:180px;
	background-color: #A2D5AC; display : flex;
	justify-content: center;
	position: relative;
	left: 230px;
	display: flex;
	justify-content:center;
}
</style>
<title>Dashboard</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<%
	Student s = (Student) session.getAttribute("student");
	%>
	<%
	if (s != null) {
	%>
	<h2>
		Welcome to SDMS,
		<%=s.getName()%>!!
		<%
	String successMsg = (String) request.getAttribute("success-msg");
	if (successMsg != null) {
	%>
		<%=successMsg%>
		<%
		}
		%>
	</h2>
	<div id="table-container">
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Phone Number</th>
				<th>Email</th>
			</tr>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getPhone()%></td>
				<td><%=s.getEmail()%></td>
			</tr>

		</table>
	</div>
	<%
	} else {
	%>
	<%
	request.setAttribute("error-msg", "Session Expired");
	request.getRequestDispatcher("Login.jsp").forward(request, response);
	%>
	<%
	}
	%>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>