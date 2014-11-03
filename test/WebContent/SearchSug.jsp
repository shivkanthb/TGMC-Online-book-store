<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<body>

<%String x= request.getParameter("val");%>
<% String y=request.getParameter("key");


%>

<%
Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
String query="";


	%>
	
	<%
	
	if(y.equals("title"))
	{
query = "SELECT * from BOOKS ";
	}
	
	if(y.equals("category"))
	{
query = "SELECT * FROM CATEGORY ";
	}
	
	if(y.equals("author"))
	{
query = "SELECT * FROM  AUTHOR ";
	}
	
	if(y.equals("publisher"))
	{
query = "SELECT * FROM PUBLISHER ";
	}
	
PreparedStatement statement = connection.prepareStatement(query);

ResultSet resultset = statement.executeQuery();
String op="";
String z="";
while(resultset.next())
{
	z=resultset.getString(2);
if(z.startsWith(x))
{
op=op+z+"<br/>";
}

}
op+="#";
//String[] a={"hi","hello","how","are","you"};
response.getWriter().print(op);


%>

</body>
<script type="text/javascript" src="js/search.js"></script></html>