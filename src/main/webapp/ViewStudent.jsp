<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>

table {
	width: 100%;
	font-size: 25px;
	margin: 0px;
	padding: 0px;
	border-radius:3px;
	margin-top:20px;
	display: flex;
	position:relative;
	left:20px;
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
	justify-content:center;
	align-items:center;
	border:1px solid lightgrey;
}

table td{
	background-color:#AAD4EC;
	color: black;
	height: 60px;
	display: flex;
	justify-content:center;
	align-items:center;
	border:1px solid lightgrey;
}

#search-container{
	display:flex;
	gap:10px;
	font-size:22px;
	margin-left:20px;
	margin-top:20px;
}
#search-container input {
	height:35px;
	width:350px;
	border:1px solid lightgrey;
	border-radius:6px;
	position:relative;
	top:22px;
	font-size:20px;
}
#search-container button{
	height:40px;
	width:50px;
	font-size:30px;
	margin-top:22px;
	border-radius:7px;
	background-color:#A2D5AC;
}
</style>
</head>
<body>

<form action="searchQuery" method="post">
<div id="search-container">
<h3>Search student detail :</h3>
	<input type="text" placeholder="&nbsp;&nbsp;Id or Email..">
	<button type="submit"><b><span class="material-symbols-outlined">
search
</span></b></button>
</div>
	
</form>

	<div id="container">
		<table>
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Phone Number</th>
				<th>Student Email</th>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
		</table>
	</div>
</body>
</html>