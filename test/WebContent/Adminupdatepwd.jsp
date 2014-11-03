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
  <style>
  
  #t2{

opacity:0.5
  }
  </style>
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
    </div><!--close menubar-->	
    <div id="site_content">	
	 <%Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
    %>
      
			<%
	String x=(String)session.getAttribute("admin");
	
	String y=request.getParameter("newpwd");
String query = "UPDATE ADMINLOGIN SET PWD=? WHERE ADMINID=?";
	
PreparedStatement statement = connection.prepareStatement(query);
statement.setString(1, y);
statement.setString(2, x);
int r=0;
try{
 r=statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
if(r>0){
		%>	
		<p>Updated successfully
		</p>
		<%} %>
				</div>
	</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>