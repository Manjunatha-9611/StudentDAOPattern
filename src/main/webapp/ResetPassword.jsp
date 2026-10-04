<%@page import="com.demo.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<style>
body {
	margin: 0px;
	overflow-x: hidden;
}

table tr {
	display: grid;
	grid-template-columns: 90% 90%;
	font-size: 30px;
	gap: 15px;
	row-gap: 10px;
	padding: 20px;
}

input {
	height: 40px;
	width: 350px;
	margin-left: -140px;
	border-radius: 10px;
	border: 1.5px solid lightgrey;
	font-size: 24px;
}

table tr button {
	height: 40px;
	width: 100px;
	font-size: 23px;
	border: 1px solid lightgrey;
	border-radius: 9px;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	background-color: white;
	color: #11538C;
	color: black;
	position: relative;
	left: 320px;
}

#heading {
	font-size: 20px;
	margin-left: 550px;
	margin-top: 50px;
}

#form-container {
	height: 450px;
	width: 43%;
	background-color: #A2D5AC;
	position: relative;
	left: 550px;
	display: flex;
	justify-content: flex-start;
	border: 1.5px solid lightgrey;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	border-radius: 9px;
}

#footer {
	position: relative;
	bottom: -120px;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div id="heading">
		<%
		Student s = (Student) session.getAttribute("student");
		%>
		<%
		if (s != null) {
		%>
		<h2>
			Reset Password :
			</h2>
			<%
		String successMsg = (String) request.getAttribute("success-msg");
		if (successMsg != null) {
		%>
			<p style="color: red;" ><%=successMsg %></p>
			<%
			}
			String errorMsg = (String) request.getAttribute("error-msg");
			if (errorMsg != null) {
			%>
			<%=errorMsg%>
			<%
			} else {
			%>
			<p style="color: red;"><%=" "%></p>
			<%
			}
			%>
		
	</div>
	<div id="form-container">
		<form action="reset" method="post">
			<table>
				<tr>
					<input type="hidden" name="id" value="<%=s.getId()%>" />
					<td>Enter the old Password :</td>
					<td><input type="password" name="old-password"></td>
				</tr>
				<tr>
					<td>Enter the new Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>Enter the Confirm Password:</td>
					<td><input type="password" name="confirm"></td>
				</tr>
				<tr>
					<td><button type="submit">Reset</button></td>
				</tr>
			</table>
		</form>

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
	<div id="footer"><%@include file="footer.jsp"%></div>

</body>
</html>