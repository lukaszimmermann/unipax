/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `Gene`;

CREATE TABLE `Gene` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `organism` BIGINT UNSIGNED NULL)
 ENGINE=InnoDB;

ALTER TABLE `Gene`
  ADD CONSTRAINT `Gene_unipaxId_fk`
    FOREIGN KEY (`unipaxId`)
    REFERENCES `Entity` (`unipaxId`)
    ON DELETE CASCADE
  /*
  ADD CONSTRAINT `Gene_organism_fk`
    FOREIGN KEY (`organism`)
    REFERENCES `BioSource` (`unipaxId`)
  */;
