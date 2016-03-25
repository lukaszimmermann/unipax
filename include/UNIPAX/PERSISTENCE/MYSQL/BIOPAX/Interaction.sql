/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `Interaction_interactionType`;

DROP TABLE IF EXISTS `Interaction_participant`;

DROP TABLE IF EXISTS `Interaction`;

CREATE TABLE `Interaction` (
  `unipaxId` BIGINT UNSIGNED NOT NULL PRIMARY KEY)
 ENGINE=InnoDB;

CREATE TABLE `Interaction_participant` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `Interaction_participant_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Interaction` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Interaction_participant` (`object_id`);

CREATE INDEX `index_i`
  ON `Interaction_participant` (`index`);

CREATE TABLE `Interaction_interactionType` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` BIGINT UNSIGNED NULL,
  CONSTRAINT `Interaction_interactionType_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `Interaction` (`unipaxId`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `Interaction_interactionType` (`object_id`);

CREATE INDEX `index_i`
  ON `Interaction_interactionType` (`index`);

ALTER TABLE `Interaction`
  ADD CONSTRAINT `Interaction_unipaxId_fk`
    FOREIGN KEY (`unipaxId`)
    REFERENCES `Entity` (`unipaxId`)
    ON DELETE CASCADE;

/*
ALTER TABLE `Interaction_participant`
  ADD CONSTRAINT `Interaction_participant_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `Entity` (`unipaxId`)
*/

/*
ALTER TABLE `Interaction_interactionType`
  ADD CONSTRAINT `Interaction_interactionType_value_fk`
    FOREIGN KEY (`value`)
    REFERENCES `InteractionVocabulary` (`unipaxId`)
*/
