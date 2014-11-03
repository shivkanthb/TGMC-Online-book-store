<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">





<%
String name=request.getParameter("name");

String query;

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement ;

ResultSet rs = null;


query = "DELETE FROM SLIDESHOW WHERE NAME=?";

statement = connection.prepareStatement(query);

statement.setString(1,name);
int r=0;
try{
 r=statement.executeUpdate();
}catch(Exception e)
{%>
	<p>Enter all needed details</p>
	
<%}
if(r>0)
	response.getWriter().print("deleted");
else
	response.getWriter().print("not deleted");
%>



</div>
</body>
<script type="text/javascript" src="js/search.js"></script></html>