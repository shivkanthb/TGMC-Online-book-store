<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/Dth/xhtml11.dth">
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
<script type="text/javascript" src="js/signupvalidate.js"></script>

  <style >
  
  #t2{

opacity:0.5
  }
  </style>
</head>

<body onclick="hide()">
<script>
function catselector(x)
	{
		
		document.getElementById('cattext').value=x;	
		
		document.getElementById('catclicker').click();	
		
	}</script>

<div id="s0">
	    <div id="welcome">
	      <h1>BOOK STORE</h1>
	
</div>

<%
String usid=(String)session.getAttribute("user");

if(usid==null)
{response.sendRedirect("Login.jsp");
%>
<div id="new"><h1><a href="Login.jsp">login</a>|
<a href="signtempnew.jsp">sign up</a>
 
|<a href="AboutUs.jsp">about us</a>
</h1></div>
<%}else{ %>
<div id="new"><h1>
<a href="ViewCart.jsp">View Cart</a>|
<a href="ViewWishlist.jsp">View Wishlist</a>
|<a href="UserCustomize.jsp">Account</a>
|<a href="Logout.jsp">logout</a>
|<a href="feedback.jsp">contact us</a>
|<a href="AboutUs.jsp">about us</a>
</h1></div>

<%} %>
</div>

    <form class="form_settings" method="post" action="Category.jsp">	
	<input type="text" name="cattext" id="cattext" style="display:none"></input>
	<button class="form_button" id="catclicker" style="display:none">mybutton2</button></form>
	<div id="s1">
	    
		<div id="welcome_slogan">
	      <h1>Keep calm and read books..</h1>
	</div>
<div id="searchbar">

<form  method="post" action="Search.jsp" id="se" >


<label >Search:
<input type="text"  autocomplete="off" id="t2"
		 disabled="true" size="20" ></input>
		
		<input type="text"  autocomplete="off" id="t1"
		size="20"  onkeyup="sug(event)" name="val"></input>


</label>

<select id="key" onchange="sugg()" name="key" >
<option value="category" selected="selected">Category </option>
<option value="title">Title</option>
<option value="publisher">Publisher</option>
<option value="author">Author</option>
</select>
</form>

<button class="form_button" onclick="go()" id="go">GO</button>
<div id="disp"></div>

	</div>
	</div>
	
	<div id="menubar">
      <ul id="menu">
        <li class="current"><a href="index.jsp">Home</a></li>
        <li><a href="Popular.jsp">Popular</a></li>
        <li><a href="Newrelease.jsp">New Releases</a></li>
	<li>	<a href="PreOrder.jsp">Pre Order</a></li>
		<li><a href="Discount.jsp">Special Offers</a></li>
       
      </ul>
    </div><!--close menubar-->	
	<div id="site_content">		
		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="Personalinfo.jsp">Change personal info</a></h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="Password.jsp">Change Password</a></h2>
            
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="PastTransactions.jsp">View Past Transactions</a></h2>
            </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  
		   </div><!--close sidebar_container-->	

<%
Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
String query="";


	%>
	
	<%
	
	


%>

      
		<div class="bookshow">
	<%
	String x=(String)session.getAttribute("user");
	
	
query = "SELECT * FROM USERDETAILS WHERE USID=?";
	
PreparedStatement statement = connection.prepareStatement(query);
statement.setString(1, x);

ResultSet resultset = statement.executeQuery();
resultset.next();

		%>	
<form action="UpdatePersonalinfo.jsp" class="form_settings" onSubmit="return validate1();">
<table border="0">
<tbody>


<tr>

<td><label for="fname">First Name*: </label> </td>
<td><input id="fname" maxlength="45" name="fname" type="text" value="<%= resultset.getString(2)%>"/> 
<span id="fname1"
   style="color:red; font-weight: bold;"></span></td>
   </tr>
   
   
   
   <tr>
<td><label for="lname">Last Name*:</label> </td>
<td><input id="lname" maxlength="45" name="lname" type="text" value="<%= resultset.getString(3)%>"/>
<span id="lname1" style="color:red; font-weight: bold;"></span></td>
</tr>
   
   
  
   <tr>
<td><label for="mobile">Mobile*:</label> </td>
<td><input id="mobile" maxlength="45" name="mobile" type="text"value="<%= resultset.getString(4)%>" />
<span id="mobile1" style="color:red; font-weight: bold;"></span>
</td>
</tr> 
   
   
   
 <tr>
<td><label for="email">Email Address*:</label> </td>
<td><input id="email" maxlength="45" name="email" type="text"value="<%= resultset.getString(5)%>" />
<span id="email1" style="color:red; font-weight: bold;"></span>
</td>
</tr>



   <tr>
<td><label for="address">Address*:</font></label> </td>
<td><input id="address" maxlength="45" name="address" type="text" value="<%= resultset.getString(6)%>" />
<span id="address1" style="color:red; font-weight: bold;"></span>
</td>
</tr>



<tr>
<td><label>City :</label></td>

<td><input id="city" maxlength="45" name="city" type="text" value="<%= resultset.getString(7)%>" /> 
<span id="city1"
   style="color:red; font-weight: bold;"></span>
   </td>
</tr>


<tr>
<td><label>State :</label>
<td>
<input id="state" maxlength="45" name="state" type="text" value="<%= resultset.getString(8)%>" /> 
<span id="state1"
   style="color:red; font-weight: bold;"></span>
   </td>
</tr>



<tr>
<td><label>Country :</label>
<td>
<input id="country" maxlength="45" name="country" type="text" value="<%= resultset.getString(9)%> "/> 
<span id="country1"
   style="color:red; font-weight: bold;"></span>
   </td>
</tr>





<tr>
<td><label for="pincode">pincode*:</label> </td>
<td><input id="pincode" maxlength="45" name="pincode" type="text" value="<%= resultset.getInt(12)%>"/>
<span id="pincode1" style="color:red; font-weight: bold;"></span>
</td>
</tr>


<tr><td>
<div id="test" style="color:red;font-size:140%"></div>

</td>

</tr>

<tr>
<td><button class="form_button">Save Changes</button>
</td>
</tr>

</tbody>
</table>


</form>
		</p>
		
				</div>
	</div>
</body>
</html>