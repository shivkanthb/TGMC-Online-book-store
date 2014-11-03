<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
%>
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

		<div id="new">
			<h1>
				<a href="Login.jsp">login</a>| <a href="signtemp.html">sign up</a>
				|<a href="index.html">Account</a> |<a href="Logout.jsp">logout</a> |<a
					href="index.html">contact us</a> |<a href="AboutUs.jsp">about
					us</a>
			</h1>
		</div>
	</div>
	<div id="s1">

		<div id="welcome_slogan">
			<h1>Keep calm and read books..</h1>
		</div>
		<div id="searchbar">

			<form class="form_settings" method="post" action="Search.jsp">

				<label>Search:<input name="val" type="text" size="30"></label>
				<select id="key" onchange="sugg()" name="key">
					<option value="category" selected="selected">Category</option>
					<option value="title">Title</option>
					<option value="publisher">Publisher</option>
					<option value="author">Author</option>
					<option value="4">IV</option>
				</select>

				<button class="form_button">go</button>
			</form>
		</div>
	</div>

	<div id="menubar">
		<ul id="menu">
			<li class="current"><a href="index.html">Home</a></li>
			<li><a href="ourwork.html">Popular</a></li>
			<li><a href="testimonials.html">New Releases</a></li>
			<li><a href="index.html">Pre Order</a></li>
			<li><a href="index.html">Special Offers</a></li>

		</ul>
	</div>
	<!--close menubar-->

	<div id="site_content"></div>
	<!--close sidebar_item-->
	</div>
	<!--close sidebar-->
	<div class="sidebar">
		<div class="sidebar_item">
			<h2>
				<a href="index.html">Add</a>
				<ul>
					<a href="index.html"><li>Artists</li></a>
					<li>Business</li>
				</ul>
			</h2>
		</div>
		<!--close sidebar_item-->
	</div>
	<!--close sidebar-->
	<div class="sidebar">
		<div class="sidebar_item">
			<h2>
				<a href="index.html">Indian Writings</a>
			</h2>
		</div>
		<!--close sidebar_item-->
	</div>
	<!--close sidebar-->
	<div class="sidebar">
		<div class="sidebar_item">
			<h2>
				<a href="index.html">Literature & Fiction</a>
			</h2>

		</div>
		<!--close sidebar_item-->
	</div>
	<!--close sidebar-->
	</div>
	<!--close sidebar_container-->

	<ul class="slideshow">
		<li class="show"><img width="680" height="250"
			src="images/home_1.jpg" alt="&quot;Enter your caption here&quot;" /></li>
		<li><img width="680" height="250" src="images/home_2.jpg"
			alt="&quot;Enter your caption here&quot;" /></li>
	</ul>




	<%
	Connection connection = DriverManager.getConnection(
			"jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
	
	String query="SELECT COUNT(*) FROM USERDETAILS";
	PreparedStatement statement =connection.prepareStatement(query);
			ResultSet rs=statement.executeQuery();
			rs.next();
	out.println("Total Members in your website are"+rs.getString(1));
	
 query="SELECT * FROM USERDETAILS";
	 statement =connection.prepareStatement(query);
			rs=statement.executeQuery();

		%>		
	<table>
		<%	while(rs.next())
			{
				
		%>		
			<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			
			</tr>	
				
		<%	}
			%>
</table>




	</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>