/*
Date : 2020.06.03
Author : YOUHYUNSEO
Description : �����ͺ��̽�  DDL,DCL,TSL(3����)
Version : 1.0
*/
/*
--1--------------------------------------
��SQL :DBMS(����Ŭ)���� ����ϴ�  ���� ���� ���
     JAVA�� C���� �ܼ�
     ��ҹ��� ����X
     �����͸� �����ϰ� ��������(�߰�,����,����)
     �ϰ� �̸� �˻��ϴ� �ý���
     
�� CRUD(CREATE,RETRIEVE,UPDATE,DELETE)
 
�ص����ͺ��̽� �⺻ ����
 - DDL(DATA DEFINITION Language)���Ǿ�
 :������ ���̽� ���̺��� �����ϰų� ������ �� ����
 (1) CREATE(����) - ������ ���̽� �Ǵ� ���̺� ����
 (2) ALTER(����) - ���� �����ͺ��̽� �Ǵ� ���̺� ����
 (3) DROP(����) - �����ͺ��̽� �Ǵ� ���̺� ����

 - DML(DATA MANIPULATION Language) ���۾�
 :�����͸� �˻�,����,����,����
 (1)INSERT - ���̺� ������ ����
 (2)UPDATE - ������ �ִ� �����͸� ����
 (3)DELETE - �Էµ� �����͸� ����
 (4)SELECT - ���̺� �����ϴ� �����͸� �������� �˻��Ͽ� ����� ����Ѵ�.

 - DCL(Data Control Language)�����
  : ������ ������ �ֿ��ϰų� ȸ���ϴ� ���
 (1)GRANT - ������ ���� �ο�
 (2)REVOKE - �ο��� ������ ȸ��

 - TSL(Transaction Control Language)Ʈ����� �����
 :DML�� ���� �Ǿ� DBMS�� ����ǰų� �ǵ����� ���� �����ϴ� SQL
 (1)COMMIT :SQL���� �ָܷ� ���������� DB�� �ݿ�
 (2)ROLLBACK : SQL���� ����� ���, �����͸� �ǵ��� ��

table(���̺�) : �������� ���� ����
tupie(Ʃ��,��) : �ѻ���� ������
coiumn(�÷�,��) : ���̺� �����ϴ� ������
 */
 
--DDL :(1)CREATE (2) ALTER (3) DROP
 --DROP
 --DROP TABLE [TABLE_NAME];
 DROP TABLE JSMEMBER;
 
--CREATE 
 --CREATE TABLE[TABLE](
 --   [COL1_NAME]  [COL_TYPE]
 --);
 
 CREATE TABLE JSMEMBER(
   JS_NAME NVARCHAR2(5),
   JS_AGE NUMBER(2),
   JS_NUM NUMBER(11)
 );
 
 SELECT * FROM JSMEMBER;
 --ALTER
 /*
 ALTER TABLE [TABLE_NAME]
 (1)ADD : COLUNM �߰� 
 (2)RENAME : COLUNM �̸� ����
 (3)MODIFY : COLUNM Ÿ�� ����
 (4)DROP : COLUNM ����
 */
 
--���� �߰�, JS_NAME ->NAME_JSĮ���� ����
--AGEŸ���� NVARCHAR(3)���� ����
--JSNUM�÷� ���� 

--�����߰�
ALTER TABLE JSMEMBER
  ADD JS_BITH DATE;

--JS_NAME ->NAME_JSĮ���� ����  
ALTER TABLE JSMEMBER
  RENAME COLUMN JS_NAME TO NAME_JS;

--AGEŸ���� NVARCHAR(3)���� ����
ALTER TABLE JSMEMBER
 MODIFY JS_AGE NVARCHAR2(3);
 
--JSNUM�÷� ����  
ALTER TABLE JSMEMBER
 DROP COLUMN JS_NUM;  
--2------------------------------------
--DML(Data Manmipulation Language)
--(1)INSERT
/*
1)��� COULMN�����͸� ������ ��(COLUMN�� N��)
  INSERT INTO [TABLER_NAME]
  VALUES(COL1 DATA, COL2 DATA,....COL N DATA);
*/
INSERT INTO JSMEMBER
VALUES('������','26','19950111');

SELECT * FROM JSMEMBER;

/*
2)Ư�� COLUMN �����͸� ������ �� 
  INSERT INTO [TABEL_NAME](COL2 NAME,COL3 NAME)
  VALUES (COL1 DATA, COL2 DATA,....COL N DATA);
*/

INSERT INTO JSMEMBER(NAME_JS, JS_BITH)
VALUES('������',SYSDATE);

--��¥ ���� ����
ALTER SESSION 
SET NLS_DATE_FORMAT = 'YYYY/MM/DD HH24:MI:SS';

SELECT * FROM JSMEMBER;

--(2)UPDATE
/*
UPDATE [TABLE_NAME]
 SET(COL1_NAME) = (COL1_DATA),(COL2_NAME) = (COL2_DATA)
 WHERE[���浥���� ��������(CONDITION))];
*/
UPDATE JSMEMBER
SET NAME_JS = '������',JS_AGE = 29
WHERE NAME_JS = '������';

--��絥����Ȯ��
SELECT * FROM JSMEMBER;

--(3)DELETE
/*
1)Ư�������͸� �����ϴ� ���
DELETE FROM [TABLE_NAME]
WHERE[CONDITION(����)];
*/
DELETE FROM JSMEMBER
WHERE JS_AGE = '26';

SELECT * FROM JSMEMBER;
/*
2)��� �����͸� �����ϴ� ���
DELETE FROM [TABLE_NAME]
*/
DELETE FROM JSMEMBER;
SELECT * FROM JSMEMBER;

--(4)SELECT
/*
1)Ư�� �÷��� ��ȸ
 SELSCT[COL_NAME]
 FROM[TABLE_NAME]
 WHRER[CONDITION(����)]
 */
 SELECT NAME_JS
 FROM JSMEMBER
 WHERE JS_AGE = '26';
 

 /*
 2)��� �÷��� ��ȸ
 SELECT * 
 FROM [TABLE_NAME]
 WHRER[CONDITON(����)]
 */
 SELECT * 
 FROM JSMEMBER
 WHERE JS_AGE = '26';


--��â(ALIAS)�� �̿��ؼ� �˻��ϱ�
SELECT NAME_JS AS �̸�, JS_AGE AS ����
FROM JSMEMBER
WHERE JS_AGE = '26';

--EX)DML�� ����Ͽ� ���̺� �����
--1.�÷��ֱ�
 CREATE TABLE TIMONE(
   TIM_NAME NVARCHAR2(3),
   TIM_AGE NUMBER(2),
   TIM_NUMBER NVARCHAR2(11)
 );
--2.������ ������ �Է�
INSERT INTO TIMONE
VALUES('����ȫ',29,'01000000000');

INSERT INTO TIMONE
VALUES('������',26,'01022222222');

INSERT INTO TIMONE
VALUES('������',24,'01011111111');

SELECT * FROM TIMONE;
DROP TABLE TIMONE;

--3.�˻� SELECT,���� ã��
SELECT *
FROM TIMONE
WHERE TIM_NAME = '������';

SELECT  TIM_AGE --ã���� �ϴ� ��
FROM TIMONE --���� ���̺� �̸�
WHERE TIM_NAME = '������'; --�˻��ϴ� ��
---3---------------------------
--F5 :��� �����͸� �ѹ��� ������ �Ѵ�!






 
 
 

