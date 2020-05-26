<?php
//include auth.php file on all secure pages
	include("auth.php");
	require('db.php');
	if(isset($_POST['search'])){
		//When the user presses this button, we run a search query
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>GiftIt</title>
		<link rel="stylesheet" href="css/style.css" />
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<script src="js/lang.js"></script>
	</head>
	<body>
	<?php
		if(isset($_POST['submit'])){
			//Get user ID from database
			//Page referenced: https://www.phptpoint.com/mysqli-fetch-row/
			$GebruikersID = $_SESSION['GebruikersNaam'];
			$sql = "SELECT `GebruikersID` FROM `gebruiker` WHERE `GebruikersNaam`='$GebruikersID'";
			$result = mysqli_query($con,$sql);
			while($r=mysqli_fetch_row($result))
			$finalID = $r[0];
			//Get everything else from the form
			//Page referenced for the DateTime: https://stackoverflow.com/questions/38327793/how-can-i-insert-real-time-of-an-event-into-database-using-php-mysqli
			$AanmaakDatum = date("Y-m-d H:i:s");
			$Titel = stripslashes($_POST['Titel']);
			$Titel = mysqli_real_escape_string($con,$Titel);
			$Inhoud = stripslashes($_POST['Inhoud']);
			$Inhoud = mysqli_real_escape_string($con,$Inhoud);
			//Page referenced for image uploading: https://www.geeksforgeeks.org/how-to-upload-image-into-database-and-display-it-using-php/
			//Page referenced for storing image in BLOB: https://phppot.com/php/mysql-blob-using-php/
			$StatusProduct = stripslashes($_POST['StatusProduct']);
			$StatusProduct = mysqli_real_escape_string($con,$StatusProduct);
			$CategorieID = stripslashes($_POST['CategorieID']);
			$CategorieID = mysqli_real_escape_string($con,$CategorieID);
			$query = "INSERT INTO `advertentie` (AanmaakDatum, GebruikersID, CategorieID, Titel, Inhoud, StatusProduct) VALUES ('$AanmaakDatum','$finalID', '$CategorieID', '$Titel', '$Inhoud', '$StatusProduct')";
			$result = mysqli_query($con,$query);
			if($result){
				//Back to index.php
				header("Location: index.php");
			}
		}else{
		?>
		<div class="submit wrap" style="background-image: url(images/register-bg.png);">
			<div class="search-container">
				<form action="search.php">
					<input lang="nl" type="text" class="search" placeholder="Zoeken..." name="search">
					<input lang="en" type="text" class="search" placeholder="Search..." name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
			<div class="lang">
				<a href="#" onclick="setLang_nl()" id="nl" class="language nl"><img src="images/nl.png"/></a>
				<a href="#" onclick="setLang_en()" id="en" class="language en"><img src="images/en.png"/></a>
			</div>
			<a href="logout.php" class="logout-button">Logout</a>
			<a href="index.php">
				<div class="logo" style="background-image: url(images/logo-groen.png);"></div>
			</a>
			<div class="submission">
				<div class="new-submission">
					<form lang="nl" name="new-submission" action="" method="post">
						<input type="text" name="Titel" placeholder="Plaats de titel hier" required />
						<textarea name="Inhoud" placeholder="Plaats een beschrijving hier" required></textarea>
						<input type="text" name="Foto" placeholder="Upload een foto" required />
						<label for="StatusProduct">Selecteer hier de staat waarin het product verkeert:</label>
						<select name="StatusProduct">
							<option value="Nieuw">Nieuw</option>
							<option value="Zo goed als nieuw">Zo goed als nieuw</option>
							<option value="Gebruikt">Gebruikt</option>
						</select>
						<label for="CategorieID">Selecteer hier de categorie waarin de advertentie word geplaatst:</label>
						<select name="CategorieID">
							<option value="1">Huis en inrichting</option>
							<option value="2">Woonkamer</option>
							<option value="3">Badkamer</option>
							<option value="4">Slaapkamer</option>
							<option value="5">Lampen</option>
							<option value="6">Woonaccessoires</option>
							<option value="7">Kunst</option>
							<option value="8">Kleding</option>
							<option value="9">Mannenkleding</option>
							<option value="10">Vrouwenkleding</option>
							<option value="11">Kinderkleding</option>
							<option value="12">Voor de baby</option>
							<option value="13">Babyspeelgoed</option>
							<option value="14">Baby kleding</option>
							<option value="15">Boeken</option>
							<option value="16">Hobby en vrije tijd</option>
							<option value="17">Sieraden</option>
							<option value="18">Electronica</option>
							<option value="19">Games en consoles</option>
							<option value="20">Muziekinstrumenten</option>
							<option value="21">Verzamelen</option>
						</select>
						<div class="button">
							<input type="submit" class="submit" name="submit" value="Plaats advertentie" />
						</div>
					</form>
					<form lang="en" name="new-submission" action="" method="post">
						<input type="text" name="Titel" placeholder="Place the title here" required />
						<textarea name="Inhoud" placeholder="Place a description here" required></textarea>
						<input type="text" name="Foto" placeholder="Upload a picture" required />
						<label for="StatusProduct">Select the condition of the product:</label>
						<select name="StatusProduct">
							<option value="Nieuw">New</option>
							<option value="Zo goed als nieuw">As good as new</option>
							<option value="Gebruikt">Used</option>
						</select>
						<label for="CategorieID">Select the category the ad will be placed in:</label>
						<select name="CategorieID">
							<option value="1">Home appliance</option>
							<option value="2">Living room</option>
							<option value="3">Bathroom</option>
							<option value="4">Bedroom</option>
							<option value="5">Lamps</option>
							<option value="6">Living accessories</option>
							<option value="7">Art</option>
							<option value="8">Clothing</option>
							<option value="9">Men's clothing</option>
							<option value="10">Women's clothing</option>
							<option value="11">Children's clothing</option>
							<option value="12">For the baby</option>
							<option value="13">Baby toys</option>
							<option value="14">Baby clothing</option>
							<option value="15">Books</option>
							<option value="16">Hobby and leisure</option>
							<option value="17">Jewelry</option>
							<option value="18">Electronics</option>
							<option value="19">Games and consoles</option>
							<option value="20">Musical instruments</option>
							<option value="21">Collectibles</option>
						</select>
						<div class="button">
							<input type="submit" class="submit" name="submit" value="Place the ad" />
						</div>
					</form>
				</div>
			</div>
			<?php } ?>
		</div>
	</body>
</html>
