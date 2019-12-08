CREATE TABLE `giftit`.`pakketvolgnr` ( 
`VolgNR` INT(15) NULL DEFAULT NULL AUTO_INCREMENT , 
`VervoerdersNR` INT(5) NULL DEFAULT NULL , 
`BestellingID` INT(15) NULL DEFAULT NULL , 
UNIQUE `VolgNummer` (`VolgNR`));