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
<script type="text/javascript" src="js/booksvalidation.js"></script>



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

		


<form class="form_settings" method="post" action="AdminBookReports.jsp" id="f1"><input type="text" style="display:none" id="ff" name="date"></input></form>
<form class="form_settings" method="post" action="AdminPeriodBookSales.jsp" id="f"><input type="text" style="display:none" id="ff1" name="date"></input>
<input type="text" style="display:none" id="ff2" name="date1"></input>
</form>


<%
Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
String query="SELECT * FROM PUBLISHER";
String query1="SELECT * FROM AUTHOR";
String query2="SELECT * FROM CATEGORY";

PreparedStatement sm=connection.prepareStatement(query);
PreparedStatement sm1=connection.prepareStatement(query1);
PreparedStatement sm2=connection.prepareStatement(query2);

ResultSet rs=sm.executeQuery();
ResultSet rs1=sm1.executeQuery();
ResultSet rs2=sm2.executeQuery();



%>

<div class="bookshow">



<form class="form_settings" method="post" action="AddBooks.jsp" onSubmit="return validate()">
<table border="0">
<tbody>

<tr>


<td><label>ISBN : </label></td>
  <td><input type="text" id="isbn" name="isbn" ></input></td>
  </tr>

<tr>
<td><label>Title :  </label></td>
 <td><input type="text" id="title" name="title" ></input></td>
 </tr>

 <tr>
 <td>
 <label>Pages :  </label></td>
 <td><input type="text" id="pages" name="pages" ></input></td>
 </tr>
 
 <tr>
 <td>
<label>Edition :  </label></td>
<td><input type="text" name="edition" id="edition" ></input></td>
</tr>

<tr>
<td><label>Year :  </label></td>

<td><input type="text" name="year" id="year" ></input></td>
</tr>

<tr>
<td>
<label>Publication :  </label></td>

<td>
<br>
<select name="pubname">
<%
String x;while(rs.next()) {
x=rs.getString(2);
%>

<option value="<%=x%>"><%=x%></option>
<%} %>
</select></td>
</tr>

<tr>

<td><label>Author :  </label></td>

<td><br><select name="auname">
<%String y;
while(rs1.next()) {
x=rs1.getString(2);
y=rs1.getString(3);
%>
<option value="<%=x%> <%=y%>"><%=x%> <%=y%></option>
<%} %>
</select></td>
</tr>

<tr>

<td><label>Category :  </label></td>
<td><br><select name="catname">
<%
while(rs2.next()) {
x=rs2.getString(2);
%>

<option value="<%=x%>"><%=x%></option>
<%} %>
</select></td>
</tr>

<tr>
<td>
<label>Rating : </label></td>
<td><input type="text" name="rating" id="rating"></input></td>
</tr>

<tr>
<td><label>Expected Date of Arrival :  </label></td>
<td><select name="d">
<%int d=1,year=2013,m=1;

while(d<=31){ %>
<option value='<%=d %>'><%=d %></option>

<%d++;
} %>
</select></td>
<td><select name="m">
<%

while(m<=12){ %>
<option value='<%=m %>'><%=m %></option>

<%
m++;
} %>
</select></td>
<td><select name="y">
<%

while(year<=2100){ %>
<option value='<%=year %>'><%=year %></option>

<%year++;
} %>
</select></td>
</tr>

<tr>
<td><label>Cost Price :  </label></td>
<td><input type="text" name="cp" id="cp" ></input></td>
</tr>
<tr>
<td><label>Selling Price :  </label></td>
<td><input type="text" name="sp" id="sp"></input></td>
</tr>

<tr>
<td><label>No of Copies :  </label></td>
<td><input type="text" name="noc" id="noc" ></input></td>
</tr>

<tr>
<td><label>Discount :  </label></td>
<td><input type="text" name="dis" id="dis"></input></td>
</tr>

<tr><td><label>ImageURL(Add file to WebContent/images folder in server) : </label></td>
<td><input type="file" name="img" id="img"></input></td>
</tr>

<tr>
<td><label>Description :  </label></td>
<td><input type="text" name="description"  id="description"></input></td>
</tr>


<tr>
<td>
<div id="test" style="color:red;font-size:140%;"></div></tr>

<tr>
<td>
<button class="form_button">Add</button></td>
</tr>

</tbody>
</table>
</form>

</div>

</body>
</html>