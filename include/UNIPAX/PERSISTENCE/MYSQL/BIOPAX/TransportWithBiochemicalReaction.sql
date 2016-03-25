/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `TransportWithBiochemicalReaction`;

CREATE TABLE `TransportWithBiochemicalReaction` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY)
 ENGINE=InnoDB;

ALTER TABLE `TransportWithBiochemicalReaction`
  ADD CONSTRAINT `TransportWithBiochemicalReaction_unipaxId_fk`
    FOREIGN KEY (`unipaxId`)
    REFERENCES `BiochemicalReaction` (`unipaxId`)
    ON DELETE CASCADE;
