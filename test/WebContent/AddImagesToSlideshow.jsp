<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">





<%
String pid;
String name=request.getParameter("name");
String cap=request.getParameter("desc");

String query="SELECT COUNT(*) FROM SLIDESHOW ";

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);

ResultSet rs = statement.executeQuery();
rs.next();

pid=rs.getString(1);


query = "INSERT INTO SLIDESHOW VALUES(?,?,?)";

statement = connection.prepareStatement(query);

statement.setString(1, pid);
statement.setString(2,name);
statement.setString(3,cap);
int r=0;
try{
r=statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
if(r>0)
	response.getWriter().print("added");
else
	response.getWriter().print("not added");
%>



</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>