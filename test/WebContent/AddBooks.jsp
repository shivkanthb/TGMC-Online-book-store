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
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String noofpages = request.getParameter("pages");
		String cp = request.getParameter("cp");
		String edition = request.getParameter("edition");
		String year = request.getParameter("year");
		String pname = request.getParameter("pubname");
		String des = request.getParameter("description");
		String rating = request.getParameter("rating");
		String img = request.getParameter("img");
		String cat = request.getParameter("catname");
		String auname = request.getParameter("auname");
		String noc = request.getParameter("noc");
		String sp = request.getParameter("sp");
		String dis = request.getParameter("dis");

		String y = request.getParameter("y");
		String d = request.getParameter("d");

		String m = request.getParameter("m");

		String acquireddate = y + "-" + m + "-" + d;

		Connection connection = DriverManager.getConnection(
				"jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");

		String afname = auname.substring(0, auname.indexOf(" "));
		String alname = auname.substring(auname.indexOf(" ") + 1);

		String query = "SELECT AUTHORID FROM AUTHOR WHERE FIRSTNAME=? AND LASTNAME=? ";

		PreparedStatement statement = connection.prepareStatement(query);

		statement.setString(1, afname);
		statement.setString(2, alname);

		ResultSet rs = statement.executeQuery();
		rs.next();
		String aid = rs.getString(1);
		
		query = "SELECT PUBID FROM PUBLISHER WHERE NAME=? ";
		statement = connection.prepareStatement(query);
		statement.setString(1, pname);

		rs = statement.executeQuery();
		rs.next();
		String pid = rs.getString(1);

		query = "SELECT CAT FROM CATEGORY WHERE NAME=? ";
		statement = connection.prepareStatement(query);
		statement.setString(1, cat);
		rs = statement.executeQuery();
		rs.next();
		String cid = rs.getString(1);

		query = "INSERT INTO BOOKS VALUES(?,?,?,?,?,?,?,?,?,?)";
		statement = connection.prepareStatement(query);
		statement.setString(1, isbn);
		statement.setString(2, title);
		statement.setInt(3, Integer.parseInt(noofpages));
		statement.setFloat(4, Float.parseFloat(cp));
		statement.setString(5, edition);
		statement.setInt(6, Integer.parseInt(year));
		statement.setString(7, pid);
		statement.setString(8, des);
		statement.setString(9, rating);
		statement.setString(10, img);
try{
		statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
		query = "INSERT INTO AUTH_BOOKS VALUES(?,?)";
		statement = connection.prepareStatement(query);
		statement.setString(1, isbn);
		statement.setString(2, aid);
		try{
		statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
		query = "INSERT INTO BOOK_CAT VALUES(?,?)";
		statement = connection.prepareStatement(query);
		statement.setString(1, isbn);
		statement.setString(2, cid);
		try{
		statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
		query = "INSERT INTO CATALOGUE VALUES(?,?,?)";
		statement = connection.prepareStatement(query);
		statement.setString(1, isbn);

		java.util.Date date = new SimpleDateFormat("yyyy-MM-dd")
				.parse(acquireddate);
		java.sql.Date da = new java.sql.Date(date.getTime());

		statement.setDate(2, da); //****Important change DATE *****
		statement.setInt(3, Integer.parseInt(noc));
		try{
		statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
		query = "INSERT INTO RATE VALUES(?,?,?)";
		statement = connection.prepareStatement(query);
		statement.setString(1, isbn);
		statement.setFloat(2, Float.parseFloat(sp));
		statement.setFloat(3, Float.parseFloat(dis));
		try{
		statement.executeUpdate();
		%>
		<p>Success</p>	
		<%}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
	%>





	</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>