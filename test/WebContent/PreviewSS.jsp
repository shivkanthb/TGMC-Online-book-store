<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>Online Book Store</title>
<meta name="description" content="online store" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link rel="stylesheet" type="text/css" href="css/style2.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/image_slide.js"></script>



</head>

<body>
	
	
	<div id="s0">
		<div id="welcome">
			<h1>BOOK STORE</h1>

		</div>
		
		
		<div id="welcome_slogan">
			<h1>Keep calm and read books..</h1>
		</div>
	
	</div>

	<div id="menubar">
	<ul id="menu">
			<li class="current"><a href="AdminHome.jsp">Home</a></li><%String admin=(String)session.getAttribute("admin");if(admin==null)response.sendRedirect("AdminLogin.jsp");%>
			<li><a href="Adminpwd.jsp">Change Password</a></li>
			<li><a href="BookManagement.jsp">Manage Book Store</a></li>
			<li><a href="Reports.jsp">Reports</a></li>
			<li><a href="ManageSlide.jsp">Manage SlideShow</a></li>
			<li><a href="AdminFeedback.jsp">Feedback</a></li>
			<li><a href="AdminLogout.jsp">Logout</a></li>

		</ul>
	</div>
	<!--close menubar-->

	<div id="site_content">

		
<div class="sidebar_container">

			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="SlideShow.jsp" >Add Images</a>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="DeleteSlideShow.jsp" >Delete Images</a>
					
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->

		

			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="PreviewSS.jsp" >Preview Slideshow</a>
					
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->

		</div>
		<!--close sidebar_container-->
  <ul class="slideshow">
      <%
      Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
String query="SELECT * FROM SLIDESHOW ";

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);

ResultSet rs = statement.executeQuery();
while(rs.next())
{

      
      %>
        <li class="show"><img width="680" height="250" src="images/<%=rs.getString(2) %>" alt="&quot;<%=rs.getString(3) %>&quot;" /></li>
      
<%} %>
     
      </ul>   	 
	 

		
</div>
			
</body>
<script type="text/javascript" src="js/search.js"></script></html>