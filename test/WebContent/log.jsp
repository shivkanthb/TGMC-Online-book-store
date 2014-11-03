	<%@ page import="java.util.*" %>
	<%@ page import="javax.mail.*" %>
	<%@ page import="javax.mail.internet.*" %>
	<%@ page import="javax.activation.*" %>
	<%@ page import="javax.net.ssl.*" %>
	<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>



<%String x= request.getParameter("usid");%>
<% String y=request.getParameter("pwd");%>
<%
String query = "SELECT * from USERLOGIN where usid=? and pwd=?";

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);
statement.setString(1, x);
statement.setString(2, y);

ResultSet resultset = statement.executeQuery();

if(resultset.next()) 
{
	session=request.getSession();
	session.setAttribute("user", x);
	response.getWriter().println("found ");
	}
else{


response.getWriter().println("not found");
}	
	%>

</body>
<script type="text/javascript" src="js/search.js"></script></html>