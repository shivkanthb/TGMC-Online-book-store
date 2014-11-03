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
<script type="text/javascript" src="js/booksvalidation.js"></script>



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

		


<form method="post" action="AdminBookReports.jsp" id="f1"><input type="text" style="display:none" id="ff" name="date"></input></form>
<form method="post" action="AdminPeriodBookSales.jsp" id="f"><input type="text" style="display:none" id="ff1" name="date"></input>
<input type="text" style="display:none" id="ff2" name="date1"></input>
</form>


<%

Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
String query="SELECT * FROM BOOKS";
String query1="SELECT * FROM RATE WHERE ISBN=?";


PreparedStatement sm=connection.prepareStatement(query);
PreparedStatement sm1=connection.prepareStatement(query1);


ResultSet rs=sm.executeQuery();
ResultSet rs1=null;




%>



<script> var i=0;
var isbn=new Array();
var cost_price=new Array();
var sp=new Array();
var discount=new Array();





function cha()
{
	for(j=0;j<i;j++)
		if(document.getElementById('isbn').value==isbn[j])
			break;
	document.getElementById('cost_price').value=cost_price[j];
	document.getElementById('sp').value=sp[j];
	document.getElementById('discount').value=discount[j];
	
	
	
	
	
	
	}
</script>


<div class="bookshow">



<form method="post" action="Updatepricedb.jsp" class="form_settings" onSubmit="return valPrice()">
<table border="0">
<tbody>

<tr>
<td>
<label>ISBN : </label></td>

<td>
<select name="isbn" id="isbn" onchange="cha()">

<%
String isbn="";
float cost_price=0;
float sp=0;
float discount=0;



while(rs.next())
{
 cost_price=0;
 sp=0;
 discount=0;

isbn=rs.getString(1);
cost_price=Float.parseFloat(rs.getString(4));

sm1.setString(1,isbn);
rs1=sm1.executeQuery();
if(rs1.next())
{
sp=Float.parseFloat(rs1.getString(2));
discount=Float.parseFloat(rs1.getString(3));
}




%>

<script>

isbn[i]='<%=isbn%>'
cost_price[i]='<%=cost_price%>'
sp[i]=<%=sp%>
discount[i]=<%=discount%>

i++;
</script>


<option value="<%=isbn %>" ><%=isbn %></option>
<%} %>
</select></td>
</tr>

<tr>
<td>
<label>cost price</label></td>
<td><input type="text" id="cost_price" name="cp" ></input></td>
</tr>

<tr>
<td>
<label>Selling price</label></td>
<td><input type="text" id="sp" name="sp"></input></td>
</tr>


<tr>
<td>
<label>Discount</label></td>
<td><input type="text" id="discount" name="discount"></input></td>
</tr>


<tr>
<td>


<div id="test" style="color:red;font-size:140%"></div>
</td>
</tr>




<tr>
<td>

<button class="form_button">Update</button>
</td>
</tr>

</tbody>
</table>
</form>

</div>

</body>
<script>cha()</script>
<script type="text/javascript" src="js/search.js"></script></html>




