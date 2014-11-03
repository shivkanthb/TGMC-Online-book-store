<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%  Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>
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
	<script type="text/javascript" src="js/search.js"></script>
	
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
			<li class="current"><a href="AdminHome.jsp">Home</a></li>
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
						<a href="#" >Add</a>
						<ul>
							<a href="book.jsp"><li>Books</li></a>
							<a href="author.jsp"><li>Authors</li></a>
							<a href="Publisher.jsp"><li>Publishers</li></a>
							<a href="Categrory.jsp"><li>Categories</li></a>
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#" >Update</a>
						<ul>
							<a href="UpdateStock.jsp" ><li>Stock</li></a>
							<a href="UpdateBookDetails.jsp" ><li>Details</li></a><a href="UpdatePrice.jsp" ><li>Price</li></a>
						
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#" >Delete</a>
						<ul>
							<a href="DeleteStock.jsp" ><li>Stock</li></a>
							<a href="DeleteBookDetails.jsp" ><li>Details</li></a>
						
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->

		


		</div>
		<!--close sidebar_container-->


<%
String pid;
String name=request.getParameter("name");
String city=request.getParameter("city");

String query="SELECT COUNT(*) FROM PUBLISHER ";

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);

ResultSet rs = statement.executeQuery();
rs.next();

pid=rs.getString(1);


query = "INSERT INTO PUBLISHER VALUES(?,?,?)";

statement = connection.prepareStatement(query);

statement.setString(1, pid);
statement.setString(2,name);
statement.setString(3,city);

try{
statement.executeUpdate();%>
<p>Added Successfully</p><%
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}%>


</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>