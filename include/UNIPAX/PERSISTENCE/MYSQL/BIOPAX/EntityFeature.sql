/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `EntityFeature_featureLocationType`;

DROP TABLE IF EXISTS `EntityFeature_featureLocation`;

DROP TABLE IF EXISTS `EntityFeature_memberFeature`;

DROP TABLE IF EXISTS `EntityFeature_evidence`;

DROP TABLE IF EXISTS `EntityFeature_comment`;

DROP TABLE IF EXISTS `EntityFeature`;

CREATE TABLE `EntityFeature` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
  `unipaxSource` BIGINT UNSIGNED NULL,
  `typeid` VARCHAR(255) NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `EntityFeature_comment` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `EntityFeature_comment_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `EntityFeature` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `EntityFeature_comment` (`object_id`);

CREATE INDEX `index_i`
  ON `EntityFeature_comment` (`index`);

CREATE TABLE `EntityFeature_evidence` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `EntityFeature_evidence_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `EntityFeature` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `EntityFeature_evidence` (`object_id`);

CREATE INDEX `index_i`
  ON `EntityFeature_evidence` (`index`);

CREATE TABLE `EntityFeature_memberFeature` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `EntityFeature_memberFeature_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `EntityFeature` (`unipaxId`)
    ON DELETE CASCADE
  /*
  CONSTRAINT `EntityFeature_memberFeature_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `EntityFeature` (`unipaxId`)
  */)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `EntityFeature_memberFeature` (`object_id`);

CREATE INDEX `index_i`
  ON `EntityFeature_memberFeature` (`index`);

CREATE TABLE `EntityFeature_featureLocation` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `EntityFeature_featureLocation_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `EntityFeature` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `EntityFeature_featureLocation` (`object_id`);

CREATE INDEX `index_i`
  ON `EntityFeature_featureLocation` (`index`);

CREATE TABLE `EntityFeature_featureLocationType` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `EntityFeature_featureLocationType_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `EntityFeature` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `EntityFeature_featureLocationType` (`object_id`);

CREATE INDEX `index_i`
  ON `EntityFeature_featureLocationType` (`index`);

/*
ALTER TABLE `EntityFeature`
  ADD CONSTRAINT `EntityFeature_unipaxSource_fk`
    FOREIGN KEY (`unipaxSource`)
    REFERENCES `ImportSource` (`unipaxId`)
*/

/*
ALTER TABLE `EntityFeature_evidence`
  ADD CONSTRAINT `EntityFeature_evidence_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `Evidence` (`unipaxId`)
*/

/*
ALTER TABLE `EntityFeature_featureLocation`
  ADD CONSTRAINT `EntityFeature_featureLocation_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `SequenceLocation` (`unipaxId`)
*/

/*
ALTER TABLE `EntityFeature_featureLocationType`
  ADD CONSTRAINT `EntityFeature_featureLocationType_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `SequenceRegionVocabulary` (`unipaxId`)
*/
