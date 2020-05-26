// Referenced from https://stackoverflow.com/questions/4644673/hide-all-elements-with-class-using-plain-javascript
// Fiddle: http://jsfiddle.net/HoffZ/pWJnZ/

window.onload = function() {
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
}

function setLang_en() {
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
}

function setLang_nl() {
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
}
