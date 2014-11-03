



var sPath=window.location.pathname;
var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
var menu=document.getElementById('menu');
chi=menu.childNodes;



var it;


for(it=0;chi[it];it++)
{if(chi[it].nodeType!=3){
if(chi[it].getAttribute('class')=="current")	
	{chi[it].removeAttribute('class');
break;}}
}

for(it=0;chi[it];it++)
{
	if(chi[it].nodeType!=3){
	//alert(chi[it].childNodes[0].getAttribute("href"));
	//alert(sPage);
	
	if(chi[it].childNodes[0].getAttribute("href")==sPage)	
	{chi[it].setAttribute('class',"current");
break;}
}
}

function hide() {
	disp = document.getElementById('disp')
	
	

	if (disp.innerHTML!="") {
	
		document.getElementById('t2').value = ""

	}
	disp.innerHTML = ""
		
}
function sug(e) {
	var disp = document.getElementById("disp");

	if (e.keyCode == '13') {

		ch = disp.childNodes;

		var l;
		for (l = 0; ch[l]; l++) {
			if (ch[l].getAttribute('class') == "suggest_link_over") {
				ch[l].removeAttribute('class');
				break;
			}

		}
		a = document.getElementById('t1');
		if(!ch[l])
			{go();
			return ;}a.value = ch[l].innerHTML;
		a = document.getElementById('t2');
		a.value = ch[l].innerHTML;
		disp.innerHTML = "";
		go();
	} else if (e.keyCode == '38' || e.keyCode == '40') {
		var ch = disp.childNodes;

		var l;
		for (l = 0; ch[l]; l++) {
			if (ch[l].getAttribute('class') == "suggest_link_over") {
				ch[l].removeAttribute('class');
				break;
			}

		}
		if (!ch[l] || !ch[l + 1])
			l = 0
		else {

			if (e.keyCode == '40')
				l++;
			else {
				if (!ch[l - 1]) {
					document.getElementById('disp').innerHTML = "";
					l = 0;
				} else
					l--;
			}
		}
		ch[l].setAttribute('class', 'suggest_link_over');
		a = document.getElementById('t2');
		a.value = ch[l].innerHTML
	}

	else {
		if (e.keyCode == '8') {
			document.getElementById('t2').value = document.getElementById('t1').value;

		}
		if (e.keyCode == '39') {

			document.getElementById('t1').value = document.getElementById('t2').value;
		}
		a = document.getElementById('t1');
		z = a.value;
		document.getElementById('t2').value = z
		y = document.getElementById('key').value;

		ajx = new XMLHttpRequest();
		ajx.onreadystatechange = function() {

			if (ajx.readyState == 4 && ajx.status == 200) {
				ee = ajx.responseText

				i = 0;
				arr = new Array(100)

				for (i = 0; i < 100; i++)
					arr[i] = new Array(100)
				i = 0
				j = 0;
				ind = 0;

				disp.innerHTML = ""

				while (ee[i] != "#") {
					arr[ind][j] = ee[i];

					j++;
					if (ee[i] == '>') {
						j = 0
						ind++

					}

					i++;

				}
				el = new Array(200)

				for (i = 0; i < ind; i++) {

					el[i] = document.createElement("div")
					el[i].setAttribute('onmouseover', 'ov(this)')
					el[i].setAttribute('onclick', 'cl(this)')

					for (j = 0; arr[i][j] != '<'; j++) {
						el[i].innerHTML += arr[i][j]
					}
					disp.appendChild(el[i])

				}

			}

		}
		ajx.open("GET", "SearchSug.jsp?key=" + y + "&val=" + z, true);
		ajx.send();
	}

}

function go() {
	document.getElementById("se").submit();
}

function ov(a) {
	a.style.cursor = "default"
	disp = document.getElementById('disp')
	ch = disp.childNodes
	for (l = 0; ch[l]; l++) {
		if (ch[l].getAttribute('class') == "suggest_link_over") {
			ch[l].removeAttribute('class');
			break;
		}

	}
	a.setAttribute('class', 'suggest_link_over')
	document.getElementById('t2').value = a.innerHTML
}

function cl(ax) {
	disp = document.getElementById('disp')

	ch = disp.childNodes;

	var l;
	for (l = 0; ch[l]; l++) {
		if (ch[l].getAttribute('class') == "suggest_link_over") {
			ch[l].removeAttribute('class');
			break;
		}

	}
	a = document.getElementById('t1');
	a.value = ax.innerHTML;
	a = document.getElementById('t2');
	a.value = ax.innerHTML;
	disp.innerHTML = "";
	go()
}


function sugg()
{

	a = document.getElementById('t1');
	z = a.value;
	document.getElementById('t2').value = z
	y = document.getElementById('key').value;

	ajx = new XMLHttpRequest();
	ajx.onreadystatechange = function() {

		if (ajx.readyState == 4 && ajx.status == 200) {
			ee = ajx.responseText

			i = 0;
			arr = new Array(100)

			for (i = 0; i < 100; i++)
				arr[i] = new Array(100)
			i = 0
			j = 0;
			ind = 0;

			disp.innerHTML = ""

			while (ee[i] != "#") {
				arr[ind][j] = ee[i];

				j++;
				if (ee[i] == '>') {
					j = 0
					ind++

				}

				i++;

			}
			el = new Array(200)

			for (i = 0; i < ind; i++) {

				el[i] = document.createElement("div")
				el[i].setAttribute('onmouseover', 'ov(this)')
				el[i].setAttribute('onclick', 'cl(this)')

				for (j = 0; arr[i][j] != '<'; j++) {
					el[i].innerHTML += arr[i][j]
				}
				disp.appendChild(el[i])

			}

		}

	}
	ajx.open("GET", "SearchSug.jsp?key=" + y + "&val=" + z, true);
	ajx.send();
}
