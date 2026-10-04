<%@page import="java.util.List"%>
<%@page import="com.demo.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
body {
	margin: 0px;
	overflow-x: hidden;
}

table {
	width: 95%;
	border-collapse: collapse;
	font-size: 20px;
	margin: 20px auto;
}

table tr {
	text-align: center;
}

table th {
	background-color: #044AD3;
	color: #E1E3E1;
	height: 60px;
	border: 1px solid lightgrey;
}

table td {
	background-color: #AAD4EC;
	color: black;
	height: 60px;
	border: 1px solid lightgrey;
}

#search-container {
	display: flex;
	gap: 10px;
	font-size: 22px;
	margin-left: 250px;
	margin-top: 20px;
}

#search-container input {
	height: 35px;
	width: 350px;
	border: 1px solid lightgrey;
	border-radius: 6px;
	position: relative;
	top: 22px;
	font-size: 20px;
}

#search-container button {
	height: 40px;
	width: 50px;
	font-size: 30px;
	margin-top: 22px;
	border-radius: 7px;
	background-color: #A2D5AC;
}

#search {
	color: black;
	position: relative;
	top: 0px;
	left: -1px;
}

#table-container {
	border: 1.5px solid lightgrey;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	border-radius: 9px;
	width: 92%;
	height: 100%;
	background-color: #A2D5AC;
	display: flex;
	justify-content: center;
	position: relative;
	left: 80px;
	display: flex;
	justify-content: center;
}

#footer {
	position: relative;
	bottom: -460px;
}

#delete {
	background-color: red;
	height: 38px;
	width: 63px;
	border: 2px solid lightgrey;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	padding-bottom: 13px;
	padding-right: 23px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<form action="searchQuery" method="post">
		<div id="search-container">
			<h3>Search student detail by:</h3>
			<input type="text" placeholder="&nbsp;&nbsp;Id or Email.."
				name="input">
			<button type="submit">
				<b><span class="material-symbols-outlined" id="search">
						search </span></b>
			</button>
			<%
			Student deletedStudent = (Student) request.getAttribute("delete-success-msg");
			if (deletedStudent != null) {
			%>
			<script>
				alert("<%=deletedStudent.getId()+" "+deletedStudent.getName()+" deleted successfully" %>");
			</script>
			<%
			}else{
			%>
			<%="" %>
			<%} %>
		</div>

	</form>

	<%
	Student s = (Student) session.getAttribute("student");
	%>
	<%
	if (s != null) {
	%>
	<div id="table-container">

		<%
		List<Student> studentList = (List) request.getAttribute("student-list");
		Student studentDetail = (Student) request.getAttribute("student-details");

		if (studentList != null && s != null) {
		%>
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Delete</th>
			</tr>
			<%
			for (Student std : studentList) {
			%>

			<tr>
				<td><%=std.getId()%></td>
				<td><%=std.getName()%></td>
				<td><%=std.getPhone()%></td>
				<td><%=std.getEmail()%></td>
				<td>
					<form action="delete" method="post">
						<input type="hidden" name="id" value="<%=std.getId()%>">
						<button type="submit" id="delete">
							<span class="material-symbols-outlined"> delete </span>
						</button>
					</form>
				</td>
			</tr>

			<%
			}
			%>
		</table>
		<%
		} else if (studentDetail != null && s != null) {
		%>

		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Delete</th>
			</tr>
			<tr>
				<td><%=studentDetail.getId()%></td>
				<td><%=studentDetail.getName()%></td>
				<td><%=studentDetail.getPhone()%></td>
				<td><%=studentDetail.getEmail()%></td>
				<td>
					<form action="delete" method="post">
						<input type="hidden" name="id" value="<%=studentDetail.getId()%>">
						<button type="submit" id="delete">
							<span class="material-symbols-outlined"> delete </span>
						</button>
					</form>
				</td>
			</tr>
			<%
			} else {
			%>
			<h2><%="Enter id or email or search all student details"%></h2>
			<%
			}
			%>
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