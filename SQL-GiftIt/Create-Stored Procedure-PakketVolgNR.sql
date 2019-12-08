/* Middels onderstaande procedure kan er een volgnummer worden aangemaakt voor een pakket. */
/* Create Stored Procedure */
DELIMITER //
CREATE PROCEDURE `insert_pakketvolgnr` 
	(IN `par_VervoerdersNR` INT, IN `par_BestellingID` INT, OUT `VolgNR` INT) 
BEGIN 
	INSERT INTO `pakketvolgnr` ( 
	`VolgNR`, 
	`VervoerdersNR`, 
	`BestellingID`) VALUES ( 
	NULL, 
	par_VervoerdersNR, 
	par_BestellingID); 
	SET VolgNR = LAST_INSERT_ID();
END
//

/* CALL Stored Procedure */
CALL `insert_pakketvolgnr` (VervoerdersNR,BestellingID, @VolgNR)