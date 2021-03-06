/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `ResultObject_object_ids_blobs`;

DROP TABLE IF EXISTS `ResultObject`;

CREATE TABLE `ResultObject` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `typeid` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `constituting_query` TEXT NOT NULL,
  `creation_time` TIMESTAMP NOT NULL,
  `data_series` BIGINT UNSIGNED NULL,
  `size` BIGINT UNSIGNED NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `ResultObject_object_ids_blobs` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BLOB NOT NULL,
  CONSTRAINT `ResultObject_object_ids_blobs_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `ResultObject` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `ResultObject_object_ids_blobs` (`object_id`);

CREATE INDEX `index_i`
  ON `ResultObject_object_ids_blobs` (`index`);

/*
ALTER TABLE `ResultObject`
  ADD CONSTRAINT `ResultObject_data_series_fk`
    FOREIGN KEY (`data_series`)
    REFERENCES `Series` (`unipaxId`)
*/

