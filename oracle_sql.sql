--------------------------------------------------------
--  文件已创建 - 星期二-六月-04-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_SYS_ACL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SEQ_SYS_ACL_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 41 CACHE 20 ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_ACL_MODULE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_ACL_MODULE_ID"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_DEPT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_DEPT_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_LOG_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_LOG_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_ROLE_ACL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_ROLE_ACL_ID"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_ROLE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_ROLE_ID"  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_ROLE_USER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_ROLE_USER_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SQ_SYS_USER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SQ_SYS_USER_ID"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_EMP4
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."S_EMP4"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table SYS_ACL
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_ACL" 
   (	"ID" NUMBER(11,0), 
	"CODE" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"ACL_MODULE_ID" NUMBER(11,0) DEFAULT 0, 
	"URL" VARCHAR2(100 BYTE), 
	"TYPE" NUMBER(11,0), 
	"STATUS" NUMBER(11,0) DEFAULT 1, 
	"SEQ" NUMBER(11,0) DEFAULT 0, 
	"REMARK" VARCHAR2(200 BYTE), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."ID" IS '权限id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."CODE" IS '权限码';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."NAME" IS '权限名称';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."ACL_MODULE_ID" IS '权限所在的权限模块id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."URL" IS '请求的url, 可以填正则表达式';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."TYPE" IS '类型，1：菜单，2：按钮，3：其他';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."STATUS" IS '状态，1：正常，0：冻结';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."SEQ" IS '权限在当前模块下的顺序，由小到大';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."REMARK" IS '备注
';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."OPERATOR" IS '操作者';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."OPERATE_TIME" IS '最后一次更新时间';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL"."OPERATE_IP" IS '最后一个更新者的ip地址';
--------------------------------------------------------
--  DDL for Table SYS_ACL_MODULE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_ACL_MODULE" 
   (	"ID" NUMBER(11,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"PARENT_ID" NUMBER(11,0) DEFAULT 0, 
	"LEVELS" VARCHAR2(200 BYTE), 
	"SEQ" NUMBER(11,0) DEFAULT 0, 
	"STATUS" NUMBER(11,0) DEFAULT 1, 
	"REMARK" VARCHAR2(200 BYTE), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."ID" IS '权限模块id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."NAME" IS '权限模块名称';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."PARENT_ID" IS '上级权限模块id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."LEVELS" IS '权限模块层级';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."SEQ" IS '权限模块在当前层级下的顺序，由小到大';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."STATUS" IS '状态，1：正常，0：冻结';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."REMARK" IS '备注';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."OPERATOR" IS '操作者';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."OPERATE_TIME" IS '最后一次操作时间';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ACL_MODULE"."OPERATE_IP" IS '最后一次更新操作者的ip地址';
--------------------------------------------------------
--  DDL for Table SYS_DEPT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_DEPT" 
   (	"ID" NUMBER(11,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"PARENT_ID" NUMBER(11,0) DEFAULT 0, 
	"LEVELS" VARCHAR2(200 BYTE), 
	"SEQ" NUMBER(11,0) DEFAULT 0, 
	"REMARK" VARCHAR2(20 BYTE), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."ID" IS '部门id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."NAME" IS '部门名称';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."PARENT_ID" IS '上级部门id';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."LEVELS" IS '部门层级';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."SEQ" IS '部门在当前层级下的顺序，由小到大';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."REMARK" IS '备注';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."OPERATOR" IS '操作者';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."OPERATE_TIME" IS '最后一次操作时间';
 
   COMMENT ON COLUMN "SCOTT"."SYS_DEPT"."OPERATE_IP" IS '最后一次更新操作者的ip地址';
--------------------------------------------------------
--  DDL for Table SYS_LOG
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_LOG" 
   (	"ID" NUMBER(11,0), 
	"TYPE" NUMBER(11,0) DEFAULT 0, 
	"TARGET_ID" NUMBER(11,0), 
	"OLD_VALUE" CLOB, 
	"NEW_VALUE" CLOB, 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE), 
	"STATUS" NUMBER(11,0) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("OLD_VALUE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("NEW_VALUE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."TYPE" IS '权限更新的类型，1：部门，2：用户，3：权限模块，4：权限，5：角色，6：角色用户关系，7：角色权限关系';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."TARGET_ID" IS '基于type后指定的对象id，比如用户、权限、角色等表的主键';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."OLD_VALUE" IS '旧值';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."NEW_VALUE" IS '新值';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."OPERATOR" IS '操作者';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."OPERATE_TIME" IS '最后一次更新的时间';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."OPERATE_IP" IS '最后一次更新者的ip地址';
 
   COMMENT ON COLUMN "SCOTT"."SYS_LOG"."STATUS" IS '当前是否复原过，0：没有，1：复原过';
--------------------------------------------------------
--  DDL for Table SYS_ROLE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_ROLE" 
   (	"ID" NUMBER(11,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"TYPE" NUMBER(11,0) DEFAULT 1, 
	"STATUS" NUMBER(11,0), 
	"REMARK" VARCHAR2(20 BYTE), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_ROLE"."TYPE" IS '角色的类型，1：管理员角色，2：其他';
 
   COMMENT ON COLUMN "SCOTT"."SYS_ROLE"."STATUS" IS '状态，1：可用，0：冻结';
--------------------------------------------------------
--  DDL for Table SYS_ROLE_ACL
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_ROLE_ACL" 
   (	"ID" NUMBER, 
	"ROLE_ID" NUMBER, 
	"ACL_ID" NUMBER, 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SYS_ROLE_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_ROLE_USER" 
   (	"ID" NUMBER(11,0), 
	"ROLE_ID" NUMBER(11,0), 
	"USER_ID" NUMBER(11,0), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SYS_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."SYS_USER" 
   (	"ID" NUMBER(11,0), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"MAIL" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(200 BYTE), 
	"DEPT_ID" NUMBER(11,0), 
	"STATUS" NUMBER(11,0), 
	"REMARK" VARCHAR2(20 BYTE), 
	"OPERATOR" VARCHAR2(20 BYTE), 
	"OPERATE_TIME" DATE DEFAULT sysdate, 
	"OPERATE_IP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SCOTT"."SYS_USER"."STATUS" IS '状态，1：正常，0：冻结状态，2：删除';
--------------------------------------------------------
--  DDL for View V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."V" ("VNAME") AS 
  select  'abcef' as vname from dual
 union all
 select '_bcefg' as vname from dual
 union all
 select '_bcedf' as vname from dual
 union all

 select '_\bcedf' as vname from dual
 union all
 select 'xyceg' as vname from dual

;
--------------------------------------------------------
--  DDL for View V1
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."V1" ("EMPNO", "ENAME", "JOB", "MGR", "HIREDATE", "SAL", "COMM", "DEPTNO") AS 
  select "EMPNO","ENAME","JOB","MGR","HIREDATE","SAL","COMM","DEPTNO" from emp
;
REM INSERTING into SCOTT.SYS_ACL
SET DEFINE OFF;
Insert into SCOTT.SYS_ACL (ID,CODE,NAME,ACL_MODULE_ID,URL,TYPE,STATUS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (1,'20171015095130_26','进入产品管理界面',1,'/sys/product/product.page',1,1,1,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ACL (ID,CODE,NAME,ACL_MODULE_ID,URL,TYPE,STATUS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (3,'20190604093858_56','百度首页',1,'www.baidu.com',3,1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ACL (ID,CODE,NAME,ACL_MODULE_ID,URL,TYPE,STATUS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (21,'20190604140505_92','老师作息时间',2,'www.qq.com',1,1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_ACL_MODULE
SET DEFINE OFF;
Insert into SCOTT.SYS_ACL_MODULE (ID,NAME,PARENT_ID,LEVELS,SEQ,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (1,'产品管理',0,'0',1,1,'product','Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ACL_MODULE (ID,NAME,PARENT_ID,LEVELS,SEQ,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (2,'管理老师',0,'0',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ACL_MODULE (ID,NAME,PARENT_ID,LEVELS,SEQ,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (3,'管理学生',0,'0',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_DEPT
SET DEFINE OFF;
Insert into SCOTT.SYS_DEPT (ID,NAME,PARENT_ID,LEVELS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (6,'web开发',2,'0.2',2,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_DEPT (ID,NAME,PARENT_ID,LEVELS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (4,'销售部',0,'0',1,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_DEPT (ID,NAME,PARENT_ID,LEVELS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (5,'java开发',2,'0.2',1,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_DEPT (ID,NAME,PARENT_ID,LEVELS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (1,'服务部',0,'0',1,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_DEPT (ID,NAME,PARENT_ID,LEVELS,SEQ,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (2,'研发部',0,'0',1,null,'Admin',to_date('03-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_LOG
SET DEFINE OFF;
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (21,4,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (22,7,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (23,7,4,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (24,7,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (25,7,4,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (1,4,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (2,7,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (3,6,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (27,4,21,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (28,6,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (29,6,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
Insert into SCOTT.SYS_LOG (ID,TYPE,TARGET_ID,OPERATOR,OPERATE_TIME,OPERATE_IP,STATUS) values (30,6,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1',1);
REM INSERTING into SCOTT.SYS_ROLE
SET DEFINE OFF;
Insert into SCOTT.SYS_ROLE (ID,NAME,TYPE,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (3,'老师',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ROLE (ID,NAME,TYPE,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (4,'学生',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ROLE (ID,NAME,TYPE,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (1,'校长',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ROLE (ID,NAME,TYPE,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (2,'主任',1,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_ROLE_ACL
SET DEFINE OFF;
Insert into SCOTT.SYS_ROLE_ACL (ID,ROLE_ID,ACL_ID,OPERATOR,OPERATE_TIME,OPERATE_IP) values (27,111,222,'llll',to_date('04-JUN-19','DD-MON-RR'),'212');
Insert into SCOTT.SYS_ROLE_ACL (ID,ROLE_ID,ACL_ID,OPERATOR,OPERATE_TIME,OPERATE_IP) values (28,222,322,'llll',to_date('04-JUN-19','DD-MON-RR'),'212');
Insert into SCOTT.SYS_ROLE_ACL (ID,ROLE_ID,ACL_ID,OPERATOR,OPERATE_TIME,OPERATE_IP) values (34,3,1,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_ROLE_ACL (ID,ROLE_ID,ACL_ID,OPERATOR,OPERATE_TIME,OPERATE_IP) values (35,3,3,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_ROLE_USER
SET DEFINE OFF;
Insert into SCOTT.SYS_ROLE_USER (ID,ROLE_ID,USER_ID,OPERATOR,OPERATE_TIME,OPERATE_IP) values (23,3,2,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
REM INSERTING into SCOTT.SYS_USER
SET DEFINE OFF;
Insert into SCOTT.SYS_USER (ID,USERNAME,TELEPHONE,MAIL,PASSWORD,DEPT_ID,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (1,'Admin','15321133507','admin@qq.com','25D55AD283AA400AF464C76D713C07AD',1,1,'admin','system',to_date('03-JUN-19','DD-MON-RR'),'127.0.0.1');
Insert into SCOTT.SYS_USER (ID,USERNAME,TELEPHONE,MAIL,PASSWORD,DEPT_ID,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (2,'wu','112','312662367@qq.com','25D55AD283AA400AF464C76D713C07AD',4,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
Insert into SCOTT.SYS_USER (ID,USERNAME,TELEPHONE,MAIL,PASSWORD,DEPT_ID,STATUS,REMARK,OPERATOR,OPERATE_TIME,OPERATE_IP) values (3,'wu','15321133508','312662368@qq.com','25D55AD283AA400AF464C76D713C07AD',5,1,null,'Admin',to_date('04-JUN-19','DD-MON-RR'),'0:0:0:0:0:0:0:1');
--------------------------------------------------------
--  DDL for Index SYS_ACL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_ACL_PK" ON "SCOTT"."SYS_ACL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_ACL_MODULE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_ACL_MODULE_PK" ON "SCOTT"."SYS_ACL_MODULE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_DEPT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_DEPT_PK" ON "SCOTT"."SYS_DEPT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_LOG_PK" ON "SCOTT"."SYS_LOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_ROLE_PK" ON "SCOTT"."SYS_ROLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_ROLE_ACL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_ROLE_ACL_PK" ON "SCOTT"."SYS_ROLE_ACL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_ROLE_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_ROLE_USER_PK" ON "SCOTT"."SYS_ROLE_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_USER_PK" ON "SCOTT"."SYS_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger SEQ_SYS_ACL_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SEQ_SYS_ACL_ID" 
BEFORE INSERT ON SYS_ACL 
for each row   
BEGIN
   SELECT SEQ_SYS_ACL_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SEQ_SYS_ACL_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_ACL_MODULE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_ACL_MODULE_ID" 
BEFORE INSERT ON SYS_ACL_MODULE 
for each row
BEGIN
   SELECT SQ_SYS_ACL_MODULE_ID.nextval INTO  :NEW.ID FROM DUAL;  
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_ACL_MODULE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_DEPT_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_DEPT_ID" 
BEFORE INSERT ON SYS_DEPT 
for each row
BEGIN
   SELECT SQ_SYS_DEPT_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_DEPT_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_LOG_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_LOG_ID" 
BEFORE INSERT ON SYS_LOG 
for each row
BEGIN
    SELECT SQ_SYS_LOG_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_LOG_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_ROLE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_ROLE_ID" 
BEFORE INSERT ON SYS_ROLE 
for each row
BEGIN
  SELECT SQ_SYS_ROLE_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_ROLE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_ROLE_ACL_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_ROLE_ACL_ID" 
BEFORE INSERT ON SYS_ROLE_ACL 
for each row
BEGIN
   SELECT SQ_SYS_ROLE_ACL_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_ROLE_ACL_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_ROLE_USER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_ROLE_USER_ID" 
BEFORE INSERT ON SYS_ROLE_USER 
for each row
BEGIN
    SELECT SQ_SYS_ROLE_USER_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_ROLE_USER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SQ_SYS_USER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SCOTT"."SQ_SYS_USER_ID" 
BEFORE INSERT ON SYS_USER 
for each row
BEGIN
   SELECT SQ_SYS_USER_ID.nextval INTO  :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "SCOTT"."SQ_SYS_USER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Procedure PROCE_T1
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."PROCE_T1" is

begin

 insert into t1(id, name) values('1', to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'));

  commit;

end proce_t1;

/
--------------------------------------------------------
--  DDL for Procedure PRO_BOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."PRO_BOOK" (bid in number, rst out sys_refcursor)
  is
     names book.name%type;

  begin
    open rst for select name from book where book_id=1000;

    loop
       fetch rst into names;
       exit when rst%notfound;
    end loop;

  end pro_book;

/
--------------------------------------------------------
--  DDL for Procedure RAISESALARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."RAISESALARY" (eno in number)
 as
 
 psal emp.sal%type;
 begin
     select sal into psal from emp where empno = eno;
    update emp set sal =sal+100 where empno = eno;

     dbms_output.put_line('涨前:'||psal||'涨后:'||(psal+100));
 end;

/
--------------------------------------------------------
--  DDL for Procedure TESTPRO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."TESTPRO" (param1 in varchar2,param2 out varchar2) as
begin
    select name into param2 from book where book_id = param1;
end;

/
--------------------------------------------------------
--  DDL for Procedure TESTPRO1
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."TESTPRO1" (param1 in int ,param2 out varchar2)
as

 begin
     select name into param2 from book where book_id = param1;
 end;

/
--------------------------------------------------------
--  DDL for Procedure TESTPRO2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."TESTPRO2" (param1 in int ,param2 out varchar2)
as

 begin
     select name into param2 from book where book_id = param1;
 end;

/
--------------------------------------------------------
--  DDL for Package FIND_EMP_JOB
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SCOTT"."FIND_EMP_JOB" is

    
 procedure Find_Emp_Job(name in emp.ename%type ,ejob out emp.job%type);


end FIND_EMP_JOB;

/
--------------------------------------------------------
--  DDL for Package FIND_EMP_NAME
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SCOTT"."FIND_EMP_NAME" is

    
      
   procedure Find_Emp(id in emp.empno%type,
                          
                      name out emp.ename%type  );


end FIND_EMP_NAME;

/
--------------------------------------------------------
--  DDL for Package Body FIND_EMP_JOB
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SCOTT"."FIND_EMP_JOB" is

  
 procedure Find_Emp_Job(name in emp.ename%type,ejob out emp.job%type) is
   
 
  begin
     select job into ejob from emp where  ename =name; 
  
  end;  


end FIND_EMP_JOB;

/
--------------------------------------------------------
--  DDL for Package Body FIND_EMP_NAME
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SCOTT"."FIND_EMP_NAME" is

    
      
   procedure Find_Emp(id in emp.empno%type,
                          
                      name out emp.ename%type  ) is
                      
                 cursor  emp_names  is
                      select  * from emp ;
            
   ejob   emp.job%type :=null ;    
   
     emprow  emp%rowtype;      
                     
     begin 
          open emp_names;
          fetch emp_names into emprow;
          while emp_names%found loop
             dbms_output.put_line(emprow.ename);
             fetch emp_names into emprow;
          end loop;
            close  emp_names;
     
          select ename into name from emp where empno = id;
          
          if(name is null) then
              raise NO_DATA_FOUND;
          end if;
              
          FIND_EMP_JOB.FIND_EMP_JOB(name,ejob);
             dbms_output.put_line(ejob);
          
           exception when NO_DATA_FOUND then
              dbms_output.put_line('No passenger found');
             raise ;
              when others then
                 dbms_output.put_line('Other exception found');
                 raise;
       
     end;


end FIND_EMP_NAME;

/
--------------------------------------------------------
--  Constraints for Table SYS_ACL
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_ACL" ADD CONSTRAINT "SYS_ACL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("ACL_MODULE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("URL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("SEQ" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("OPERATOR" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("OPERATE_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL" MODIFY ("OPERATE_IP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_ACL_MODULE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" ADD CONSTRAINT "SYS_ACL_MODULE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("PARENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("LEVELS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("SEQ" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("OPERATOR" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("OPERATE_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ACL_MODULE" MODIFY ("OPERATE_IP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYS_DEPT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("PARENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("LEVELS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("SEQ" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("OPERATOR" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("OPERATE_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" MODIFY ("OPERATE_IP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_DEPT" ADD CONSTRAINT "SYS_DEPT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYS_LOG
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_LOG" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_LOG" MODIFY ("TARGET_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_LOG" MODIFY ("OPERATOR" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_LOG" ADD CONSTRAINT "SYS_LOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYS_ROLE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("OPERATOR" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("OPERATE_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" MODIFY ("OPERATE_IP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE" ADD CONSTRAINT "SYS_ROLE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYS_ROLE_ACL
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_ROLE_ACL" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE_ACL" ADD CONSTRAINT "SYS_ROLE_ACL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYS_ROLE_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_ROLE_USER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_ROLE_USER" ADD CONSTRAINT "SYS_ROLE_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SYS_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."SYS_USER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."SYS_USER" ADD CONSTRAINT "SYS_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
