/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

SET FEEDBACK OFF;
WHENEVER SQLERROR EXIT FAILURE;
WHENEVER OSERROR EXIT FAILURE;

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction_interactionType" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_interactionType_se"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_interactionType_tr"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction_id_participant" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_id_participant_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_id_participant_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction_id_xref" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_id_xref_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_id_xref_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction_name" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_name_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_name_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction_comments" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_comments_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_comments_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Interaction" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Interaction_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Interaction_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/


CREATE TABLE "Interaction" (
  "unipaxId" NUMBER(20) NOT NULL PRIMARY KEY,
  "unipaxSource" NUMBER(20),
  "availability" VARCHAR2(512),
  "standardName" VARCHAR2(512),
  "displayName" VARCHAR2(512),
  "evidence" NUMBER(20),
  "dataSource" NUMBER(20));

CREATE TABLE "Interaction_comments" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "Interaction_comments_object_id"
    FOREIGN KEY ("object_id")
    REFERENCES "Interaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Interaction_comments_object_id"
  ON "Interaction_comments" ("object_id");

CREATE INDEX "Interaction_comments_index_i"
  ON "Interaction_comments" ("index");

CREATE TABLE "Interaction_name" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "Interaction_name_object_id_fk"
    FOREIGN KEY ("object_id")
    REFERENCES "Interaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Interaction_name_object_id_i"
  ON "Interaction_name" ("object_id");

CREATE INDEX "Interaction_name_index_i"
  ON "Interaction_name" ("index");

CREATE TABLE "Interaction_id_xref" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Interaction_id_xref_object_id_"
    FOREIGN KEY ("object_id")
    REFERENCES "Interaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Interaction_id_xref_object_id_"
  ON "Interaction_id_xref" ("object_id");

CREATE INDEX "Interaction_id_xref_index_i"
  ON "Interaction_id_xref" ("index");

CREATE TABLE "Interaction_id_participant" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Interaction_id_participant_obj"
    FOREIGN KEY ("object_id")
    REFERENCES "Interaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Interaction_id_participant_obj"
  ON "Interaction_id_participant" ("object_id");

CREATE INDEX "Interaction_id_participant_ind"
  ON "Interaction_id_participant" ("index");

CREATE TABLE "Interaction_interactionType" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20),
  CONSTRAINT "Interaction_interactionType_ob"
    FOREIGN KEY ("object_id")
    REFERENCES "Interaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Interaction_interactionType_ob"
  ON "Interaction_interactionType" ("object_id");

CREATE INDEX "Interaction_interactionType_in"
  ON "Interaction_interactionType" ("index");

ALTER TABLE "Interaction" ADD
  CONSTRAINT "Interaction_unipaxSource_fk"
    FOREIGN KEY ("unipaxSource")
    REFERENCES "ImportSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Interaction" ADD
  CONSTRAINT "Interaction_evidence_fk"
    FOREIGN KEY ("evidence")
    REFERENCES "Evidence" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Interaction" ADD
  CONSTRAINT "Interaction_dataSource_fk"
    FOREIGN KEY ("dataSource")
    REFERENCES "Provenance" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Interaction_interactionType" ADD
  CONSTRAINT "Interaction_interactionType_va"
    FOREIGN KEY ("value")
    REFERENCES "InteractionVocabulary" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

EXIT;