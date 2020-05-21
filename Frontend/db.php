<?php
	$con = mysqli_connect("localhost","root","","giftit");
	// Check connection
	if (mysqli_connect_errno()){
		echo "Er kon geen verbinding gemaakt worden met MySQL: " . mysqli_connect_error();
	}
?>