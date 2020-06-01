<?php
//include auth.php file on all secure pages
	include("auth.php");
	require('db.php');
	if(isset($_POST['search'])){
		//When the user presses this button, we run a search query
		//https://stackoverflow.com/questions/23584735/how-to-create-a-search-feature-with-php-and-mysql
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>GiftIt</title>
		<link rel="stylesheet" href="css/style.css" />
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="icon" href="images/favicon.ico">
		<script src="js/lang.js"></script>
	</head>
	<body>
		<div class="index wrap" style="background-image: url(images/home-bg.png);">
			<div class="search-container">
				<form action="search.php" lang="nl">
					<input lang="nl" type="text" class="search" placeholder="Zoeken..." name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
				<form action="search.php" lang="en">
					<input lang="en" type="text" class="search" placeholder="Search..." name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
			<a href="index.php"><div class="logo" style="background-image: url(images/logo-groen.png);"></div></a>
			<div class="form login">
				<p lang="nl">Zoekresultaten voor <?php echo $_GET["search"]; ?></p>
				<p lang="en">Search results for <?php echo $_GET["search"]; ?></p>
			</div>
		<input type="submit" class="giftbtn" name="gift" value="Plaats een gift!">
		<div class="lang">
			<a href="#" onclick="setLang_nl()" id="nl" class="language nl"><img src="images/nl.png"/></a>
			<a href="#" onclick="setLang_en()" id="en" class="language en"><img src="images/en.png"/></a>
		</div>
		<a href="logout.php" class="logout-button">Logout</a>
		</div>
		<div>
			<div class="feed">
				<?php
					if(isset($_GET['search'])){
						$con=mysqli_connect("localhost","root","","giftit");
						$key = $_GET["search"]; //key=pattern to be searched
						$searchquery = "SELECT * FROM `advertentie` where `Inhoud` like '%$key%'";
						// Check connection
						if (mysqli_connect_errno()) {
							echo "Ik kon geen verbinding maken met de database. Foutmelding: " . mysqli_connect_error();
						}
						$result = mysqli_query($con,$searchquery) or die(mysql_error());
						while($row=mysqli_fetch_assoc($result)){?>
							<div class="feed-body">
								<div class="feed-container">
									<div class="title">
										<?php echo $row["Titel"]; ?>
									</div>
									<br/>
									<div class="feed-data">
										<span class="image"><?php echo '<img src="data:image/jpeg;base64,'.base64_encode( $row['ImageData'] ).'"/>'; ?></span>
										<span class="content"><?php echo $row["Inhoud"]; ?></span>
									</div>
								</div>
							</div>
						<?php
						}
						// Define content for the saved results
						$row_count = $result->num_rows;
						// $result is an object with a number of values (found with print_r ($ result)), one of which is num_rows, which shows the number of search results. Searching for "jas" with the test database gives a row of 2, "ring" gives 1, "asdf" gives 0.
						// This code is only triggered if the number of num_rows is equal to 0. In other words, if there are no search results.
						if ($row_count == 0) {
							$TijdZoeken = date("Y-m-d H:i:s");
							$GebruikersID = $_SESSION['GebruikersNaam'];
							$sql = "SELECT `GebruikersID` FROM `gebruiker` WHERE `GebruikersNaam`='$GebruikersID'";
							$foundID = mysqli_query($con,$sql);
							while($r=mysqli_fetch_row($foundID))
							$finalID = $r[0];
							$savequery = "INSERT into `zoekstring` (GebruikersID, ZoekOpdracht, TijdZoeken)
							VALUES ('$finalID', '$key', '$TijdZoeken')";
							$saveresult = mysqli_query($con,$savequery);
						}
						// End content table search results
					}
				?>
			</div>
		</div>
	</body>
</html>