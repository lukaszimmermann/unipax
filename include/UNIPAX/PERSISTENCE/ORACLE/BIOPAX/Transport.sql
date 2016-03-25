/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

SET FEEDBACK OFF;
WHENEVER SQLERROR EXIT FAILURE;
WHENEVER OSERROR EXIT FAILURE;

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_id_rightEntity" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_id_rightEntity_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_id_rightEntity_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_id_leftEntity" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_id_leftEntity_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_id_leftEntity_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_participantStoichiom" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_participantStoichiom"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_participantStoichiom"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_interactionType" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_interactionType_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_interactionType_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_id_participant" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_id_participant_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_id_participant_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_id_xref" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_id_xref_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_id_xref_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_name" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_name_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_name_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport_comments" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_comments_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_comments_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Transport" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Transport_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Transport_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/


CREATE TABLE "Transport" (
  "unipaxId" NUMBER(20) NOT NULL PRIMARY KEY,
  "unipaxSource" NUMBER(20),
  "availability" VARCHAR2(512),
  "standardName" VARCHAR2(512),
  "displayName" VARCHAR2(512),
  "evidence" NUMBER(20),
  "dataSource" NUMBER(20),
  "conversionDirection" VARCHAR2(512),
  "spontaneous" NUMBER(1) NOT NULL,
  "kineticLaw" NUMBER(20));

CREATE TABLE "Transport_comments" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "Transport_comments_object_id_f"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_comments_object_id_i"
  ON "Transport_comments" ("object_id");

CREATE INDEX "Transport_comments_index_i"
  ON "Transport_comments" ("index");

CREATE TABLE "Transport_name" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "Transport_name_object_id_fk"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_name_object_id_i"
  ON "Transport_name" ("object_id");

CREATE INDEX "Transport_name_index_i"
  ON "Transport_name" ("index");

CREATE TABLE "Transport_id_xref" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Transport_id_xref_object_id_fk"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_id_xref_object_id_i"
  ON "Transport_id_xref" ("object_id");

CREATE INDEX "Transport_id_xref_index_i"
  ON "Transport_id_xref" ("index");

CREATE TABLE "Transport_id_participant" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Transport_id_participant_objec"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_id_participant_objec"
  ON "Transport_id_participant" ("object_id");

CREATE INDEX "Transport_id_participant_index"
  ON "Transport_id_participant" ("index");

CREATE TABLE "Transport_interactionType" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20),
  CONSTRAINT "Transport_interactionType_obje"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_interactionType_obje"
  ON "Transport_interactionType" ("object_id");

CREATE INDEX "Transport_interactionType_inde"
  ON "Transport_interactionType" ("index");

CREATE TABLE "Transport_participantStoichiom" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20),
  CONSTRAINT "Transport_participantStoichiom"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_participantStoichiom"
  ON "Transport_participantStoichiom" ("object_id");

CREATE INDEX "Transport_participantStoichiom"
  ON "Transport_participantStoichiom" ("index");

CREATE TABLE "Transport_id_leftEntity" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Transport_id_leftEntity_object"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_id_leftEntity_object"
  ON "Transport_id_leftEntity" ("object_id");

CREATE INDEX "Transport_id_leftEntity_index_"
  ON "Transport_id_leftEntity" ("index");

CREATE TABLE "Transport_id_rightEntity" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "Transport_id_rightEntity_objec"
    FOREIGN KEY ("object_id")
    REFERENCES "Transport" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "Transport_id_rightEntity_objec"
  ON "Transport_id_rightEntity" ("object_id");

CREATE INDEX "Transport_id_rightEntity_index"
  ON "Transport_id_rightEntity" ("index");

ALTER TABLE "Transport" ADD
  CONSTRAINT "Transport_unipaxSource_fk"
    FOREIGN KEY ("unipaxSource")
    REFERENCES "ImportSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Transport" ADD
  CONSTRAINT "Transport_evidence_fk"
    FOREIGN KEY ("evidence")
    REFERENCES "Evidence" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Transport" ADD
  CONSTRAINT "Transport_dataSource_fk"
    FOREIGN KEY ("dataSource")
    REFERENCES "Provenance" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Transport" ADD
  CONSTRAINT "Transport_kineticLaw_fk"
    FOREIGN KEY ("kineticLaw")
    REFERENCES "KineticLaw" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Transport_interactionType" ADD
  CONSTRAINT "Transport_interactionType_valu"
    FOREIGN KEY ("value")
    REFERENCES "InteractionVocabulary" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Transport_participantStoichiom" ADD
  CONSTRAINT "Transport_participantStoichiom"
    FOREIGN KEY ("value")
    REFERENCES "Stoichiometry" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

EXIT;