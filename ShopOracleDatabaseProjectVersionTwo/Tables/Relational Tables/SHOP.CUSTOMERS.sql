﻿-- Create a new Relational table with 3 columns

CREATE TABLE "SHOP"."CUSTOMERS"
(
  "ID" NUMBER(8) NOT NULL,
  "FIRSTNAME" VARCHAR2(255),
  "LASTNAME" VARCHAR2(255),
  CONSTRAINT "PK_CUSTOMERS" PRIMARY KEY ("ID") ENABLE
);
