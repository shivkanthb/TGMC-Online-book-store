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
	
	
String query = "SELECT * FROM ADMINLOGIN WHERE ADMINID=?";
	
PreparedStatement statement = connection.prepareStatement(query);
statement.setString(1, x);

ResultSet resultset = statement.executeQuery();
resultset.next();

		%>	
		<script>var y="<%= resultset.getString(2)%>"
		function check()
		{
			
			z=document.getElementById('opwd').value;
			a=document.getElementById('npwd').value;
			b=document.getElementById('cnpwd').value;
			
			t=document.getElementById('test');
			if(z==y )
			{if(a!=''&& b!='')
				{
				 if(a==b)
				 {
			     document.getElementById('f1').submit();
				}
				else 
					document.getElementById('test').innerHTML="Your new passwords do not match";
				}
			else document.getElementById('test').innerHTML="Cannot have null fields";
			}
			else document.getElementById('test').innerHTML="Old password is not valid";

			
		}
		
		</script>
<form class="form_settings" id="f1" action="Adminupdatepwd.jsp" >
<table border="0">
<tbody>
<tr>
<td><label>Old Password:</label></td>
<td><input type="password" name="oldpwd" id="opwd" ></input></td>
</tr>

<tr>
<td><label>New Password:</label></td>
<td>
<input type="password" name="newpwd" id="npwd"></input></td>
</tr>

<tr>
<td><label>Confirmed Password:</label>
<td>
<input type="password" name="confirmnewpwd" id="cnpwd"></input></td>
</tr>


</tbody>
</table>
</form><div id="test" style="color:red;font-size:140%; position:relative;left:130px" ></div>
<button class="form_button" onclick="check()" style="position:relative;left:130px">Save Changes</button>



		
		
				</div>
	</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>