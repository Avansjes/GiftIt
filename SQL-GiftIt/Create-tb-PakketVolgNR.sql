/* CREATE table pakketvolgnr */
CREATE TABLE `giftit`.`pakketvolgnr` ( 
`VolgNR` INT(15) NULL DEFAULT NULL AUTO_INCREMENT , 
`VervoerdersNR` INT(5) NULL DEFAULT NULL , 
`BestellingID` INT(15) NULL DEFAULT NULL , 
UNIQUE `VolgNummer` (`VolgNR`));

/* INSERT voorbeelden */
CALL `insert_pakketvolgnr` (1,1, @VolgNR);
CALL `insert_pakketvolgnr` (2,2, @VolgNR);
CALL `insert_pakketvolgnr` (1,3, @VolgNR);
CALL `insert_pakketvolgnr` (1,4, @VolgNR);
CALL `insert_pakketvolgnr` (1,5, @VolgNR);
CALL `insert_pakketvolgnr` (2,6, @VolgNR);
CALL `insert_pakketvolgnr` (1,7, @VolgNR);
CALL `insert_pakketvolgnr` (3,8, @VolgNR);
CALL `insert_pakketvolgnr` (1,9, @VolgNR);
CALL `insert_pakketvolgnr` (1,10, @VolgNR);