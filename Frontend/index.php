<?php
//include auth.php file on all secure pages
include("auth.php");
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
<a href="logout.php">Logout</a>
</div>
<input type="submit" class="giftbtn" name="gift" value="Plaats een gift!">
</div>
</body>
</html>
