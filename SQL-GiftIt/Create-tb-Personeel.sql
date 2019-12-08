CREATE TABLE `giftit`.`personeel` ( 
`PersoneelsID` INT(5) NOT NULL AUTO_INCREMENT , 
`Naam` VARCHAR(20) NOT NULL , 
`Achternaam` VARCHAR(20) NOT NULL , 
`Straat` VARCHAR(50) NOT NULL , 
`Huisnummer` VARCHAR(5) NOT NULL , 
`Postcode` VARCHAR(6) NOT NULL , 
`Stad` VARCHAR(20) NOT NULL , 
`Land` VARCHAR(20) NOT NULL , 
`Rol` INT(5) NOT NULL , 
PRIMARY KEY (`PersoneelsID`));
