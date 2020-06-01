// Referenced from https://stackoverflow.com/questions/4644673/hide-all-elements-with-class-using-plain-javascript
// Fiddle: http://jsfiddle.net/HoffZ/pWJnZ/

window.onload = function() {
	// This event is triggered on a page load event.
	// The first line shows the body as soon as the page finishes loading. This prevents duplicates from showing upon a page load, even if those duplicates are only visible for a fraction of a second.
	document.body.style.display = 'block';
	if (localStorage.lang === null || localStorage.lang === "nl") {
		// The very first time you use the site, the localStorage variable will be empty. In this case, the site defaults to Dutch.
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
	// This event is triggered when the English flag icon is clicked.
	document.getElementById("en").style.opacity = "1";
	document.getElementById("nl").style.opacity = "0.3";
	// It looks at all the elements on a page with lang="nl" and lang="en", saves them in a variable that I named confusingly, I shouldn't have done that, hides the Dutch language elements, and shows the English language elements
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
	// The localStorage var allows your language preferences to be saved and transferred across pages, even if you close the browser.
	localStorage.lang = "en";
}

function setLang_nl() {
	// This event is triggered when the Dutch flag icon is clicked.
	document.getElementById("en").style.opacity = "0.3";
	document.getElementById("nl").style.opacity = "1";
	// It does the same thing as the other function except the other way around.
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
