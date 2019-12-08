/* CREATE table urenreg */
CREATE TABLE `giftit`.`urenreg` ( 
`RegID` INT(10) NOT NULL AUTO_INCREMENT , 
`StartTijd` DATETIME NOT NULL , 
`EindTijd` DATETIME NOT NULL , 
`TotUren` TIME NOT NULL , 
`PersoneelsID` INT(5) NOT NULL , PRIMARY KEY (`RegID`));

/* INSERT voorbeelden */
INSERT INTO `urenreg` (`RegID`, `StartTijd`, `EindTijd`, `TotUren`, `PersoneelsID`) VALUES (NULL, '2019-12-08 11:00:00', '2019-12-08 13:00:00', '03:00:00', '1');
INSERT INTO `urenreg` (`RegID`, `StartTijd`, `EindTijd`, `TotUren`, `PersoneelsID`) VALUES (NULL, '2019-12-08 10:00:00', '2019-12-08 12:00:00', '03:00:00', '2');
INSERT INTO `urenreg` (`RegID`, `StartTijd`, `EindTijd`, `TotUren`, `PersoneelsID`) VALUES (NULL, '2019-12-08 9:00:00', '2019-12-08 11:00:00', '03:00:00', '3');
INSERT INTO `urenreg` (`RegID`, `StartTijd`, `EindTijd`, `TotUren`, `PersoneelsID`) VALUES (NULL, '2019-12-08 8:00:00', '2019-12-08 10:00:00', '03:00:00', '4');