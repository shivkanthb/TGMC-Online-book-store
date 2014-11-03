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

<style>
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

<div id="side_container">
	
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
<label>Date : </label>
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
<form class="form_settings" method="post" action="AdminDailyReport.jsp" id="form1">
<input type="text" style="display:none" id="date" name="date"></input>
<button class="form_button" onclick="format()">View Report</button>
</form>

<script>function format(){
	x=document.getElementById('d').value;
	y=document.getElementById('m').value;
	z=document.getElementById('y').value;
	if(Number(x)<10)
		x="0"+x;
	if(Number(y)<10)
		y="0"+y;
	
	a=z+"-"+y+"-"+x;
	document.getElementById('date').value=a;
	
	
}</script>
<script>
     var z
     var first=true
     
     function showtable(a)
     {   
    	 
    	 
    	 if(!first){hidetable()}
  	z=a  
    		  document.getElementById(a).style.display="block";
    	  document.getElementById('tabledisplayer').appendChild(document.getElementById(a))
    	  first=false
	}
     function hidetable()
     {  	  document.getElementById(z).style.display="none";
 	 
     }
      
</script>
<% int xx=0; %>

		<%
			String date = request.getParameter("date");
			java.util.Date dat = new SimpleDateFormat("yyyy-MM-dd").parse(date);


			
			%>
			
			<p>Report for <%=dat %></p>
			<table class="table_settings">
			<%
			java.sql.Date da = new java.sql.Date(dat.getTime());

			String query = "SELECT * FROM BILL WHERE BILL_DATE=? ";

			Connection connection = DriverManager.getConnection(
					"jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setDate(1, da);
			ResultSet rs = statement.executeQuery();
	float maintotal = 0;
			int i=0;
			String[] billid=new String[100];
			boolean first=false; 
			
			while (rs.next()) {
				billid[i]=rs.getString(1);
				float total = Float.parseFloat(rs.getString(4));
				maintotal += total;
	if(!first)
	{	%>
		
		<tr>
<th>Bill ID</th>
<th>User ID</th>
<th>Total</th>
</tr>
		
		<%first=true;}if((xx%2)==0){ %>
<tr>
<% } else { %>
<tr class="alt">
<% } %><td><%=billid[i]%></td>
         <td><%=rs.getString(2)%></td>
         
	<td><%=total%></td>
	<td onclick="showtable('<%=billid[i]%>')">+</td></tr>
		
		<%
			i++;xx++;}
		%>
		</table>


		

		<%
			query = "SELECT * FROM CATALOGUE WHERE ACQUIRED_DATE=? ";

			statement = connection.prepareStatement(query);
			statement.setDate(1, da);
			rs = statement.executeQuery();
			String query1 = "SELECT * FROM BOOKS WHERE ISBN=? ";
			String isbn = "";
			PreparedStatement statement1;
			float cp = 0;
			int qty = 0;
			float expenses = 0;
			while (rs.next()) 
			{
				
				isbn = rs.getString(1);
				qty = Integer.parseInt(rs.getString(3));
				statement1 = connection.prepareStatement(query1);
				statement1.setString(1, isbn);
				ResultSet rs1 = statement1.executeQuery();
				rs1.next();
				cp = Float.parseFloat(rs1.getString(4));
				expenses += cp * qty;
			}
		float pl=maintotal-expenses;
if(first){
%>		


<p>Sales : <%=maintotal %></p>
<p>Expenses : <%=expenses %></p>
<% 

if(pl>0){
		%>
<p>Profit : <%=pl %></p>
<%}else{ %>
<p>Loss : <%=Math.abs(pl) %></p>


		<% } }else
			{%>
			
			<p>No Transaction</p>
			
			<%} query="SELECT BOOKS.ISBN,TITLE,QUANTITY,PRICE,DISCOUNT FROM TRANSACTION,BOOKS WHERE BILLID=? AND TRANSACTION.ISBN=BOOKS.ISBN";
	 statement=connection.prepareStatement(query);	
	 ResultSet rs2=null;
for(int j=0;j<i;j++)
		{
			%>
				<div id="tabledisplayer" ></div>
			
			<table style="display:none" class="table_settings" id="<%=billid[j]%>">
			
			
		<% statement.setString(1,billid[j]);
		rs2=statement.executeQuery();
		boolean flag=true;
		 while(rs2.next())
		{
			 if(flag){%>
			 <tr>
			<th>ISBN</th>
			<th>Title</th>
			<th>Quantity</th>
			<th>price </th>
			<th>discount</th>
			
			</tr>
			 
			 <% }
			 flag=false;
		%>
		
		<tr><td><%=rs2.getString(1) %></td>
		<td><%=rs2.getString(2) %></td>
		<td><%=rs2.getString(3) %></td>
		<td><%=rs2.getString(4) %></td>
		<td><%=rs2.getString(5) %></td>
		</tr>
		
	<%	}
		%>
		</table>	
		
	<% 	}%>
		
		</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>