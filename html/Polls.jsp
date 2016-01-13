<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date, java.text.*" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <link href="./mq.css" rel="stylesheet" type="text/css">

    <title>zhouxiangxiang personal website</title>
    <center>  <h1> POLLS </h1> </center>
    <center>  <h2> If you like it, cast your vote.</h2> </center>
</head>

<body>
    <div id="content">
        <div id="polls">
            <div class="row">
                <div class="small-widget">
                	<span> <b> type deduction   </b> <span>
           	<button id="type_deduction" onclick="addNumber()"> 
		    <%
			int num = SupportAccount::getNumber();
		    %>
                    <%= num%> 
                  	  <img src="../img/pollSupport.jpg" width="20" height="20"> support </img> 
                </button>	

                <script>
		    function addNumber() {
		        var btn = document.getElementById("type_deduction");
		        btn.innerHTML = <%= ++num%> + '  support';
		    }
		</script>

                   <button>	
                  	  1
                  	  <img src="../img/pollUnsupport.jpg" width="20" height="20"> unsupport </img> 
                  	</button>  
                </div>

                <div class="small-widget">
                  <b> rvalue reference </b> 
                  <span> <button type="button"> support </button>  </span> 
                   <button>	
                  	  1
                  	<img src="../img/pollUnsupport.jpg" width="20" height="20"> unsupport </img> 
                   </button>  
                </div>

                <div class="small-widget">
                	<b> universe reference </b> 
                   <span> <button type="button"> support </button>  </span> 
                   <button>	
                  	  1
                  	  <img src="../img/pollUnsupport.jpg" width="20" height="20"> unsupport </img> 
                  	</button>  
                </div>

                <div class="small-widget">
                	<b> move semantics and perfect forward</b> 
                   <span> <button type="button"> support </button>  </span> 
                   <button>	
                  	  1
                  	  <img src="../img/pollUnsupport.jpg" width="20" height="20"> unsupport </img> 
                  	</button>  
                </div>
        </div>

     </div>
</body>

</html>
