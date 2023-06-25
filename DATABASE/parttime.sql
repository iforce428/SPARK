--------------------------------------------------------
--  File created - Saturday-June-24-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PARTTIME
--------------------------------------------------------

  CREATE TABLE "HOMESTAY"."PARTTIME" 
   (	"PARTTIMESALARY" NUMBER(*,0), 
	"PARTSHIFT" NUMBER(*,0), 
	"STAFFID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into HOMESTAY.PARTTIME
SET DEFINE OFF;
Insert into HOMESTAY.PARTTIME (PARTTIMESALARY,PARTSHIFT,STAFFID) values (1800,6,6);
--------------------------------------------------------
--  DDL for Index STAFFID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOMESTAY"."STAFFID" ON "HOMESTAY"."PARTTIME" ("STAFFID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PARTTIME
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."PARTTIME" ADD CONSTRAINT "STAFFID" PRIMARY KEY ("STAFFID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARTTIME
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."PARTTIME" ADD CONSTRAINT "FK0" FOREIGN KEY ("STAFFID")
	  REFERENCES "HOMESTAY"."STAFF" ("STAFFID") ENABLE;