<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
require('db.php');
session_start();
// If form submitted, insert values into the database.
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
<div class="form">
<h1>Log In</h1>
<form action="" method="post" name="login">
<input type="text" name="GebruikersNaam" placeholder="Gebruikersnaam" required />
<input type="password" name="WachtWoord" placeholder="Wachtwoord" required />
<input name="submit" type="submit" value="Login" />
</form>
<p>Nog geen account? <a href='registration.php'>Maak er hier één aan.</a></p>
</div>
<?php } ?>
</body>
</html>
