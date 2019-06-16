<html>
    <head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="home.css">
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
		<br>
		<div>
			<slider>
				<slide><p>Your library is your paradise. ...</p></slide>
				<slide><p>If you have a garden and a library, you have everything you need. ...</p></slide>
				<slide><p>A library is not a luxury but one of the necessities of life. ...</p></slide>
				<slide><p>The library is the temple of learning, and learning has liberated more people than all the wars in history.</p></slide>
			</slider>
		</div>
		
		<div class="body">
		
			<h3>Issue Books</h3>
			<a href=""><img src="../img/joining-the-library.jpg" width="200" height="90"/></a><hr>
			
			<h3>Search Books</h3>
			<a href=""><img src="../img/library-services-library-image-516x249.jpg" width="200" height="90"/></a><hr>
			
			<h3>Categories</h3>
			<a href=""><img src="../img/Mugar_New.jpg" width="200" height="90"/></a><hr>
			
			<h3>Previous Year Question Paper</h3>
			<a href=""><img src="../img/book.jpg" width="200" height="90"/></a><hr>
			
			<h3>Notes</h3>
			<a href=""><img src="../img/metro-library-3.jpg" width="200" height="90"/></a><hr>
		</div>
		
		<footer class="foot">
			<h3>Forum</h3>
			<h5 align="left" >
				ABES Engineering College , Ghaziabad<br> 
				Campus 1, 19th KM Stone,<br>
				NH24 Ghaziabad -201009,U.P<br>
				Office:+91 120 7135112 (Ext: 425)| Fax:+91 120 7135115<br>
				W:<a href="http://abes.ac.in">http://abes.ac.in </a> &emsp;&emsp;&emsp;E:<a href="">mohan.prasad@abes.ac.in</a></h5>
				</div>
			</footer>
    </body>
</html>