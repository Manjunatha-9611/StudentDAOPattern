<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	overflow-x: hidden;
}

h2 {
	font-size: 40px;
	margin-left: 20px;
}

#iframe-container {
	
	position:relative;
	top:-20px;
	display: flex;
	justify-content: center; /* Centers horizontally */
	align-items: center; /* Centers vertically */
	/* min-height: 100vh; *//* Forces container to fill the full screen height */
	
}

iframe {

	width: 83%; /* Adjust width as needed */
	 height:600px;/* Adjust height as needed */
	border: none; /* Removes default ugly border */
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);/* Optional: adds a clean shadow */
	border-radius:10px;
}

</style>
<title>Dashboard</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<h2>Welcome to SDMS, Manju!!</h2>
	<div id="iframe-container">

		<iframe src="" name="contentIFrame"> </iframe>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>