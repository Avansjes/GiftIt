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
	</head>
	<body>
		<div class="index wrap" style="background-image: url(images/home-bg.png);">
			<div class="search-container">
				<form action="search.php">
					<input type="text" class="search" placeholder="Zoeken..." name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
			<a href="index.php"><div class="logo" style="background-image: url(images/logo-groen.png);"></div></a>
			<div class="form login">
				<p>Welkom <?php echo $_SESSION['GebruikersNaam']; ?>!</p>
				<p>Je bent nu ingelogd.</p>
			</div>
			<a href="submit.php">
				<input type="submit" class="giftbtn" name="gift" value="Plaats een gift!">
			</a>
			<div class="lang">
				<a href="#" onclick="setLang_nl()" id="nl" class="language nl"><img src="images/nl.png"/></a>
				<a href="#" onclick="setLang_en()" id="en" class="language en"><img src="images/en.png"/></a>
			</div>
			<a href="logout.php" class="logout-button">Logout</a>
		</div>
		<div>
			<div class="feed">
				<?php
					$query = "SELECT * FROM `advertentie`";
					$result = mysqli_query($con,$query) or die(mysql_error());
					while($row = $result->fetch_assoc()) { ?>
					<div class="feed-body">
						<div class="feed-container">
							<div class="title">
								<?php echo $row["Titel"]; ?>
							</div>
							<br/>
							<div class="feed-data">
								<span><?php echo $row["Inhoud"]; ?></span>
							</div>
						</div>
					</div>
					<?php }
				?>
			</div>
		</div>
	</body>
</html>