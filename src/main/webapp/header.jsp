<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
img {
	width: 80px;
	height: 80px;
}

body {
	background-color: #E5EEC1;
	margin: 0px;
}

#container {
	width: 100%;
	height: 100px;
	border: 2px solid lightgrey;
	background-color: #A2D5AC;
	display:flex;
	justify-content:space-around;
	box-shadow:0px 10px 15px -3px rgba(0, 0, 0, 0.25);
}

#left-navbar {
	position: relative;
	top: 8px;
	left: -30px;
}

#left-heading {
	display: inline-block;
	color: #11538C;
	position: relative;
	top: -30px;
}

#middle-navbar{
	display:flex;
	justify-content:space-between;
	gap:50px;
	font-size:28px;
	color: #11538C;
	position:relative;
	top:30px;
	left:-120px;
	
}
#middle-navbar a:link{
	text-decoration:none;
	margin-left:40px;
	color:#11538C;
}
#middle-navbar a:visited{
	text-decoration:none;
	color:#11538C;
}

#rght-navbar button{
	position:relative;
	top:22px;
	left:-80px;
	height:50px;
	width:150px;
	background-color:#B22222;
	border:1px solid lightgrey;
	border-radius:10px;
	font-size:20px;
	font-weight:bold;
	color:white;
	display:flex;
	justify-content:center;
	box-shadow:0px 10px 15px -3px rgba(0, 0, 0, 0.2);
}
#rght-navbar button p{
	margin-top:12px;
}

.material-symbols-outlined{
	position:relative;
	top:11px;
	left:10px;
}
</style>
</head>

<body>
	<div id="container">
		<div id="left-navbar">
			<img src="./image/favicon.png">
			<h1 id="left-heading">Student Data Management System</h1>
		</div>
		<div id="middle-navbar">
			<b><a href="ViewStudent.jsp" target="contentIFrame">View Student</a> 
			<a href="UpdateStudent.jsp" target="contentIFrame">Update Student</a> 
			<a href="DeleteStudent.jsp" target="contentIFrame">Delete Records</a>
			</b>
		</div>
		<div id="rght-navbar">
		<button type="submit"><p>Logout</p><span class="material-symbols-outlined">
logout
</span></button>
		</div>
	</div>
</body>
</html>