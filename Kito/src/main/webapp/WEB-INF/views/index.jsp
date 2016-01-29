<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Sign Up/Login Box</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="<c:url value="/js/index.js"/>">
		<script>
			var contextPath = '<%=request.getContextPath()%>';
			function loginFunction(){

				_url = contextPath + '/login.do';
	        	$.ajax(_url, {
	        		type:'POST',
	        		data: { 
						userName: 'nguyen',
						pass: '123456'
					},
	        	      success: function(data) {
	        	    	 console.log('data');
	        	         console.log(data);
	        	         //  
				 		 var test = '<%=request.getScheme()+ "://" + request.getServerName() + ":"  
	        	         					+ request.getServerPort() 
	        	         					+ request.getContextPath()%>/home.do'; 
	        	         window.location = test;
	        	      },
	        	      error: function() {
	        	        
	        	      }
	        	   });
			}
		</script>
    
    
    
  </head>

  <body>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div id="logmsk" style="display: block;">
    <div id='close'>X</div>
    <div id="userbox">
        <h1 id="signup" style="background-color: rgb(118, 171, 219); background-position: initial initial; background-repeat: initial initial;">Sign up</h1>
        <div id="sumsk" style="display: none;">Sending</div>
        <input id="name" placeholder="ID" style="opacity: 1; background-color: rgb(255, 255, 255); background-position: initial initial; background-repeat: initial initial;">
        <input id="pass" type="password" placeholder="Password" style="opacity: 1; background-color: rgb(255, 255, 255); background-position: initial initial; background-repeat: initial initial;">
        <p id="logint" style="opacity: 1;">Login as an existing user</p>
        <p id="nameal" style="display: none; opacity: 1;">ID:</p>
        <p id="passal" style="display: none; opacity: 1;">Password:</p>
        <button id="signupb" style="opacity: 0.2; cursor: default;" onclick="loginFunction()">Sign up</button>
    </div>
</div>
    
        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
