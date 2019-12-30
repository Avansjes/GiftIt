<?php
session_start();
if(!isset($_SESSION["GebruikersNaam"])){
header("Location: login.php");
exit(); }
?>
