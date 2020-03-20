<?php
//include auth.php file on all secure pages
include("auth.php");
require('db.php');
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
<a href="index.php"><div class="logo" style="background-image: url(images/logo-groen.png);"></div></a>
<div class="form login">
<p>Welkom <?php echo $_SESSION['GebruikersNaam']; ?>!</p>
<p>Je bent nu ingelogd.</p>
<?php
	 $query = "SELECT * FROM `advertentie`";

	 $result = mysqli_query($con,$query) or die(mysql_error());

	while($row = $result->fetch_assoc()) { ?>

	<br>
	<div class="feedbody">
		<div class="title"><?php echo $row["Titel"]; ?></div><br>
		<div class="feed-data"><span><?php echo $row["Inhoud"]; ?></span></div><br><br>
	</div>
	<?php }
?>
<a href="logout.php">Logout</a>
</div>
<input type="submit" class="giftbtn" name="gift" value="Plaats een gift!">
</div>
</body>
</html>
