/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

SET FEEDBACK OFF;
WHENEVER SQLERROR EXIT FAILURE;
WHENEVER OSERROR EXIT FAILURE;

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference_name" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_name_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_name_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference_id_xref" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_id_xref_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_id_xref_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference_evidence" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_evidence_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_evidence_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference_id_memberEnti" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_id_memberEnti"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_id_memberEnti"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference_comment" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_comment_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_comment_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "ProteinReference" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "ProteinReference_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "ProteinReference_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/


CREATE TABLE "ProteinReference" (
  "unipaxId" NUMBER(20) NOT NULL PRIMARY KEY,
  "unipaxSource" NUMBER(20),
  "entityReferenceType" NUMBER(20),
  "id_entityFeature" NUMBER(20) NOT NULL,
  "standardName" VARCHAR2(512),
  "displayName" VARCHAR2(512),
  "sequence" VARCHAR2(512),
  "organism" NUMBER(20));

CREATE TABLE "ProteinReference_comment" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "ProteinReference_comment_objec"
    FOREIGN KEY ("object_id")
    REFERENCES "ProteinReference" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "ProteinReference_comment_objec"
  ON "ProteinReference_comment" ("object_id");

CREATE INDEX "ProteinReference_comment_index"
  ON "ProteinReference_comment" ("index");

CREATE TABLE "ProteinReference_id_memberEnti" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "ProteinReference_id_memberEnti"
    FOREIGN KEY ("object_id")
    REFERENCES "ProteinReference" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "ProteinReference_id_memberEnti"
  ON "ProteinReference_id_memberEnti" ("object_id");

CREATE INDEX "ProteinReference_id_memberEnti"
  ON "ProteinReference_id_memberEnti" ("index");

CREATE TABLE "ProteinReference_evidence" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20),
  CONSTRAINT "ProteinReference_evidence_obje"
    FOREIGN KEY ("object_id")
    REFERENCES "ProteinReference" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "ProteinReference_evidence_obje"
  ON "ProteinReference_evidence" ("object_id");

CREATE INDEX "ProteinReference_evidence_inde"
  ON "ProteinReference_evidence" ("index");

CREATE TABLE "ProteinReference_id_xref" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "ProteinReference_id_xref_objec"
    FOREIGN KEY ("object_id")
    REFERENCES "ProteinReference" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "ProteinReference_id_xref_objec"
  ON "ProteinReference_id_xref" ("object_id");

CREATE INDEX "ProteinReference_id_xref_index"
  ON "ProteinReference_id_xref" ("index");

CREATE TABLE "ProteinReference_name" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "ProteinReference_name_object_i"
    FOREIGN KEY ("object_id")
    REFERENCES "ProteinReference" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "ProteinReference_name_object_i"
  ON "ProteinReference_name" ("object_id");

CREATE INDEX "ProteinReference_name_index_i"
  ON "ProteinReference_name" ("index");

ALTER TABLE "ProteinReference" ADD
  CONSTRAINT "ProteinReference_unipaxSource_"
    FOREIGN KEY ("unipaxSource")
    REFERENCES "ImportSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "ProteinReference" ADD
  CONSTRAINT "ProteinReference_entityReferen"
    FOREIGN KEY ("entityReferenceType")
    REFERENCES "EntityReferenceTypeVocabulary" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "ProteinReference" ADD
  CONSTRAINT "ProteinReference_organism_fk"
    FOREIGN KEY ("organism")
    REFERENCES "BioSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "ProteinReference_evidence" ADD
  CONSTRAINT "ProteinReference_evidence_valu"
    FOREIGN KEY ("value")
    REFERENCES "Evidence" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

EXIT;