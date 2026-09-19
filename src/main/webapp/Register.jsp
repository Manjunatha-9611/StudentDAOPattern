<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
body {
	background-color: #E5EEC1;
	margin: 0px;
	overflow: hidden;
}

#container {
	height: 600px;
	width: 650px;
	background-color: #A2D5AC;
	border: 1px solid lightgrey;
	border-radius: 40px;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.5);
	padding: 10px;
	position: relative;
	left: 620px;
	top: 50px;
}

table tr {
	display: grid;
	grid-template-columns: 300px 100px;
	padding: 20px;
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
	width: 380px;
	border-radius: 10px;
	background-color: #A2D5AC;
	box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.5);
	position: relative;
	left: 795px;
	top: 20px;
	border: 2px solid lightgrey;
	
}

#heading h1 {
	font-size: 30px;
	margin-left: 30px;
	display: inline-block;
}

a {
	text-decoration: none;
	position: relative;
	left: 140px;
}

img {
	width: 80px;
	height: 80px;
	position: relative;
	top: 23px;
	left: 5px;
}
</style>
</head>
<body>
	<div id="heading">
		<h1>Welcome to SDMS</h1>
		<img src="./image/favicon.png">
		<h1>Registration Form</h1>
	</div>

	<div id="container">
		<form action="register" method="POST">

			<table>
				<tr>
					<td>Enter the username :</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Enter the Phone :</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>Enter the Email :</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>Enter the Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>Enter the Confirm Password :</td>
					<td><input type="password" name="confirm"></td>
				</tr>
				<tr>
					<td><button type="Submit">Register</button></td>
				</tr>
				<tr>
					<td><a href="Login.jsp">Already have account?Login here</a></td>
				</tr>
			</table>
		</form>
		<%
		String s = (String) request.getAttribute("password-mismatch");
		%>
		<%
		if (s != null) {
		%>
		<h2 style="color: red"><%=s%></h2>
		<%
		}
		%>
		<%
		String s1 = (String) request.getAttribute("account-not-found");
		%>
		<%
		if (s1 != null) {
		%>
		<h2 style="color: red"><%=s1%></h2>
		<%
		}
		%>
	</div>
</body>
</html>