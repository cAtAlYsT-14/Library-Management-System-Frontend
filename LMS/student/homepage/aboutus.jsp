<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About us</title>
		<link rel="stylesheet" type="text/css" href="aboutus.css">
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
				<li><a href="contactus.jsp">Contact Us</a></li>
				<li><a href="../logout/logout.jsp">Logout</a></li>
			</ul>
		</nav>
	</div>
		<div class="about">
			<center><h2><br>About Library</h2></center><hr>
				<p>Central Library occupies a place of pride in ABES Ghaziabad and is an essential component of the institute outstanding research and education mission.
				It is a most lively place on the campus providing a safe, comfortable and friendly environment that enables learning and advancement of knowledge, and promotes discovery
				and scholarship. The mission of the Central Library is to facilitate creation of new knowledge through acquisition, organization and dissemination of knowledge resources
				and providing for value added services.<br><br>
				The Central Library houses a total collection of over three lakh documents comprising of books, theses, journals, video cassettes and compact discs in the fields of science, 
				engineering, humanities, literature and management. All in-house operations in the library are fully computerized using the LibSys software package that also provides web-based
				access to the online catalogue of Library. 
				<br><br><br>&emsp;&emsp;&emsp;
				<img src="../img/lab_img2.jpg" width="700" height="400"><br><br>&emsp;&emsp;&emsp;
				<img src="../img/lab_img.jpg"/ width="700" height="400"/>
				</p>
			</div>
		</body>
</html>