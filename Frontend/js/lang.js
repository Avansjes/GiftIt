// Referenced from https://stackoverflow.com/questions/4644673/hide-all-elements-with-class-using-plain-javascript
// Fiddle: http://jsfiddle.net/HoffZ/pWJnZ/

window.onload = function() {
	document.body.style.display = 'block';
	if (localStorage.lang === null || localStorage.lang === "nl") {
		document.getElementById("en").style.opacity = "0.3";
		document.getElementById("nl").style.opacity = "1";
		var en = document.querySelectorAll('[lang="nl"]'),
			i = 0,
			l = en.length;
		var nl = document.querySelectorAll('[lang="en"]'),
			j = 0,
			k = en.length;

		for (i; i < l; i++) {
			en[i].style.display = 'block';
		}
		for (j; j < k; j++) {
			nl[j].style.display = 'none';
		}
		localStorage.lang = "nl";
	} else {
		document.getElementById("en").style.opacity = "1";
		document.getElementById("nl").style.opacity = "0.3";
		var en = document.querySelectorAll('[lang="nl"]'),
			i = 0,
			l = en.length;
		var nl = document.querySelectorAll('[lang="en"]'),
			j = 0,
			k = en.length;

		for (i; i < l; i++) {
			en[i].style.display = 'none';
		}
		for (j; j < k; j++) {
			nl[j].style.display = 'block';
		}
		localStorage.lang = "en";
	}
}

function setLang_en() {
	document.getElementById("en").style.opacity = "1";
	document.getElementById("nl").style.opacity = "0.3";
	var en = document.querySelectorAll('[lang="nl"]'),
		i = 0,
		l = en.length;
	var nl = document.querySelectorAll('[lang="en"]'),
		j = 0,
		k = en.length;
	
	for (i; i < l; i++) {
		en[i].style.display = 'none';
	}
	for (j; j < k; j++) {
		nl[j].style.display = 'block';
	}
	localStorage.lang = "en";
}

function setLang_nl() {
	document.getElementById("en").style.opacity = "0.3";
	document.getElementById("nl").style.opacity = "1";
	var en = document.querySelectorAll('[lang="nl"]'),
		i = 0,
		l = en.length;
	var nl = document.querySelectorAll('[lang="en"]'),
		j = 0,
		k = en.length;
	
	for (i; i < l; i++) {
		en[i].style.display = 'block';
	}
	for (j; j < k; j++) {
		nl[j].style.display = 'none';
	}
	localStorage.lang = "nl";
}
