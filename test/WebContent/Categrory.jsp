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
<script type="text/javascript" src="js/booksvalidation.js"></script>



</head>

<body>
	<script type="text/javascript" src="js/search.js"></script>
	
	<div id="s0">
		<div id="welcome">
			<h1>BOOK STORE</h1>

		</div>
		
		
		<div id="welcome_slogan">
			<h1>Keep calm and read books..</h1>
		</div>
	
	</div>

	<div id="menubar">
	<ul id="menu">
			<li class="current"><a href="AdminHome.jsp">Home</a></li>
			<li><a href="Adminpwd.jsp">Change Password</a></li>
			<li><a href="BookManagement.jsp">Manage Book Store</a></li>
			<li><a href="Reports.jsp">Reports</a></li>
			<li><a href="ManageSlide.jsp">Manage SlideShow</a></li>
			<li><a href="AdminFeedback.jsp">Feedback</a></li>
			<li><a href="AdminLogout.jsp">Logout</a></li>

		</ul>
	</div>
	<!--close menubar-->

	<div id="site_content">

		<div class="sidebar_container">

			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#" >Add</a>
						<ul>
							<a href="book.jsp"><li>Books</li></a>
							<a href="author.jsp"><li>Authors</li></a>
							<a href="Publisher.jsp"><li>Publishers</li></a>
							<a href="Categrory.jsp"><li>Categories</li></a>
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#" >Update</a>
						<ul>
							<a href="UpdateStock.jsp" ><li>Stock</li></a>
							<a href="UpdateBookDetails.jsp" ><li>Details</li></a><a href="UpdatePrice.jsp" ><li>Price</li></a>
						
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->



			<div class="sidebar">
				<div class="sidebar_item">
					<h2>
						<a href="#" >Delete</a>
						<ul>
							<a href="DeleteStock.jsp" ><li>Stock</li></a>
							<a href="DeleteBookDetails.jsp" ><li>Details</li></a>
						
						</ul>
					</h2>

				</div>
				<!--close sidebar_item-->
			</div>
			<!--close sidebar-->

		


		</div>
		<!--close sidebar_container-->

		



<div class="bookshow">


<form class="form_settings" method="post" action="AddCategory.jsp" onSubmit="return valCat()" >


<label>Category: </label><input type="text" name="name" id="a" ></input><br></br>
<div id="test" style="color:red;font-size:140%"></div>
<button class="form_button">Add</button>

</form>

</div>
</div>
</body>
</html>