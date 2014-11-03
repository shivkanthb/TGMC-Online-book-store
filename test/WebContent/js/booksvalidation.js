/**
 * 
 */



function validate()
{

	var isbn = document.getElementById("isbn").value;
	var title = document.getElementById("title").value;
	var noofpages = document.getElementById("pages").value;
	var cp = document.getElementById("cp").value;
	var edition = document.getElementById("edition").value;
	var year = document.getElementById("year").value;
	var des = document.getElementById("description").value;
	var rating = document.getElementById("rating").value;
	var img = document.getElementById("img").value;
	var noc = document.getElementById("noc").value;
	var sp = document.getElementById("sp").value;
	var dis = document.getElementById("dis").value;
//alert(nameal);
var te=document.getElementById('test');
var isbnex=new RegExp("^([A-Z]|[a-z]|[0-9])+$");

var nameex=new RegExp("^([A-Z]|[a-z]| )+$");
var noex=new RegExp("^[0-9]+$");
var costex=new RegExp("^[0-9]+(.[0-9]+)?$");



var flag=0;

if(!isbn)
{flag=1;
te.innerHTML="ISBN not valid";
}
else if(!nameex.test(title))
{flag=1;
te.innerHTML="Title not valid";
}
else if(!noex.test(noofpages))
{flag=1;
te.innerHTML="Page number not valid";
}

else if(!noex.test(edition))
{flag=1;
te.innerHTML="Edition not valid";
}

else if(!noex.test(year))
{flag=1;
te.innerHTML="Year not valid";
} 
else if(!noex.test(rating))
{flag=1;
te.innerHTML="Rating not valid";
}

else if(!costex.test(cp))
{flag=1;
te.innerHTML="Cost Price not valid";
}



else if(!costex.test(sp))
{flag=1;
te.innerHTML="SP not valid";
}
else if(!noex.test(noc))
{flag=1;
te.innerHTML="Number of copies not valid";
}

else if(!costex.test(dis))
{flag=1;
te.innerHTML="Discount not valid";
}
else if(img==''||img==null)
{flag=1;
te.innerHTML="Please add an image";
}

else if(des==''||des==null)
{flag=1;
te.innerHTML="Description not valid";
}

if(flag==0)
	return true;
return false;
}


function valAuthor()
{
var flag=0;	

var a = document.getElementById("a").value;
var b = document.getElementById("b").value;


var nameex=new RegExp("^([A-Z]|[a-z])+$");
var te=document.getElementById('test');

	if(!nameex.test(a))
	{flag=1;
	te.innerHTML="Firstname not valid";
	}
	else if(!nameex.test(b))
	{flag=1;
	te.innerHTML="Lastname not valid";
	}
	if(flag==0)
		return true;
	return false;

}


function valPub()
{
var flag=0;	

var a = document.getElementById("a").value;
var b = document.getElementById("b").value;

var nameex=new RegExp("^([A-Z]|[a-z]| )+$");
var te=document.getElementById('test');

	if(!nameex.test(a))
	{flag=1;
	te.innerHTML="Name not valid";
	}
	else if(!nameex.test(b))
	{flag=1;
	te.innerHTML="City not valid";
	}
	if(flag==0)
		return true;
	return false;

}


function valCat()
{
var flag=0;	

var a = document.getElementById("a").value;


var nameex=new RegExp("^([A-Z]|[a-z]| )+$");
var te=document.getElementById('test');

	if(!nameex.test(a))
	{flag=1;
	te.innerHTML="Category not valid";
	}
	if(flag==0)
		return true;
	return false;

}

function valStock()
{

	var flag=0;	

	var a = document.getElementById("title").value;
	var b = document.getElementById("no_copies").value;


	var nameex=new RegExp("^([A-Z]|[a-z]| )+$");
	var noex=new RegExp("^[0-9]+$");

	var te=document.getElementById('test');

		if(!nameex.test(a))
		{flag=1;
		te.innerHTML="Title not valid";
		}
		else if(!noex.test(b))
		{flag=1;
		te.innerHTML="No of copies not valid";
		}
		if(flag==0)
			return true;
		return false;


}



function valPrice()
{

	var flag=0;	

	var a = document.getElementById("cost_price").value;
	var b = document.getElementById("sp").value;
	var c = document.getElementById("discount").value;


	var costex=new RegExp("^[0-9]+(.[0-9]+)?$");

	var te=document.getElementById('test');

		if(!costex.test(a))
		{flag=1;
		te.innerHTML="CP not valid";
		}
		else if(!costex.test(b))
		{flag=1;
		te.innerHTML="SP not valid";
		}
		else if(!costex.test(c))
		{flag=1;
		te.innerHTML="Discount not valid";
		}
		if(flag==0)
			return true;
		return false;


}


function valSS()
{

	var flag=0;	

	var a = document.getElementById("name").value;
	var b = document.getElementById("desc").value;


	var nameex=new RegExp("^([A-Z]|[a-z]| )+$");
	var noex=new RegExp("^[0-9]+$");

	var te=document.getElementById('test');

		if(!a)
		{flag=1;
		te.innerHTML="Please enter an image";
		}
		else if(!b)
		{flag=1;
		te.innerHTML="Caption not valid";
		}
		if(flag==0)
			return true;
		return false;


}
