CREATE TABLE `giftit`.`urenreg` ( 
`RegID` INT(10) NOT NULL AUTO_INCREMENT , 
`StartTijd` DATETIME NOT NULL , 
`EindTijd` DATETIME NOT NULL , 
`TotUren` TIME NOT NULL , 
`PersoneelsID` INT(5) NOT NULL , PRIMARY KEY (`RegID`));
