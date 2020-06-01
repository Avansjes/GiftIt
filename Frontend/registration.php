<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Registratie</title>
		<link rel="stylesheet" href="css/style.css" />
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="icon" href="images/favicon.ico">
		<script src="js/lang.js"></script>
	</head>
	<body>
	<?php
		require('db.php');
		// If form submitted, insert values into the database.
		if (isset($_REQUEST['GebruikersNaam'])){
			// removes backslashes
			$GebruikersNaam = stripslashes($_REQUEST['GebruikersNaam']);
			//escapes special characters in a string
			$GebruikersNaam = mysqli_real_escape_string($con,$GebruikersNaam);
			$Email = stripslashes($_REQUEST['Email']);
			$Email = mysqli_real_escape_string($con,$Email);
			$WachtWoord = stripslashes($_REQUEST['WachtWoord']);
			$WachtWoord = mysqli_real_escape_string($con,$WachtWoord);
			$query = "INSERT into `gebruiker` (GebruikersNaam, WachtWoord, Email, Rol)
			VALUES ('$GebruikersNaam', '$WachtWoord', '$Email', 'Gebruiker')";
			$result = mysqli_query($con,$query);
			if($result){
				echo "<div class='form'>
				<h3>Je hebt succesvol een account aangemaakt!</h3>
				<br/>Klik hier om <a href='login.php'>in te loggen.</a></div>";
			}
		}else{
		?>
		<div class="register wrap" style="background-image: url(images/register-bg.png);">
			<div class="lang">
				<a href="#" onclick="setLang_nl()" id="nl" class="language nl"><img src="images/nl.png"/></a>
				<a href="#" onclick="setLang_en()" id="en" class="language en"><img src="images/en.png"/></a>
			</div>
			<a href="index.php"><div class="logo" style="background-image: url(images/logo-groen.png);"></div></a>
			<div class="form registratie">
				<h1 lang="nl">Registratie</h1>
				<h1 lang="en">Registration</h1>
				<form lang="nl" name="registration" action="" method="post">
					<input type="text" name="GebruikersNaam" placeholder="Gebruikersnaam" required />
					<input type="email" name="Email" placeholder="Email" required />
					<input type="password" name="WachtWoord" placeholder="Wachtwoord" required />
					<input type="submit" class="submit" name="submit" value="Register" />
				</form>
				<form lang="en" name="registration" action="" method="post">
					<input type="text" name="GebruikersNaam" placeholder="Username" required />
					<input type="email" name="Email" placeholder="E-mail" required />
					<input type="password" name="WachtWoord" placeholder="Password" required />
					<input type="submit" class="submit" name="submit" value="Register" />
				</form>
			</div>
			<?php } ?>
		</div>
	</body>
</html>
