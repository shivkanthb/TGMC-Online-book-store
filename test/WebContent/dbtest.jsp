<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<% Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();%>
<HTML>
<HEAD>
<TITLE>db2 connection</TITLE>
</HEAD>
<BODY>


<%


String query = "SELECT * from USERLOGIN ";
Connection connection = DriverManager.getConnection("jdbc:db2://localhost:50000/BS", "KARTHICK", "greatest");
PreparedStatement statement = connection.prepareStatement(query);
ResultSet resultset = statement.executeQuery();
resultset.next(); 
%>
<%=resultset.getString(1) %>




</BODY>
<script type="text/javascript" src="js/search.js"></script></html>