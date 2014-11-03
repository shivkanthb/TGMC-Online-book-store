

<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.net.ssl.*" %>
<%@ page import="java.sql.*" %>
<%
String host = "smtp.gmail.com";
String to = "srinathganesan.93@gmail.com";

String from="karthickpdy@gmail.com";  // write your email address means from email address.
String subject = "FORGOT PASSWORD";
String messageText ="body";
boolean sessionDebug = true;
System.out.println("iam");
// Create some properties and get the default Session.
//System.setProperty("smtp.protocols", "SSLv3");
Properties props = System.getProperties();

props.put("mail.smtp.starttls.enable","true");
 
props.put("mail.smtp.host",host);
props.put("mail.smtp.user", from);
props.put("mail.smtp.password", "BESTOFTHEBEST/");
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.ssl", "true");
Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {protected PasswordAuthentication getPasswordAuthentication() {return new PasswordAuthentication("revathi.ramaswamy@gmail.com", "intelcore");
}
});
 
// Set debug on the Session
// Passing false will not echo debug info, and passing True will.
 
 
// Instantiate a new MimeMessage and fill it with the
// required information.
 try
{
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.addRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new java.util.Date());
msg.setText("machi this is sent using our program da :) :)");
//Double y=Math.random()+4513;
//y.toString



// Hand the message to the default transport service
// for delivery.
System.out.println("now here");
 
 Transport transport = mailSession.getTransport("smtp");
transport.connect(host,from,"BESTOFTHEBEST/");
transport.sendMessage(msg, msg.getAllRecipients());
out.println("Mail was sent to "+to);
out.println(" from "+from);
out.println(" using host "+host+".");
//request.setAttribute("otp","36251481");
//System.out.println("OTP is"+y.toString());
System.out.println("sent");

}
catch(Exception e)
{
System.out.println("hey ..luk"+e);

}
%>