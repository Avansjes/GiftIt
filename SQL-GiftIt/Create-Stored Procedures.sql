/* (Robin) Middels onderstaande procedure kan er een volgnummer worden aangemaakt voor een pakket. */
/* Create Stored Procedure */
DELIMITER //
CREATE PROCEDURE `insert_pakketvolgnr` (
	IN `par_TrackingNO` VARCHAR(40), 
	IN `par_Vervoerder` VARCHAR(35), 
	IN `par_ServiceLevel` VARCHAR(35), 
	IN `par_OrderID` INT(6)) 
BEGIN 
	INSERT INTO `pakketvolgnr` ( 
	`TrackingNO`, 
	`Vervoerder`, 
	`ServiceLevel`, 
	`OrderID`) VALUES ( 
	NULL, 
	`par_TrackingNO`, 
	`par_Vervoerder`, 
	`par_ServiceLevel`, 
	`par_OrderID`);
END;
//

/* CALL Stored Procedure */
CALL `insert_pakketvolgnr` (TrackingNO,Vervoerder,ServiceLevel,OrderID)


/* Stored Prcedure Vervoerder aanmaken */
DELIMITER //
CREATE PROCEDURE `insertVervoerder`
  (IN `par_vervoerder` VARCHAR(35),IN `par_ServiceLevel` VARCHAR(35), OUT `resultaat1` VARCHAR(35),OUT `resultaat2` VARCHAR(35),OUT `resultaat3` VARCHAR(80),OUT `resultaat4` VARCHAR(50))
BEGIN
  INSERT INTO `giftit`.`vervoerder`(`Vervoerder`,`ServiceLevel`) 
  VALUES(`par_vervoerder`, `par_ServiceLevel`);
  Select `Vervoerder`,`ServiceLevel`,`Omschrijving`,`LinkVervoerder`
  into `resultaat1`,`resultaat2`,`resultaat3`,`resultaat4`
  from `giftit`.`vervoerder`
  where `Vervoerder`= `par_vervoerder`
  and `ServiceLevel` = `par_ServiceLevel`;
END;
//

/* Voorbeeld nieuwe vervoerder toevoegen middels Storede Function */
call `insertVervoerder` ('FEDEX','EXPRESS', @restultaat1,@restultaat2,@restultaat3,@restultaat4);
select @restultaat1,@restultaat2,@restultaat3,@restultaat4;

/* Create Trigger op tabel order om inserts te genereren voor de tabel transactie */
DELIMITER //
CREATE OR REPLACE TRIGGER `transactie_geschiedenis`
AFTER INSERT ON `giftit`.`order`
FOR EACH ROW

BEGIN
	INSERT INTO `giftit`.`transactie` VALUES (
        null, new.OrderID, new.AdvID, new.GebruikersID, new.StatusOrder, new.StatusOrder, new.PersoneelsID);
END
//