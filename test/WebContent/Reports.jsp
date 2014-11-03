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

<div id="site_content">
<p>Use the side pane to View all the reports.</p>
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
</body>
<script type="text/javascript" src="js/search.js"></script></html>