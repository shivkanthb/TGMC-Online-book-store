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
  <style >
  
  #t2{

opacity:0.5
  }

#tabledisplayer{position:absolute;top:400px;left:700px;}
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
String x=(String)session.getAttribute("user");

if(x==null)
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
	 <%Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
    %>
      <script>
     var z
     var first=true
     function showtable(a)
     {      if(!first){hidetable()}
  	z=a  
    		  document.getElementById(a).style.display="block";
    	  document.getElementById('tabledisplayer').appendChild(document.getElementById(a))
    	  first=false
	}
     function hidetable()
     {  	  document.getElementById(z).style.display="none";
 	 
     }
      
</script>
	<table class="table_settings">
	<tr>
	<th>BILLID</th>
	<th>BILL DATE</th>
	<th>TOTAL</th>
	
	</tr>
	<%
	
	
	 String query="SELECT * FROM BILL WHERE USID=?";
	
	
	PreparedStatement statement=connection.prepareStatement(query);
	statement.setString(1,x);
	ResultSet rs1=statement.executeQuery();
	
	
	 String query1="SELECT BOOKS.ISBN,TITLE,QUANTITY,PRICE,DISCOUNT FROM TRANSACTION,BOOKS WHERE BILLID=? AND TRANSACTION.ISBN=BOOKS.ISBN";
	 statement=connection.prepareStatement(query1);	
	 ResultSet rs2=null;
			
	
	int xx=0;
	int i=0;
	String[] billid=new String[100];
	while(rs1.next())
	{
		billid[i]=rs1.getString(1);
		
		

		
	if(xx%2==0){	%>	
	<tr>
	<%}else{%>
	<tr class="alt">
	<%} %>
	<td><%=billid[i]%></td>
	<td><%=rs1.getString(3)%></td>
	<td><%=rs1.getString(4)%></td>
	<td onclick="showtable('<%=billid[i]%>')" style="cursor:default">+</td>
	</tr>
	
		
	<%xx++;i++;} %>	</table>
				</div>
	</div>
	
		<% for(int j=0;j<i;j++)
		{
			%><table style="display:none" class="table_settings" id="<%=billid[j]%>">
			
			
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
		
		<div id="tabledisplayer" ></div>
	
</body>

<script type="text/javascript" src="js/search.js"></script></html>