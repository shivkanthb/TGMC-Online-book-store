<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();

String x=request.getParameter("usid");
String query="SELECT * FROM USERLOGIN WHERE USID=?";

Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);
statement.setString(1, x);
ResultSet rs = statement.executeQuery();
if(!rs.next())
{response.getWriter().println("available");}
else{response.getWriter().println("not available");}
%>


</body>
<script type="text/javascript" src="js/search.js"></script></html>