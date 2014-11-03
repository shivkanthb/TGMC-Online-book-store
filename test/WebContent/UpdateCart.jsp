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
      
    <div class="bookshow">
    <%Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    Connection connection= DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
    %>


<%
String query="";


	%>
	
	

    <%
    query="UPDATE CART SET QUANTITY=? WHERE ISBN=?";

    PreparedStatement statement = connection.prepareStatement(query);

    statement = connection.prepareStatement(query);
 
int	x=Integer.parseInt(request.getParameter("quantity"));
String	y=request.getParameter("book");
statement.setString(2, y);
statement.setInt(1, x);

try{
statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
query="SELECT * FROM CART";
 statement = connection.prepareStatement(query);
 ResultSet resultset=null;
try{
 resultset=statement.executeQuery();}catch(Exception e)
{
	out.println("problem is at start");
	
}
ResultSet rs1=null;

query="SELECT * FROM RATE WHERE ISBN=?";
statement = connection.prepareStatement(query);
String isbn="";
String query1="SELECT * FROM BOOKS WHERE ISBN=?";
PreparedStatement statement1 = connection.prepareStatement(query1);
ResultSet rs2=null;


String query2="SELECT * FROM CATALOGUE WHERE ISBN=?";
PreparedStatement statement2 = connection.prepareStatement(query2);
ResultSet rs3=null;

%>


<table class="table_settings" border=1 id="m">

<tr>
<th>
TITLE
</th>
<th>
PRICE
</th>
<th>
QUANTITY
</th>
<th>
DISCOUNT
</th>
<th>
SUBTOTAL
</th>
<th>
&nbsp; &nbsp;
</th>


</tr>

<%double[] price=new double[1000];
int[] qty=new int[1000];
double total=0;
double[] discount=new double[1000];
double[] subtotal=new double[1000];
int r=0;
int availqty[]=new int[1000];

String[] title=new String[1000];
int i=0;
int xx=0;
while(resultset.next())
{
	
	
	
isbn=resultset.getString(1);
	out.println(isbn);
statement.setString(1, isbn);
statement2.setString(1, isbn);	
rs3=statement2.executeQuery();
rs3.next();
availqty[i]=Integer.parseInt(rs3.getString(3));
	try{
		rs1=statement.executeQuery();
	}catch(Exception e)
	{
		out.println("problem is here");
		
	}
	rs1.next();

	statement1.setString(1, isbn);
	try{rs2=statement1.executeQuery();
	}catch(Exception e)
	{
		out.println("problem is thhere");
		
	}
	rs2.next();
	
	title[i]=rs2.getString(2);
	price[i]=Double.parseDouble(rs1.getString(2));
	discount[i]=Double.parseDouble(rs1.getString(3));
	qty[i]=Integer.parseInt(resultset.getString(2));
	
	subtotal[i]=qty[i]*(price[i]*(1-(discount[i]/100)));
	 r=(int)subtotal[i]*1000;
	subtotal[i]=r/1000;
	
	total+=subtotal[i];
	 r=(int)total*1000;
		total=r/1000;
	if(xx%2==0)
	{%> 
	
	
	
<tr>
<%}
else{ %>
<tr class="alt">
<%} %>
<td><%=title[i] %></td> 
<td><%=price[i] %></td> 
<td><input type="text" disabled=true id='<%=isbn %>' value="<%=qty[i] %>"></input><br/>
<center><a href=# onclick="change('<%=isbn %>',this,'<%=availqty[i] %>')" >Change</a></center></td>
<td><%=discount[i] %>%</td> 
<td><%=subtotal[i] %></td> 
<td><a href=# onclick="delet('<%=isbn %>')" >X</a></td> 
</tr>

<%xx++; i++;}%>
<tr>
<td colspan="5">Total</td>
<td><%=total %></td></tr>

<form class="form_settings" method="post" action="UpdateCart.jsp" id="form1"><input type="text" style="display:none" id="quantity" name="quantity"></input>
<input type="text" style="display:none" id="book" name="book"></input></form>
<form class="form_settings" method="post" action="DeleteItem.jsp" id="form2"><input type="text" style="display:none" id="book1" name="book"></input>
</form>
</table>
<form class="form_settings" method="post" action="Order.jsp" id="po"><input type="text" name="total" style="display:none" value="<%=total%>"></input></form>
<center><button class="form_button" class="button_small" onclick="BillGenerate()" id="pobutton" >Place Order</button></center>


<div class="bill" style="display:none" id="b">
<table border="1">

<tr>
<th>
TITLE
</th>
<th>
PRICE
</th>
<th>
QUANTITY
</th>
<th>
DISCOUNT
</th>
<th>
SUBTOTAL
</th>


</tr>

<%for(int j=0;j<i;j++){ %>

<tr>
<td><%=title[j]%></td> 
<td><%=price[j] %></td> 
<td><input type="text" disabled=true  value="<%=qty[j] %>"></input></td>
<td><%=discount[j] %>%</td> 
<td><%=subtotal[j] %></td> 
 
</tr>



<%} %>
<tr>
<td colspan="3">Total</td>
<td colspan="2"><%=total %></td></tr>

</table>
<button class="form_button" class="button_small" onclick="place()">Ok</button>
<button class="form_button" class="button_small" onclick="cancel()">Cancel</button>
</div>
</div>

</div>
  
  
      </div>
       	 <div class="mask" id="mask"></div>
      <script>
      
      function BillGenerate()
      {document.getElementById('pobutton').style.display="none";
      document.getElementById('m').style.display="none";
    	  x=document.getElementById('b');
    	  x.style.display="inline";
    	  x=document.getElementById('mask');
    	  x.style.display="inline";
    	  
    	  
    	  
      }
      
      function place()
      {document.getElementById('po').submit();}
      
      
      function cancel(){
    	  document.getElementById('pobutton').style.display="inline"  
    	  x=document.getElementById('b')
    	  x.style.display="none";
    	  
    	  x=document.getElementById('mask');
    	  x.style.display="none";
    	  
    	  document.getElementById('m').style.display="inline";
      	
      }
      function change(a,b,c)
      {
    	  x=document.getElementById(a);
    	  if(b.innerHTML=="Change")
    	  {
    		  b.innerHTML="Save";
    	  
    	 x.disabled=false;
    	 document.getElementById("pobutton").style.display="none";
    	  }
    	  else{
    		  
    		  
    		  if(Number(x.value)<=Number(c)){
    		
    			  document.getElementById('quantity').value=x.value;
    	  document.getElementById('book').value=a;
    	  document.getElementById('form1').submit();
    		  }
    		  else{
    			  
    			  }
    	  }
    	   
    	  
    		  
    	  
      }
      function delet(a)  
	  {
	  
	document.getElementById('book1').value=a;
    		  document.getElementById('form2').submit();
    	  
    	  
    	     
	  
  }</script>
	

</body>
<script type="text/javascript" src="js/search.js"></script></html>