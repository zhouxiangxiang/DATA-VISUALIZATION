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

	<% 
		int jdata[][] = new int [100][2];
		for (int i = 0; i < 100; ++i) {
			jdata[i][0] = i + 1;
			jdata[i][1] = (i + 1) * (i + 1);
		}
	%>
	
	<script type="text/javascript" src="./js/line_char.js"></script>
	<script type="text/javascript">
		var jstr = [];
		<% for (int j = 0; j < 100; ++j) { %>
			var i = "<%=j%>";
			jstr[i] = {'x': "<%=jdata[j][0]%>", 'y':  "<%=jdata[j][1]%>"};
		<% } %>
		InitChart(jstr);
	</script>

	<% 
		Date nowday = new Date(); 
	%>
	<%= nowday %>
</body>

</html>
