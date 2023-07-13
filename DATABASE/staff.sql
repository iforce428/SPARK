--------------------------------------------------------
--  File created - Thursday-July-13-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

  CREATE TABLE "HOMESTAY"."STAFF" 
   (	"STAFFID" NUMBER(*,0), 
	"STAFFNAME" VARCHAR2(500 BYTE), 
	"STAFFPHONENO" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(500 BYTE), 
	"SALARY" NUMBER(*,0), 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into HOMESTAY.STAFF
SET DEFINE OFF;
Insert into HOMESTAY.STAFF (STAFFID,STAFFNAME,STAFFPHONENO,EMAIL,SALARY,PASSWORD,ADMINID) values (4,'Nur Alia Hashir','0185340596','alia53@gmail.com',2200,'123',1);
Insert into HOMESTAY.STAFF (STAFFID,STAFFNAME,STAFFPHONENO,EMAIL,SALARY,PASSWORD,ADMINID) values (6,'Ghazali Hassan','0100384928','ghazalihassan@gmail.com',1800,'abc',1);
Insert into HOMESTAY.STAFF (STAFFID,STAFFNAME,STAFFPHONENO,EMAIL,SALARY,PASSWORD,ADMINID) values (7,'Tyra Kamarul','013950093','tyracomel@gmail.com',2200,'abc123',1);
--------------------------------------------------------
--  DDL for Index STAFFID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOMESTAY"."STAFFID_PK" ON "HOMESTAY"."STAFF" ("STAFFID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOMESTAY"."EMAIL_UK" ON "HOMESTAY"."STAFF" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."STAFF" ADD CONSTRAINT "EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HOMESTAY"."STAFF" ADD CONSTRAINT "STAFFID_PK" PRIMARY KEY ("STAFFID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HOMESTAY"."STAFF" MODIFY ("STAFFPHONENO" CONSTRAINT "STAFFPHONENO_NN" NOT NULL ENABLE);
  ALTER TABLE "HOMESTAY"."STAFF" MODIFY ("STAFFNAME" CONSTRAINT "STAFFNAME_NN" NOT NULL ENABLE);
