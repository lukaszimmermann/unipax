/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

SET FEEDBACK OFF;
WHENEVER SQLERROR EXIT FAILURE;
WHENEVER OSERROR EXIT FAILURE;

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_id_product" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_id_product_se"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_id_product_tr"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_interactionTy" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_interactionTy"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_interactionTy"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_id_participan" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_id_participan"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_id_participan"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_id_xref" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_id_xref_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_id_xref_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_name" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_name_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_name_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction_comments" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_comments_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_comments_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "TemplateReaction" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "TemplateReaction_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "TemplateReaction_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/


CREATE TABLE "TemplateReaction" (
  "unipaxId" NUMBER(20) NOT NULL PRIMARY KEY,
  "unipaxSource" NUMBER(20),
  "availability" VARCHAR2(512),
  "standardName" VARCHAR2(512),
  "displayName" VARCHAR2(512),
  "evidence" NUMBER(20),
  "dataSource" NUMBER(20),
  "templateDirection" VARCHAR2(512),
  "id_templateEntity" NUMBER(20) NOT NULL);

CREATE TABLE "TemplateReaction_comments" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "TemplateReaction_comments_obje"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_comments_obje"
  ON "TemplateReaction_comments" ("object_id");

CREATE INDEX "TemplateReaction_comments_inde"
  ON "TemplateReaction_comments" ("index");

CREATE TABLE "TemplateReaction_name" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" VARCHAR2(512),
  CONSTRAINT "TemplateReaction_name_object_i"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_name_object_i"
  ON "TemplateReaction_name" ("object_id");

CREATE INDEX "TemplateReaction_name_index_i"
  ON "TemplateReaction_name" ("index");

CREATE TABLE "TemplateReaction_id_xref" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "TemplateReaction_id_xref_objec"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_id_xref_objec"
  ON "TemplateReaction_id_xref" ("object_id");

CREATE INDEX "TemplateReaction_id_xref_index"
  ON "TemplateReaction_id_xref" ("index");

CREATE TABLE "TemplateReaction_id_participan" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "TemplateReaction_id_participan"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_id_participan"
  ON "TemplateReaction_id_participan" ("object_id");

CREATE INDEX "TemplateReaction_id_participan"
  ON "TemplateReaction_id_participan" ("index");

CREATE TABLE "TemplateReaction_interactionTy" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20),
  CONSTRAINT "TemplateReaction_interactionTy"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_interactionTy"
  ON "TemplateReaction_interactionTy" ("object_id");

CREATE INDEX "TemplateReaction_interactionTy"
  ON "TemplateReaction_interactionTy" ("index");

CREATE TABLE "TemplateReaction_id_product" (
  "object_id" NUMBER(20) NOT NULL,
  "index" NUMBER(20) NOT NULL,
  "value" NUMBER(20) NOT NULL,
  CONSTRAINT "TemplateReaction_id_product_ob"
    FOREIGN KEY ("object_id")
    REFERENCES "TemplateReaction" ("unipaxId")
    ON DELETE CASCADE);

CREATE INDEX "TemplateReaction_id_product_ob"
  ON "TemplateReaction_id_product" ("object_id");

CREATE INDEX "TemplateReaction_id_product_in"
  ON "TemplateReaction_id_product" ("index");

ALTER TABLE "TemplateReaction" ADD
  CONSTRAINT "TemplateReaction_unipaxSource_"
    FOREIGN KEY ("unipaxSource")
    REFERENCES "ImportSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "TemplateReaction" ADD
  CONSTRAINT "TemplateReaction_evidence_fk"
    FOREIGN KEY ("evidence")
    REFERENCES "Evidence" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "TemplateReaction" ADD
  CONSTRAINT "TemplateReaction_dataSource_fk"
    FOREIGN KEY ("dataSource")
    REFERENCES "Provenance" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "TemplateReaction_interactionTy" ADD
  CONSTRAINT "TemplateReaction_interactionTy"
    FOREIGN KEY ("value")
    REFERENCES "InteractionVocabulary" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

EXIT;
