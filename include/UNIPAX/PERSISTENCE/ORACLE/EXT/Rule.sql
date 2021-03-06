/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

SET FEEDBACK OFF;
WHENEVER SQLERROR EXIT FAILURE;
WHENEVER OSERROR EXIT FAILURE;

BEGIN
  BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE "Rule" CASCADE CONSTRAINTS';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
  END;  BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE "Rule_seq"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -2289 THEN RAISE; END IF;
  END;
  BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER "Rule_trg"';
  EXCEPTION
    WHEN OTHERS THEN
      IF SQLCODE != -4080 THEN RAISE; END IF;
  END;
END;
/


CREATE TABLE "Rule" (
  "unipaxId" NUMBER(20) NOT NULL PRIMARY KEY,
  "unipaxSource" NUMBER(20),
  "metaId" VARCHAR2(512),
  "sboTerm" VARCHAR2(512),
  "notes" VARCHAR2(512),
  "annotation" VARCHAR2(512),
  "math" NUMBER(20));

ALTER TABLE "Rule" ADD
  CONSTRAINT "Rule_unipaxSource_fk"
    FOREIGN KEY ("unipaxSource")
    REFERENCES "ImportSource" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE "Rule" ADD
  CONSTRAINT "Rule_math_fk"
    FOREIGN KEY ("math")
    REFERENCES "Math" ("unipaxId")
    DEFERRABLE INITIALLY DEFERRED;

EXIT;
