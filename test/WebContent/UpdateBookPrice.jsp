<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>
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

		


<form class="form_settings" method="post" action="AdminBookReports.jsp" id="f1"><input type="text" style="display:none" id="ff" name="date"></input></form>
<form class="form_settings" method="post" action="AdminPeriodBookSales.jsp" id="f"><input type="text" style="display:none" id="ff1" name="date"></input>
<input type="text" style="display:none" id="ff2" name="date1"></input>
</form>


<%

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
String query="SELECT * FROM BOOKS";
String query1="SELECT * FROM AUTHOR";
String query2="SELECT * FROM CATEGORY";

PreparedStatement sm=connection.prepareStatement(query);
PreparedStatement sm1=connection.prepareStatement(query1);
PreparedStatement sm2=connection.prepareStatement(query2);

ResultSet rs=sm.executeQuery();
ResultSet rs1=sm1.executeQuery();
ResultSet rs2=sm2.executeQuery();



%>
<script> var i=0;
var isbn=new Array();
var title=new Array();
function cha()
{
	for(j=0;j<i;j++)
		if(document.getElementById('isbn').value==isbn[j])
			break;
	document.getElementById('title').value=title[j];
	}
</script>
<div class="bookshow">

<table>
<tbody>

<form class="form_settings" method="post" action="AddBooks.jsp" >


<label>ISBN : </label>
<select name="isbn" id="isbn" onchange="cha()">

<%
String isbn="";
String title="";
while(rs.next())
{
isbn=rs.getString(1);
title=rs.getString(2);

%>
<script>

isbn[i]='<%=isbn%>'
title[i]='<%=title%>'
i++;
</script>
<option value="<%=isbn %>" ><%=isbn %></option><br/>
<%} %>
</select>

<input type="text" id="title"></input>
<button class="form_button">Add</button>

</form>

</div>

</body>
<script type="text/javascript" src="js/search.js"></script></html>