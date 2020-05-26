<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<link rel="stylesheet" href="css/style.css" />
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<script src="js/lang.js"></script>
	</head>
	<body>
		<?php
			require('db.php');
			session_start();
			// If form submitted, insert values into the database.
			if(isset($_POST['search'])){
				//When the user presses this button, we run a search query
			}
			if (isset($_POST['GebruikersNaam'])){
				// removes backslashes
				$GebruikersNaam = stripslashes($_REQUEST['GebruikersNaam']);
				//escapes special characters in a string
				$GebruikersNaam = mysqli_real_escape_string($con,$GebruikersNaam);
				$WachtWoord = stripslashes($_REQUEST['WachtWoord']);
				$WachtWoord = mysqli_real_escape_string($con,$WachtWoord);
				//Checking is user existing in the database or not
				$query = "SELECT * FROM `gebruiker` WHERE GebruikersNaam='$GebruikersNaam'
				and WachtWoord='$WachtWoord'";
				$result = mysqli_query($con,$query) or die(mysql_error());
				$rows = mysqli_num_rows($result);
				if($rows==1){
					$_SESSION['GebruikersNaam'] = $GebruikersNaam;
					// Redirect user to index.php
					header("Location: index.php");
					}else{
						echo "<div class='form'>
						<h3>Gebruikersnaam/wachtwoord is incorrect.</h3>
						<br/>Klik hier om <a href='login.php'>in te loggen</a></div>";
					}
				}else{
			?>
			<div class="login wrap" style="background-image: url(images/home-bg.png);">
				<div class="lang">
					<a href="#" onclick="setLang_nl()" id="nl" class="language nl"><img src="images/nl.png"/></a>
					<a href="#" onclick="setLang_en()" id="en" class="language en"><img src="images/en.png"/></a>
				</div>
				<a href="index.php">
					<div class="logo" style="background-image: url(images/logo-groen.png);"></div>
				</a>
				<div class="search-container">
					<form action="search.php">
						<input type="text" class="search" placeholder="Zoeken..." name="search">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="form">
					<h1 lang="nl">Log In</h1>
					<h1 lang="en">Login</h1>
					<form lang="nl" action="" class="login-forms" method="post" name="login">
						<input type="text" name="GebruikersNaam" placeholder="Gebruikersnaam" required />
						<input type="password" name="WachtWoord" placeholder="Wachtwoord" required />
						<input name="submit" class="submit" type="submit" value="Login" />
					</form>
					<form lang="en" action="" class="login-forms" method="post" name="login">
						<input type="text" name="GebruikersNaam" placeholder="Username" required />
						<input type="password" name="WachtWoord" placeholder="Password" required />
						<input name="submit" class="submit" type="submit" value="Login" />
					</form>
					<p lang="nl">Nog geen account? <br><a href='registration.php'>Maak er hier één aan.</a></p>
					<p lang="en">Not yet registered? <br><a href='registration.php'>You can do so here.</a></p>
				</div>
			</div>
		<?php } ?>
	</body>
</html>
