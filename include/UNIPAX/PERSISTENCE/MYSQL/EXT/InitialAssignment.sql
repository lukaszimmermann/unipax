/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `InitialAssignment`;

CREATE TABLE `InitialAssignment` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `unipaxSource` BIGINT UNSIGNED NULL,
  `metaId` TEXT NOT NULL,
  `sboTerm` TEXT NOT NULL,
  `notes` TEXT NOT NULL,
  `annotation` TEXT NOT NULL,
  `typeid` VARCHAR(255) NOT NULL,
  `symbol` TEXT NOT NULL,
  `math` BIGINT UNSIGNED NULL)
 ENGINE=InnoDB;

/*
ALTER TABLE `InitialAssignment`
  ADD CONSTRAINT `InitialAssignment_unipaxSource_fk`
    FOREIGN KEY (`unipaxSource`)
    REFERENCES `ImportSource` (`unipaxId`),
  ADD CONSTRAINT `InitialAssignment_math_fk`
    FOREIGN KEY (`math`)
    REFERENCES `Math` (`unipaxId`)
*/

