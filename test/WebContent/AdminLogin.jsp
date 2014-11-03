<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
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
<style>
#s1 {
	position: relative;
	top:-50px;
	left:90px;
}

#s0 {
	position: relative;
	top: 10px;
}
hr
{
color:blue;

}
</style>
</head>

<body>
	

	<div id="s0">
		<div id="welcome">
			<h1>BOOK STORE</h1>

			<div id="welcome_slogan">
				<h1>Keep calm and read books..</h1>
			</div>
			</div>

		</div>
		<!-- s0 -->
		<div id="s1">
			<form class="form_settings"  id="form1" action="AdminHome.jsp" method="post">
				<label>User Name : <input id='us' type="text" name="usid"></input></label>
				<label>Password : <input type="password" name="pwd" id='pw'></input>
			
				</label>
			</form>
				<button class="form_button" style="float:right;position:relative;left:-150px;top:-28px"  onclick="check()">Login</button>
			
			<div id="test"></div>

		</div>
	</div>

	<hr />


	<script>
		function check() {
			document.getElementById("test").innerHTML=""
			us = document.getElementById('us').value;
			p = document.getElementById('pw').value;

			ajx = new XMLHttpRequest();
			ajx.onreadystatechange = function() {

				if (ajx.readyState == 4 && ajx.status == 200) {
					op= ajx.responseText
					i=0
					z=[]
					while(op[i]!=' ')
					{z[i]=op[i];
					i++;}
						
						for(j=0;j<i;j++)
						document.getElementById("test").innerHTML+=z[j]

						if(document.getElementById("test").innerHTML=="found")
							document.getElementById("form1").submit();
						if(z[0]=='n')
							document.getElementById("test").innerHTML="Username and password does not match"
							else
								document.getElementById("test").innerHTML=""	}

			}
			ajx.open("GET","AdminLog.jsp?usid="+us+"&pwd="+p, true);
			ajx.send()
		}
	</script>
</body>
<script type="text/javascript" src="js/search.js"></script></html>