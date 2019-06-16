<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact us</title>
		<link rel="stylesheet" type="text/css" href="contactus.css">
    </head>
 
    <body bgcolor="FFA500">
	
	   <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
            response.sendRedirect("../login/login.jsp");
			session.setMaxInactiveInterval(500);
			session.setAttribute("error","You need to login first");
        }
        %>
		
	<div class="main">
		<div class="head">
			<img src="../img/abes_logo.png" class="logo" style="length:12%;width:12%;margin-left:10px;margin-top:0px;"/>
			<input type="submit" value="Search" class="search"/>
			<input type="text" placeholder="Google Search" name="search" id="search" class="search"/>
			<%
				out.println("<br><div class='user'>Welcome &nbsp;<font color='red'>"+email+"</font></div>");
			%>
			</div><br>
		<nav>
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="aboutus.jsp">AboutUs</a></li>
				<li><a href="myaccount.jsp">My Account</a></li>
				<li><a href="">Contact Us</a></li>
				<li><a href="../logout/logout.jsp">Logout</a></li>
			</ul>
		</nav>
	</div>
		<div class="about">
			<center><h2><br>Contact Us</h2></center><hr>
			<center><p>ABES Engineering College , Ghaziabad<br> 
				Campus 1, 19th KM Stone,<br>
				NH24 Ghaziabad -201009,U.P<br>
				Office:+91 120 7135112 (Ext: 425)| Fax:+91 120 7135115<br>
				W:<a href="http://abes.ac.in">http://abes.ac.in </a> &emsp;&emsp;&emsp;E:<a href="">mohan.prasad@abes.ac.in</a></p></center>
		</div>
	</body>
	</html>