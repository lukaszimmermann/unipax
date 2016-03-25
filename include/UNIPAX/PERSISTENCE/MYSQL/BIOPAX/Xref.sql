/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `Xref_comment`;

DROP TABLE IF EXISTS `Xref`;

CREATE TABLE `Xref` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `unipaxSource` BIGINT UNSIGNED NULL,
  `typeid` VARCHAR(255) NOT NULL,
  `idVersion` TEXT NOT NULL,
  `id` TEXT NOT NULL,
  `dbVersion` TEXT NOT NULL,
  `db` TEXT NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `Xref_comment` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `Xref_comment_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Xref` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Xref_comment` (`object_id`);

CREATE INDEX `index_i`
  ON `Xref_comment` (`index`);

/*
ALTER TABLE `Xref`
  ADD CONSTRAINT `Xref_unipaxSource_fk`
    FOREIGN KEY (`unipaxSource`)
    REFERENCES `ImportSource` (`unipaxId`)
*/
