/**
 * 
 */


function validate()
{


var fname=document.getElementById("fname").value;
var lname=document.getElementById("lname").value;
var usid=document.getElementById("username").value;
var pass=document.getElementById("password").value;
var rpass=document.getElementById("rpass").value;
var ph=document.getElementById("mobile").value;
var mail=document.getElementById("email").value;


var addr=document.getElementById("address").value;
var city=document.getElementById("city").value;
var state=document.getElementById("state").value;
var country=document.getElementById("country").value;
var pincode=document.getElementById("pincode").value;

//alert(nameal);
var te=document.getElementById('test');

var nameex=new RegExp("^([A-Z]|[a-z])+$");
var phex=new RegExp("^[0-9]{10}$");
var passex=new RegExp("^\\w{6}\\w*");
var pinex=new RegExp("^[0-9]+$");
var emailex=new RegExp("^(\\w)+@\\w+\.([a-z]|[A-Z]){3}$");
var nullex=new RegExp("^\\w+$");


var flag=0;

if(!nameex.test(fname))
{flag=1;
te.innerHTML="First name not valid";
}
else if(!nameex.test(lname))
{flag=1;
te.innerHTML="Last name not valid";
}
else if(!passex.test(usid))
{flag=1;
te.innerHTML="UserId not valid(min 6 letters)";
}


else if(!passex.test(pass))
{flag=1;
te.innerHTML="Password not valid(min 6 letters)";
}
else if(pass!=rpass)
{flag=1;
te.innerHTML="Passwords  do not match";
}
else if(!phex.test(ph))
{flag=1;
te.innerHTML="Mobile number not valid";
}
	
else if(!emailex.test(mail))
{flag=1;
te.innerHTML="Email id not valid";
} 
else if(!addr)
{flag=1;
te.innerHTML="address not valid";
}
else if(!nameex.test(city))
{flag=1;
te.innerHTML="city name not valid";
}
else if(!nameex.test(state))
{flag=1;
te.innerHTML="state name not valid";
}
else if(!nameex.test(country))
{flag=1;
te.innerHTML="country name not valid";
}
else if(!pinex.test(pincode))
{flag=1;
te.innerHTML="Pincode not valid";
}

if(flag==0)
	return true;
return false;
}



/**
 * 
 */


function validate1()
{

var fname=document.getElementById("fname").value;
var lname=document.getElementById("lname").value;
var ph=document.getElementById("mobile").value;
var mail=document.getElementById("email").value;
var addr=document.getElementById("address").value;
var city=document.getElementById("city").value;
var state=document.getElementById("state").value;
var country=document.getElementById("country").value;
var pincode=document.getElementById("pincode").value;

//alert(nameal);
var te=document.getElementById('test');

var nameex=new RegExp("^([A-Z]|[a-z])+$");
var phex=new RegExp("^[0-9]{10}$");
var passex=new RegExp("^\\w{6}\\w*");
var pinex=new RegExp("^[0-9]+$");
var emailex=new RegExp("^(\\w)+@\\w+\.([a-z]|[A-Z]){3}$");


var flag=0;

if(!nameex.test(fname))
{flag=1;
te.innerHTML="First name not valid";
}
else if(!nameex.test(lname))
{flag=1;
te.innerHTML="Last name not valid";
}

else if(!emailex.test(mail))
{flag=1;
te.innerHTML="Email id not valid";
} 
else if(!addr)
{flag=1;
te.innerHTML="address not valid";
}
else if(!nameex.test(city))
{flag=1;
te.innerHTML="city name not valid";
}
else if(!nameex.test(state))
{flag=1;
te.innerHTML="state name not valid";
}
else if(!nameex.test(country))
{flag=1;
te.innerHTML="country name not valid";
}
else if(!pinex.test(pincode))
{flag=1;
te.innerHTML="Pincode not valid";
}

if(flag==0)
	return true;
return false;
}

