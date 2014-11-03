<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
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

<body onclick="hide()"><script type="text/javascript" src="js/search.js"></script>
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


<div id="new"><h1><a href="Login.jsp">login</a>|
<a href="signtempnew.jsp">sign up</a>
 
|<a href="AboutUs.jsp">about us</a>
</h1></div>
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
    	 
	 
	  &nbsp; &nbsp; &nbsp; &nbsp &nbsp &nbsp; 
	  
	  <form class="form_settings" method="post" action="signup.jsp" id="register" name='registration' onSubmit="return validate();"   >
	  <table border="0">
<tbody>


<tr>

<td><label for="fname">First Name: </label> </td>
<td><input id="fname" maxlength="45" name="fname" type="text" /> 
<span id="fname1"
   style="color:red; font-weight: bold;"></span>
   </tr>
   
   
   
   <tr>
<td><label for="lname">Last Name:</label> </td>
<td><input id="lname" maxlength="45" name="lname" type="text" />
</td>
</tr>
   
<tr>
<td><label for="username">User id:</label> </td>
<td><input id="username" maxlength="45" name="usid" type="text" onkeyup="checkusavail()" />
 </td>
<td><div id="usa" style="color:blue;font-size:140%"></div></td>
</tr>



<tr>
<td><label for="password">Password:</label></td>
<td><input id="password" maxlength="45" name="pwd" type="password"   onkeyup="pwdStrength(this.value)"        />

</td>
</tr>

<tr>
<td><label for="rpass">ReType Password:</label> </td>
<td><input id="rpass" maxlength="45" name="rpass" type="password" /> 
   </td>

</tr>


   
  
   <tr>
<td><label for="mobile">Mobile:</label> </td>
<td><input id="mobile" maxlength="45" name="mobile" type="text" />

</td>
</tr> 
   
   
   
 <tr>
<td><label for="email">Email Address:</label> </td>
<td><input id="email" maxlength="45" name="mail" type="text" />

</td>
</tr>

<tr>
<td><label>Gender :</label>
<form class="form_settings" method="post" action="">
<td>
<input type="radio" name="gender" value="male" checked="checked">Male<br>
<td>
<input type="radio" name="gender" value="female">Female
</form>
</tr>





   <tr>
<td><label for="address">Address:</font></label> </td>
<td><input id="address" maxlength="45" name="addr" type="text" />

</td>
</tr>






<tr>
<td><label>City :</label></td>

<td><input id="city" maxlength="45" name="city" type="text" /> 
   </td>
</tr>


<tr>
<td><label>State :</label>
<td>
<input id="state" maxlength="45" name="state" type="text" /> 
   </td>
</tr>



<tr>
<td><label>Country :</label>
<td>
<input id="country" maxlength="45" name="country" type="text" /> 
   </td>
</tr>



 <tr>
<td><label for="pincode">Pincode:</label> </td>
<td><input id="pincode" maxlength="45" name="pincode" type="text" />

</td>
</tr>



<tr>
<td><label>Type of User: </label></td>
<td><select name="typeofuser" id="typeofuser">
<option value="normal">Retail</option>
<option value="bulk">Wholesale</option>

</select></td>

</tr>

<tr><td>
<div id="test" style="color:red;font-size:140%;"></div>

</td>

</tr>
<tr>
<td align="right"><input name="Submit" type="submit" value="Submit" /></td>
</tr>  

</tbody>
</table>
</form>
</div>

<script>function checkusavail(){
	
	ajx=new XMLHttpRequest();
	ajx.onreadystatechange=function ()
	{
		
		if(ajx.readyState==4 && ajx.status==200)
	{document.getElementById("usa").innerHTML=ajx.responseText		}
	
	}
	us=document.getElementById('username').value
	
	ajx.open("GET","CheckUserAvail.jsp?usid="+us,true);
	ajx.send()
	
	
}</script>
</body>
</html>


