<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee data page</title>
<style>
body {
	margin: 0px;
}

#container {
	display:flex;
	justify-content:center;
	margin-top:40px;
	margin-left:-160px;
	
}

table tr {
	display:grid;
	grid-template-columns:100% 100%;
	font-size:30px;
	gap:15px;
	row-gap:10px;
	padding:20px;
}

input{
	height:40px;
	width:350px;
	margin-left:-140px;
	border-radius:10px;
	border:1.5px solid lightgrey;
	font-size:24px;
}
table tr button {
	height:40px;
	width:100px;
	font-size:23px;
	border:1px solid lightgrey;
	border-radius:9px;
	box-shadow:0px 10px 15px -3px rgba(0, 0, 0, 0.2);
	background-color:#A2D5AC;
	color:#11538C;
}

#heading{
	font-size:20px;
	margin-left:150px;
	margin-top:50px;
}
</style>
</head>
<body>
<div id="heading">
<h2>Delete the student record :</h2>
</div>
	<div id="container">
		<form action="delete" method="post">
			<table>
				<tr>
					<td>Enter the student id :</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>Enter the student :</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Enter the phone :</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>Enter the email address :</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td><button type="submit">Delete</button></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>