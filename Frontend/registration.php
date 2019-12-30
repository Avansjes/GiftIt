<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registratie</title>
<link rel="stylesheet" href="css/style.css" />
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
<div class="form">
<h1>Registratie</h1>
<form name="registration" action="" method="post">
<input type="text" name="GebruikersNaam" placeholder="GebruikersNaam" required />
<input type="email" name="Email" placeholder="Email" required />
<input type="password" name="WachtWoord" placeholder="WachtWoord" required />
<input type="submit" name="submit" value="Register" />
</form>
</div>
<?php } ?>
</body>
</html>
