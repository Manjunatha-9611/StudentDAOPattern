
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<style>
body {
	background-color: #E5EEC1;
	margin: 0px;
}

#container {
	height: 350px;
	width: 650px;
	background-color: #A2D5AC;
	border: 1px solid lightgrey;
	border-radius: 40px;
	padding: 10px;
	position: relative;
	left: 610px;
	top: 60px;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.5);
}

table tr {
	display: grid;
	grid-template-columns: 300px 200px;
	padding: 20px;
	align-items: center;
}

table {
	font-size: 22px;
	font-weight: 200px;
	position: relative;
	top: 7px;
}

table tr button {
	font-size: 25px;
	color: white;
	border: 2px solid grey;
	border-radius: 7px;
	background-color: #557C83;
	width: 110px;
	height: 40px;
	position: relative;
	left: 230px;
}

input {
	height: 35px;
	width: 280px;
	border: 2px lightblue solid;
	font-size: 22px;
	border-radius: 9px;
}

#heading {
	border: 2px cream solid;
	heigth: 50px;
	width: 370px;
	position: relative;
	left: 780px;
	top: 20px;
	border: 2px solid lightgrey;
	border-radius: 10px;
	background-color: #A2D5AC;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.5);
}

#heading h1 {
	font-size: 30px;
	margin-left: 30px;
	display: inline-block;
}

a {
	text-decoration: none;
	position: relative;
	left: 40px;
}

img {
	width: 80px;
	height: 80px;
	position: relative;
	top: 23px;
	left: 5px;
}
</style>
<body>
	<div id="heading">
		<h1>Welcome to SDMS</h1>
		<img src="./image/favicon.png">
		<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login
			Form</h1>
	</div>

	<div id="container">
		<form action="login" method="POST">

			<table>
				<tr>
					<td>Enter the Email :</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>Enter the Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><button type="Submit">Login</button></td>
				</tr>
				<tr>
					<td><a href="Forgot.jsp">Forgot Password?</a></td>
					<td><a href="Register.jsp">New User?Register</a></td>
				</tr>
			</table>
		</form>
	</div>
	<%
	String successMsg = (String) request.getAttribute("success-msg");
	%>
	
	<%
		String errorMsg = (String) request.getAttribute("error-msg");
		if (errorMsg != null) {
		%>
		<%=errorMsg%>
		<%
		}
		%>
	<%-- <%
	if (successMsg != null) {
	%>
	<script>
		alert("<%=successMsg %>");
	</script>
	<%
	}
	%> --%>
</body>
</html>