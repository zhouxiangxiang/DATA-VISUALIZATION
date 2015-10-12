<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date, java.text.*" %>
<html>

<head>
	<title> MAGIC </title>
	
	<link rel="stylesheet" href="./css/line_chat.css" type="text/css">  
	<script type="text/javascript" src="./d3/d3.v2.js"></script>
</head>  

<body>
	<p> DATA VISUALIZATION </p>
	<svg id="visualisation" width="1000" height="500"></svg>        
	
	<script type="text/javascript" src="./js/line_char.js"></script>
	<script type="text/javascript">
		InitChart();
	</script>
	<%
	 Date nowday = new Date();

	%>
	<%= nowday %>
</body>


</html>
