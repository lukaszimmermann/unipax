/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `SmallMoleculeReference`;

CREATE TABLE `SmallMoleculeReference` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `chemicalFormula` TEXT NOT NULL,
  `molecularWeight` DOUBLE NOT NULL,
  `structure` BIGINT UNSIGNED NULL)
 ENGINE=InnoDB;

ALTER TABLE `SmallMoleculeReference`
  ADD CONSTRAINT `SmallMoleculeReference_unipaxId_fk`
    FOREIGN KEY (`unipaxId`)
    REFERENCES `EntityReference` (`unipaxId`)
    ON DELETE CASCADE
  /*
  ADD CONSTRAINT `SmallMoleculeReference_structure_fk`
    FOREIGN KEY (`structure`)
    REFERENCES `ChemicalStructure` (`unipaxId`)
  */;
