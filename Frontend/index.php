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
</head>
<body>
<div class="form">
<p>Welkom <?php echo $_SESSION['GebruikersNaam']; ?>!</p>
<p>Dit is een veilige pagina.</p>
<a href="logout.php">Logout</a>
</div>
</body>
</html>
