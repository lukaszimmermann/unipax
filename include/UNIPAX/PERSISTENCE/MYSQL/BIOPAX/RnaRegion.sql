/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `RnaRegion_entityReference`;

DROP TABLE IF EXISTS `RnaRegion`;

CREATE TABLE `RnaRegion` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY)
 ENGINE=InnoDB;

CREATE TABLE `RnaRegion_entityReference` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `RnaRegion_entityReference_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `RnaRegion` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `RnaRegion_entityReference` (`object_id`);

CREATE INDEX `index_i`
  ON `RnaRegion_entityReference` (`index`);

ALTER TABLE `RnaRegion`
  ADD CONSTRAINT `RnaRegion_unipaxId_fk`
    FOREIGN KEY (`unipaxId`)
    REFERENCES `PhysicalEntity` (`unipaxId`)
    ON DELETE CASCADE;

/*
ALTER TABLE `RnaRegion_entityReference`
  ADD CONSTRAINT `RnaRegion_entityReference_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `EntityReference` (`unipaxId`)
*/

