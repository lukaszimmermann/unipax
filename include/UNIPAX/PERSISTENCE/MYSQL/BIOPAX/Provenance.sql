/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `Provenance_name`;

DROP TABLE IF EXISTS `Provenance_xref`;

DROP TABLE IF EXISTS `Provenance_comment`;

DROP TABLE IF EXISTS `Provenance`;

CREATE TABLE `Provenance` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `unipaxSource` BIGINT UNSIGNED NULL,
  `typeid` VARCHAR(255) NOT NULL,
  `standardName` TEXT NOT NULL,
  `displayName` TEXT NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `Provenance_comment` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `Provenance_comment_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Provenance` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Provenance_comment` (`object_id`);

CREATE INDEX `index_i`
  ON `Provenance_comment` (`index`);

CREATE TABLE `Provenance_xref` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `Provenance_xref_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Provenance` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Provenance_xref` (`object_id`);

CREATE INDEX `index_i`
  ON `Provenance_xref` (`index`);

CREATE TABLE `Provenance_name` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `Provenance_name_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Provenance` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Provenance_name` (`object_id`);

CREATE INDEX `index_i`
  ON `Provenance_name` (`index`);

/*
ALTER TABLE `Provenance`
  ADD CONSTRAINT `Provenance_unipaxSource_fk`
    FOREIGN KEY (`unipaxSource`)
    REFERENCES `ImportSource` (`unipaxId`)
*/

/*
ALTER TABLE `Provenance_xref`
  ADD CONSTRAINT `Provenance_xref_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `Xref` (`unipaxId`)
*/
