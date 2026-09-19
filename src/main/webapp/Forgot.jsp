<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	left: 580px;
	top: 60px;
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
	color:white;
	border: 2px solid grey;
	border-radius: 7px;
	background-color: #557C83; 
	width : 110px;
	height: 40px; 
	position : relative;
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
	width: 300px;
	position: relative;
	left: 800px;
	top: 20px;
}

#heading h3 {
	font-size: 60px;
}
a{
	text-decoration:none;
	position:relative;
	left:140px;
}</style>
<body>

	<div id="heading">
	<h1>&nbsp;&nbsp;Forgot Password?</h1>
	</div>
	<div id="container">
	<form action="forgotPassword" method="post">
		<table>
			<tr>
				<td>Enter the user email :</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>Enter the new passowrd :</td>
				<td><input type="text" name="password"></td>
			</tr>

			<tr>
				<td>Confirm New Password :</td>
				<td><input type="text" name="confirm"></td>
			</tr>
			<tr>
				<td><button type="submit">Reset</button></td>
			</tr>
		</table>
	</form>
	</div>
	
</body>
</html>