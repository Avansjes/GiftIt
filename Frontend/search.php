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
				<p>Zoekresultaten</p>
			</div>
		<input type="submit" class="giftbtn" name="gift" value="Plaats een gift!">
		<a href="logout.php" class="logout-button">Logout</a>
		</div>
		<div>
			<div class="feed">
				<?php
					if(isset($_GET['search'])){
						$key=$_GET["search"]; //key=pattern to be searched
						$query = "SELECT * FROM `advertentie` where `Inhoud` like '%$key%'";
						$con=mysqli_connect("localhost","root","","giftit");
						// Check connection
						if (mysqli_connect_errno()) {
							echo "Ik kon geen verbinding maken met de database. Foutmelding: " . mysqli_connect_error();
						}
						$result = mysqli_query($con,$query) or die(mysql_error());
						while($row=mysqli_fetch_assoc($result)){?>
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
						<?php
						}
					}
				?>
			</div>
		</div>
	</body>
</html>