<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Student login</title>
		<link rel="stylesheet" type="text/css" href="login.css">
		<script type="text/javascript" src="login.js"></script>
	</head>
	`
	<body bgcolor="#FFA500">
	
		<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to home page if already logged in
        if(email!=null){
            response.sendRedirect("../homepage/home.jsp");
        }
		
 
        String status=request.getParameter("status");
        
        if(status!=null){
            if(status.equals("false")){
                   out.print("Incorrect login details!");                       
            }
            else{
                out.print("Some error occurred!");
            }
        }
        %>
	
		<div class="main">	
		<div class="head">
			<img src="../img/abes_logo.png" class="logo" style="length:12%;width:12%;margin-left:10px;margin-top:0px;"/>
			<input type="submit" value="Search" class="search"/>
			<input type="text" placeholder="Google Search" name="search" id="search" class="search"/>
			<div  class="user"><a href="../../admin/login.jsp" style="text-decoration:none;color:#FFA500;">Admin Login&emsp;</a>
			<a href="" style="text-decoration:none;color:#FFA500;">|&emsp;Faculty Login</a></div>
			</div><br>
		<nav>
			<ul>
				<li><a href="../../home/homepage.jsp">Home</a></li>
				<li><a href="../../home/aboutus.jsp">AboutUs</a></li>
				<li><a href="../login/login.jsp">Student Login</a></li>
				<li><a href="../../home/contactus.jsp">Contact Us</a></li>
				<li><a href="../../home/signup.html">Sign Up</a></li>
			</ul>
		</nav>
		<div class="my">
			<form action="loginRequestHandler.jsp" method="post" onsubmit="return validate()">			
				<table class="table">	
					<caption class="table1">
						<h2>Student Login</h2><hr>
					<caption>
					<tr><td></td></tr>
					<tr>
						<td><input type="text" style="font-size: 18px; height:25px ; width:300px;color:#FFA500;"  placeholder="Login ID" name="email" id="uname" required></td>
					</tr>
					
					<tr><td><br> </td></tr>
					
					<tr>
						<td><input type="password" style="font-size: 18px; height:25px ; width:300px;color:#FFA500;" placeholder="Password" name="password" id="upass" required></td>
					</tr>
					
					<tr><td>&nbsp;&nbsp;&nbsp;<font color='red'><%
											if(((String)session.getAttribute("error"))=="You need to login first")
											
												out.println("You need to login first.");

											
											if(((String)session.getAttribute("errormsg"))=="Invalid username or password.")

												out.println("Invalid username or password.");
												session.invalidate();
											%></font><br></td></tr>
					
					<tr>
						<td><input type="checkbox" value="1" name="1">Keep me logged in</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>&emsp;
						<input type="submit" value="Log In" style="font-size:18px;background-color:#FFA500;width:100px;color:white;" onclick="validate();">&emsp;&emsp;&emsp;
						<input type="reset" value="Reset" style="font-size:18px;background-color:#FFA500;width:100px;color:white;"/>
						</td>
					</tr>
					<tr><td></td></tr>
					<tr><th>&emsp;<a href="forgot.jsp">Forgot Password</a>&emsp;&emsp;</th></tr>
					<tr><td><br></td></tr>
					<tr><th>New user?<a href="../../home/signup.html">Register here</a></th></tr>
				</table>
				
			</form>
		</div>
	</body>
	
</html>
