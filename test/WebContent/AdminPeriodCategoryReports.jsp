<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
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

<%java.util.Date std=new java.util.Date(); 
SimpleDateFormat fo=new SimpleDateFormat("yyyy-MM-dd");
String df=fo.format(std);%>


			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#">Daily</a>
						<ul>
							<a href=# onclick="call('<%=df%>')"><li>Transactions</li></a>
							<a href=# onclick="call2('<%=df%>')"><li>Book Sales</li></a>
							<a href=# onclick="call4('<%=df%>')"><li>Author</li></a>
							<a href=# onclick="call6('<%=df%>')"><li>Category</li></a>
							<a href=# onclick="call8('<%=df%>')"><li>Publisher</li></a>

						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->




			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#">Period</a>
						<ul>
							<a href=# onclick="call1('<%=df%>')"><li>Transactions</li></a>
							<a href=# onclick="call3('<%=df%>')"><li>Book Sales</li></a>
							<a href=# onclick="call5('<%=df%>')"><li>Author</li></a>
							<a href=# onclick="call7('<%=df%>')"><li>Category</li></a>
							<a href=# onclick="call9('<%=df%>')"><li>Publisher</li></a>

						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



		</div>
		<!--close sidebar_container-->


	</div>
	<form class="form_settings" method="post" action="AdminDailyReport.jsp" id="f1">
		<input type="text" style="display: none" id="ff" name="date"></input>
	</form>
	<form class="form_settings" method="post" action="AdminPeriodReport.jsp" id="f">
		<input type="text" style="display: none" id="ff1" name="date"></input>
		<input type="text" style="display: none" id="ff2" name="date1"></input>
	</form>

	<form class="form_settings" method="post" action="AdminBookReports.jsp" id="f2">
		<input type="text" style="display: none" id="ff3" name="date"></input>
	</form>
	<form class="form_settings" method="post" action="AdminPeriodBookSales.jsp" id="f3">
		<input type="text" style="display: none" id="ff4" name="date"></input>
		<input type="text" style="display: none" id="ff5" name="date1"></input>
	</form>




</div>
	<form class="form_settings" method="post" action="AdminAuthorReports.jsp" id="au">
		<input type="text" style="display: none" id="aut" name="date"></input>
	</form>
	<form class="form_settings" method="post" action="AdminPeriodAuthorReports.jsp" id="au1">
		<input type="text" style="display: none" id="aut1" name="date"></input>
		<input type="text" style="display: none" id="aut2" name="date1"></input>
	</form>

	<form class="form_settings" method="post" action="AdminCategoryReports.jsp" id="c">
		<input type="text" style="display: none" id="ct" name="date"></input>
	</form>
	<form class="form_settings" method="post" action="AdminPeriodCategoryReports.jsp" id="c1">
		<input type="text" style="display: none" id="ct1" name="date"></input>
		<input type="text" style="display: none" id="ct2" name="date1"></input>
	</form>
	</div>
	<form class="form_settings" method="post" action="AdminPublisherReports.jsp" id="p">
		<input type="text" style="display: none" id="pt" name="date"></input>
	</form>
	<form class="form_settings" method="post" action="AdminPeriodPublisherReports.jsp" id="p1">
		<input type="text" style="display: none" id="pt1" name="date"></input>
		<input type="text" style="display: none" id="pt2" name="date1"></input>
	</form>

<script>

function call(a)
{
	//a=pass df
	document.getElementById('ff').value=a;
	document.getElementById('f1').submit();
	}
	
function call1(a)
{
	
	document.getElementById('ff1').value=a;
document.getElementById('ff2').value=a;

	document.getElementById('f').submit();
	}
	
function call2(a)
{
	//a=pass df
	document.getElementById('ff3').value=a;
	document.getElementById('f2').submit();
	}
	
function call3(a)
{
	
	document.getElementById('ff4').value=a;
document.getElementById('ff5').value=a;

	document.getElementById('f3').submit();
	}
	
	
function call4(a)
{
	//a=pass df
	document.getElementById('aut').value=a;
	document.getElementById('au').submit();
	}
	
	
	
function call5(a)
{
	
	document.getElementById('aut1').value=a;
document.getElementById('aut2').value=a;

	document.getElementById('au1').submit();
	}
	
function call6(a)
{
	//a=pass df
	document.getElementById('ct').value=a;
	document.getElementById('c').submit();
	}
	
function call7(a)
{
	
	document.getElementById('ct1').value=a;
document.getElementById('ct2').value=a;

	document.getElementById('c1').submit();
	}
	
function call8(a)
{
	//a=pass df
	document.getElementById('pt').value=a;
	document.getElementById('p').submit();
	}
	
function call9(a)
{
	
	document.getElementById('pt1').value=a;
document.getElementById('pt2').value=a;

	document.getElementById('p1').submit();
	}
	
	
	
</script>

<form class="form_settings"> 
<label>Begin Date : </label>
<label>D: </label>
<select name="d" id="d">


<%int d=1,year=2013,m=1;

while(d<=31){ %>
<option value='<%=d %>'><%=d %></option>

<%d++;
} %>
</select>
<label>M: </label>

<select name="m" id="m">
<%

while(m<=12){ %>
<option value='<%=m %>'><%=m %></option>

<%
m++;
} %>
</select>
<label>Y: </label>

<select name="y" id="y">
<%

while(year<=2100){ %>
<option value='<%=year %>'><%=year %></option>

<%year++;
} 
%>
</select>
</form>
<form class="form_settings"> 
<label>End Date : </label>
<label>D: </label>
<select name="d1" id="d1">


<% d=1;year=2013;m=1;

while(d<=31){ %>
<option value='<%=d %>'><%=d %></option>

<%d++;
} %>
</select>
<label>M: </label>

<select name="m1" id="m1">
<%

while(m<=12){ %>
<option value='<%=m %>'><%=m %></option>

<%
m++;
} %>
</select>
<label>Y: </label>

<select name="y1" id="y1">
<%

while(year<=2100){ %>
<option value='<%=year %>'><%=year %></option>

<%year++;
} 
%>
</select>
</form>

		<form class="form_settings" method="post" action="AdminPeriodCategoryReports.jsp" id="form1">
			<input type="text" style="display: none" id="date" name="date"></input>
			<input type="text" style="display: none" id="date1" name="date1"></input>

			<button class="form_button" onclick="format()">View Report</button>
		</form>

		<script>
			function format() {
				x = document.getElementById('d').value;
				y = document.getElementById('m').value;
				z = document.getElementById('y').value;
				if (Number(x) < 10)
					x = "0" + x;
				if (Number(y) < 10)
					y = "0" + y;

				a = z + "-" + y + "-" + x;
				document.getElementById('date').value = a;
				
				format1();

			}

			function format1() {
				x = document.getElementById('d1').value;
				y = document.getElementById('m1').value;
				z = document.getElementById('y1').value;
				if (Number(x) < 10)
					x = "0" + x;
				if (Number(y) < 10)
					y = "0" + y;

				a = z + "-" + y + "-" + x;
				document.getElementById('date1').value = a;
				

			}
		</script>
		<%
			int xx = 0;
		%>
		
			<%
				String date = request.getParameter("date");
				String date1 = request.getParameter("date1");

				java.util.Date dat = new SimpleDateFormat("yyyy-MM-dd").parse(date);

				

				java.sql.Date da = new java.sql.Date(dat.getTime());

				java.util.Date dat1 = new SimpleDateFormat("yyyy-MM-dd")
						.parse(date1);
	%>
				
				<p>Report for <%=dat %> to </p><p><%=dat1 %></p>
				<table class="table_settings">
				<%		java.sql.Date da1 = new java.sql.Date(dat1.getTime());
				String query = "SELECT CATEGORY.CAT,CATEGORY.NAME,SUM(QUANTITY) FROM CATEGORY,BOOK_CAT,TRANSACTION WHERE BILLID IN (SELECT BILLID FROM BILL WHERE BILL_DATE BETWEEN ? AND ? ) AND BOOK_CAT.ISBN=TRANSACTION.ISBN AND CATEGORY.CAT=BOOK_CAT.CAT GROUP BY CATEGORY.NAME,CATEGORY.CAT";


				Connection connection = DriverManager.getConnection(
						"jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
				PreparedStatement statement = connection.prepareStatement(query);
statement.setDate(1, da);
statement.setDate(2, da1);

ResultSet rs = statement.executeQuery();
				float maintotal = 0;
				boolean first=false;

				String isbn="";
				
				String title="";	
					while (rs.next()) {

						isbn=rs.getString(1);
						title=rs.getString(2);
						int qty = Integer.parseInt(rs.getString(3));
				
				if(!first)
						{	%>
							
							<tr>
					<th>CatID</th>
					<th>Category</th>
					<th>Quantity</th>
					</tr>
							
							<%first=true;}if((xx%2)==0){ %>
		<tr>
		<% } else { %>
		<tr class="alt">
		<% } %><td><%=isbn%></td>
		<td><%=title %></td>
		         <td><%=qty%></td>
				<%
					xx++;}
			
				

				//}
			%>
</table>
<% if(!first)
					{%>
					
					<p>No Transaction</p>
					
					<%}
%>
</body>
<script type="text/javascript" src="js/search.js"></script></html>