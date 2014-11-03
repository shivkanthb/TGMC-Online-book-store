<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%@ page import=" java.net.*" %>
<%@ page import=" java.io.*" %>
<%@ page import=" java.net.URLEncoder" %>

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
String refresh=(String)session.getAttribute("count");
if(refresh!=null)
	response.sendRedirect("index.jsp");
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
		size="20" onkeyup="sug(event)"name="val"></input>


</label>

<select id="key"  name="key" onchange="sugg()">
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
            <h2><a href="#" onclick="catselector('ACADEMIC')">Academic</a>
            <ul>
            <a href="#" onclick="catselector('ENGINEERING')"><li>Engineering</li></a>
            <a href="#" onclick="catselector('POLITICAL SCIENCE')"><li>Political Science</li></a>
            <a href="#" onclick="catselector('SOCIAL SCIENCE')"><li>Social Science</li></a>
            <a href="#" onclick="catselector('JOURNALISM')"><li>Journalism</li></a>
            <a href="#" onclick="catselector('MEDICAL')"><li>Medical</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
        
		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('BIOGRAPHIES')">Biographies</a>
            <ul>
            <a href="#" onclick="catselector('GENERAL')"><li>General</li></a>
            <a href="#" onclick="catselector('BUSINESS')"><li>Business</li></a>
            <a href="#" onclick="catselector('EXPLORER')"><li>Explorers</li></a>
            <a href="#" onclick="catselector('SPORTSPERSON')"><li>Sports Persons</li></a>
            <a href="#" onclick="catselector('FREEDOM')"><li>Freedom Figters</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('CHILDREN')">Children</a>
            <ul>
            <a href="#" onclick="catselector('CGENERAL')"><li>General</li></a>
            <a href="#" onclick="catselector('CLASSIC')"><li>Classics</li></a>
            <a href="#" onclick="catselector('AGE0')"><li>Ages(0-5)</li></a>
            <a href="#" onclick="catselector('AGE5')"><li>Ages(5-10)</li></a>
            <a href="#" onclick="catselector('AGE10')"><li>Ages(10-13)</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('COMPUTER')">Computers</a>
            <ul>
            <a href="#" onclick="catselector('SW')"><li>Software</li></a>
            <a href="#" onclick="catselector('CSG')"><li>General</li></a>
            <a href="#" onclick="catselector('INTERNET')"><li>Internet</li></a>
            <a href="#" onclick="catselector('TECH')"><li>Technology</li></a>
            <a href="#" onclick="catselector('HW')"><li>Hardware</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
      
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('ENTRANCE')">Entrance Exams</a>
            <ul>
            <a href="#" onclick="catselector('GE')"><li>General</li></a>
            <a href="#" onclick="catselector('CAT')"><li>CAT</li></a>
            <a href="#" onclick="catselector('UPSC')"><li>UPSC</li></a>
            <a href="#" onclick="catselector('GATE')"><li>GATE</li></a>
            <a href="#" onclick="catselector('GRE')"><li>GRE</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
     
		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('NOVEL')">Novels</a>
            <ul>
            <a href="#" onclick="catselector('FANTASY')"><li>Fantasy</li></a>
            <a href="#" onclick="catselector('SCIFI')"><li>Science Fiction</li></a>
            <a href="#" onclick="catselector('NCLASSIC')"><li>Classic</li></a>
            <a href="#" onclick="catselector('NCRIME')"><li>Crime</li></a>
            <a href="#" onclick="catselector('NROMANCE')"><li>Romance</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
   
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('SH')">Self Help</a>
            <ul>
            <a href="#" onclick="catselector('PS')"><li>Public Speaking</li></a>
            <a href="#" onclick="catselector('SG')"><li>General</li></a>
            <a href="#" onclick="catselector('COOKING')"><li>Cooking</li></a>
            <a href="#" onclick="catselector('PD')"><li>Personality Development</li></a>
            <a href="#" onclick="catselector('HOWTO')"><li>How To's</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
     
		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2><a href="#" onclick="catselector('SPORTS')">Sports</a>
            <ul>
            <a href="#" onclick="catselector('CRICKET')"><li>Cricket</li></a>
            <a href="#" onclick="catselector('CHESS')"><li>Chess</li></a>
            <a href="#" onclick="catselector('FOOTBALL')"><li>Football</li></a>
            <a href="#" onclick="catselector('BASKETBALL')"><li>Basketball</li></a>
            <a href="#" onclick="catselector('ATHLETICS')"><li>Athletics</li></a>
            </ul>
            </h2>
            
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->    
        
        
       </div><!--close sidebar_container-->	
		
      <ul class="slideshow">
          <%Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();String slideq="SELECT * FROM SLIDESHOW ";Connection slidecon = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");PreparedStatement slidest = slidecon.prepareStatement(slideq);ResultSet slide = slidest.executeQuery();while(slide.next()){%>
        <li class="show"><img width="680" height="250" src="images/<%=slide.getString(2) %>" alt="&quot;<%=slide.getString(3) %>&quot;" /></li><%} %>
      </ul>
      
    
    <%Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
    %>


<%
String query="";


	%>
	<p>You may also like these : </p>
	<div class="tileshow1">
    <%


double total=Double.parseDouble(request.getParameter("total")); 
query="SELECT * FROM CART";
 PreparedStatement statement = connection.prepareStatement(query);
 ResultSet resultset=null;
try{
 resultset=statement.executeQuery();}catch(Exception e)
{
	out.println("problem is at start");
	
}


query="SELECT COUNT(*) FROM BILL";
statement = connection.prepareStatement(query);
ResultSet count=statement.executeQuery();
String isbn="";
count.next();
String billid=count.getString(1);



query="INSERT INTO BILL VALUES(?,?,?,?)";
statement = connection.prepareStatement(query);
statement.setString(1, billid);
statement.setString(2,usid);
java.sql.Date d = new java.sql.Date(new java.util.Date().getTime());
statement.setDate(3,d);
statement.setFloat(4,(float) total);
try{
statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}

String query1="SELECT * FROM RATE WHERE ISBN=?";
ResultSet rs1=null;
PreparedStatement statement1 = connection.prepareStatement(query1);


query="INSERT INTO TRANSACTION VALUES(?,?,?,?,?)";
statement = connection.prepareStatement(query);

String query2="UPDATE CATALOGUE SET NO_COPIES=NO_COPIES-? WHERE ISBN=?";
PreparedStatement statement2 = connection.prepareStatement(query2);


int x=0;

while(resultset.next()){
	isbn=resultset.getString(1);

	x=resultset.getInt(2);

	statement2.setInt(1, x);
statement2.setString(2, isbn);
try{
statement2.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}

	statement1.setString(1, isbn);
rs1=statement1.executeQuery();
	rs1.next();
	

	
statement.setString(1, billid);
statement.setString(2,isbn);
statement.setInt(3,Integer.parseInt(resultset.getString(2)));
statement.setFloat(4,Float.parseFloat(rs1.getString(2)));
statement.setFloat(5,Float.parseFloat(rs1.getString(3)));
try{
statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
} 
query="DELETE FROM CART";
statement = connection.prepareStatement(query);
try{
statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}



query="SELECT * FROM USERDETAILS WHERE USID=?";
statement = connection.prepareStatement(query);
statement.setString(1, usid);
ResultSet usd=statement.executeQuery();
usd.next();


String b=usd.getString(11);
String mob=usd.getString(4);
if(b.contains("bulk"))	
{total*=0.9;
int r=(int)total*1000;
total=r/1000;
}
%>

<script>

function removemask()
{
	
	document.getElementById('mask').style.display="none";
	document.getElementById('b').style.display="none";
	
	}
	function buttonclicker(a)
	{

		document.getElementById('myid').value=a;	
			
		document.getElementById('clicker').click();	
			}
</script>

<div class="mask" id="mask" style="display:inline"></div>
<div class="order" id="b">

<p>Your order is processed successfully. Your order ID is <%=billid %></p>
<p>The product will be shipped to the following address</p>
<p>
<%=usd.getString(2)
%>
</p>
<p>
<%=usd.getString(3) %>
</p>
<p><%=usd.getString(6)
%></p>
<p><%=usd.getString(7)
%></p>
<p><%=usd.getString(8)
%></p>
<p><%=usd.getString(9)
%></p>


<p>The total amount payable is :  <%=total %></p>
<p>Please pay the amount on delivery and enjoy the book.</p>
<button class="form_button" onclick="removemask()">OK</button>
</div>
<%
query="SELECT CAT,COUNT(*) FROM BOOK_CAT WHERE ISBN IN (SELECT ISBN from TRANSACTION WHERE BILLID IN (SELECT BILLID FROM BILL WHERE USID=?))  GROUP BY CAT ORDER BY 2 DESC";
statement = connection.prepareStatement(query);
statement.setString(1, usid);
ResultSet sug=statement.executeQuery();
sug.next();
String cat=sug.getString(1);

query1="SELECT * FROM BOOKS WHERE ISBN IN (SELECT ISBN FROM BOOK_CAT WHERE CAT=?)";
statement = connection.prepareStatement(query1);
statement.setString(1, cat);
sug=statement.executeQuery();


query1="SELECT * FROM RATE WHERE ISBN=?";

statement=connection.prepareStatement(query1);

//	resultset.next();
float price;
float discount;
ResultSet rs=null;
%>

<% 
while(sug.next())
{isbn=sug.getString(1);
statement.setString(1, isbn);	
rs=statement.executeQuery();
rs.next();
%>		<div class="tile1"> 
<a href=# onclick="buttonclicker('<%=isbn%>')">
	<img src='images/<%=sug.getString(10) %>'></img><br/>
	<p><%=sug.getString(2) %></p>
	</a>
	
</div>	
	<%
	}


session.setAttribute("count","1");

if(refresh==null)
{/*
System.setProperty("proxySet", "true");
System.setProperty("http.proxyHost", "proxy.ssn.net");
System.setProperty("http.proxyPort", "8080");
Authenticator.setDefault(new Authenticator() {
    protected PasswordAuthentication getPasswordAuthentication() {

        return new PasswordAuthentication("SSN","ssn12".toCharArray());
    }});*/
String email="karthickpdy@gmail.com"; 
String user="karthickpdy";
String pass="greatest";
String number=mob;
String msg="Your Order of ID  "+ billid +"is processed successfully. Total Amount : Rs."+total+" Books will be delivered within 3 days. " ; 
String mURL="http://www.onl9class.com/smsapi/smsir.php?email="+email+"&user="+user+"&pass="+pass+"&number="+number+"&msg="+URLEncoder.encode(msg, "UTF-8");;
URL url = new URL(mURL);
BufferedReader reader = null;

try {
    reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

    for (String line; (line = reader.readLine()) != null;) {
        //out.println(line);
    }
} finally {
    if (reader != null) try { reader.close(); } catch (IOException ignore) {}
}
}
%><form class="form_settings" method="post" action="Books.jsp" style="display:none">	
	<input type="text" name="myid" id="myid" style="display:none"></input>
	<button class="form_button" id="clicker">mybutton</button></form>
</body>
<script type="text/javascript" src="js/search.js"></script></html>