
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%@ page import=" java.net.*" %>
<%@ page import=" java.io.*" %>
<%@ page import=" java.net.URLEncoder" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>index</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
/* This api is only for developemnt purpose, if you missuse the api i will remove it so make sure you wont misuse it
author : Abhimanyu singh rathore
email : abhirathore2006@gmail.com
website: www.how2labs.info


info : make sure to use valid email otherwise it won't work,message char limit is 110

**/
String email="karthickpdy@gmail.com"; 
String user="karthickpdy";
String pass="greatest";
String number="9597393072";
String msg="is it really working" ; 
String mURL="http://www.onl9class.com/smsapi/smsir.php?email="+email+"&user="+user+"&pass="+pass+"&number="+number+"&msg="+URLEncoder.encode(msg, "UTF-8");;
URL url = new URL(mURL);
BufferedReader reader = null;

try {
    reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

    for (String line; (line = reader.readLine()) != null;) {
        out.println(line);
    }
} finally {
    if (reader != null) try { reader.close(); } catch (IOException ignore) {}
}
 %>
</body>
</html>

