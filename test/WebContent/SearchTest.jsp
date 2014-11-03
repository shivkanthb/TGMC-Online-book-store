<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<style type="text/css" media="screen">
body {
	font: 11px arial;
}


</style>
</head>
<title>Insert title here</title>
<script type="text/javascript" src="js/search.js">
</script>

</head>
<body>
	<input type="text"  autocomplete="off" id="t2"
		 disabled="true"></input>
		
		<input type="text"  autocomplete="off" id="t1"
		style="position:relative;left:-152px;opacity:0.5" onkeyup="sug(event)"></input>
	<select id="key" onchange="sugg()" onchange="sug(event)">
		<option value="category" selected="selected">Category</option>
		<option value="title">Title</option>
		<option value="publisher">Publisher</option>
		<option value="author">Author</option>
	</select>

	
</body>
<script type="text/javascript" src="js/search.js"></script></html>