/*
Date : 2020.06.02
Author : YOUHYUNSEO
Description :�����ͺ��̽� 2���� , ���̺� �������
Version : 1.0
*/

/*
�������� �ڷ�
�ڷ�(Data) : ���Ǽ��迡�� �����̳� ������ ����
             ������ �ܼ��� ����̳� �����

����(Imformation) : �ǻ������ ������ �� �� �ִ� ������ ����,
                    �ڷḦ ����(ó��)�ؼ� ���� �� �ִ� ���

data : �������� �Է�
process :����, ��� ���ϱ�
imformation : ����ǥ ���

DataBase(DB):�ʿ��� �����Ͱ� ����Ǿ��ִ� ����
             ���̺���� �� �̷�� ������ ����
�ص����ͺ��̽� ����:ISOS
 :Ư�� ������ ���� ����ڰ� (����)�Ͽ� ����� �� �ֵ��� 
 (����)�ؼ� (����)�� (�) �������� ����!!
- Integrated Data(���յ�����)
  :�ڷ� �ߺ��� ������ ������ ����
- Sroeed Data(���嵥����) : ��ǻ�Ͱ� ������ �� �ִ� �����ü�� ������ڷ�
- Oeration Data(�������) : ���������� ������ �����ؾ��ϴ� ������
- Shard Data(����������) :���� ����ڰ� �Բ� ����ϰ� �̿�
  : �������� �ٸ� �� �����Ƿ� �̸� ����ؼ� ������ �ְ� ������ ���̽��� ����

�ص����ͺ��̽� Ư¡
(1)�ǽð� ���ټ� : ����ڰ� �䱸�ϴ� �����Ϳ� �ǽð����� ������ �� �־���Ѵ�.
(2)���ð��� :�ټ��� ����ڰ� ���ÿ� �̿��� �� �־���Ѵ�. 
�� ���� ����� ���� ����ڰ� ���� �ٸ� �����͸� ���ÿ� ����ϴ� ���� ����,
���� �����͵� ���ÿ� ����ϵ��� ������ �� �־���Ѵ�.
(3)���������� :����� �޸��� �ּҳ� ��ġ�� �ƴ� �������� ������ ��ȣ�Ѵ�.
EX)������ B�̻��� �л� �̸��� �˻��ϼ���. 
=>>�������� ���� ���Ǹ� �����ص� ���Ǹ� ������ ��ġ�� ���� �������.
(4)������� ��ȭ : ���Ǽ����� ���¸� ��Ȯ�� �ݿ��ؾ��ϱ� ������ 
���Ӿ��� ���ϴ� ���迡 ���� ������ ���̽� �� �����͵� ��� ���ؾ� �Ѵ�. 
�̸� ���� ����,����,������ �ʿ��ϴ�.

�ص����� ���̽� �����
:DBA :������ ���̽� ������
-���� ���α׷���
-�����

��DBA(Data Base Administrator)
 :�����ͺ��̽� �ý����� ��� ������ ��� ���� å���� ���� �ִ� ���

��DEMS(DataBaseManagementSystem)=>������ ��� ���
 :�����͵��� ȿ�������� �����ϱ� ���� �����Ǵ� �ý���
 
 -->>����Ŭ�� ȿ�����̹Ƿ� �����....
 
*/

--��IP�ּ� : 192.168.0.189
/*������ �ϴ� ��

--STU TABLE ����
CREATE TABLE STUDENT(STU_NAME NVARCHAR2(5));

--STU_NAME �� �Է�
INSERT INTO VALUES('������');

--�� ����
COMMIT;

--STUDENT TABLE�� ���� ���� �ο�
GRANT ALL ON STUDENT TO JS001(�����̸�);

--������ ������ �ο��� �������� �����ؾ��Ѵ�!
SELECT * FROM (��������).STUDENT;
SELECT * FROM SYS.STUDENT;

-->> ���� ��� ���
--ALTER USER [USER ID] ACCOUNT LOCK
ALTER USER JS001 ACCOUNT LOCK;
ALTER USER JS002 ACCOUNT LOCK;
ALTER USER JS003 ACCOUNT LOCK;

-->>���� ��� ����
--ALTER USER [USER ID] ACCOUNT UNLOCK
ALTER USER JS001 ACCOUNT UNLOCK;
ALTER USER JS002 ACCOUNT UNLOCK;
ALTER USER JS003 ACCOUNT UNLOCK;

--����� ���� ��й�ȣ �ٲٴ� ���
--->>ALTER USER JS001 INDENTIFIED BY "���ο� ��й�ȣ";
ALTER USER JS001 INDENTIFIED BY "1234";
ALTER USER JS001 INDENTIFIED BY "4567";
ALTER USER JS001 INDENTIFIED BY "7894";

--���̺� ����
(���̺�)CREATE TABLE [TABLE_NAME](
     (��)COL1_NAME  COL1_TYPE  ,
        COL2_NAME  COL2_TYPE  ,
        COLN_NAME  COLN_TYPE  
);
--------------------------------------
--���̺� �̸� ���� ��Ģ
(1)���̺� �̸��� ���ڷ� �����ؾߵȴ�.(�ѱ۵� ����,���� �Ұ���)
(2)���̺� �̸��� 30byte���Ͽ��� �Ѵ�.(����� 30��, �ѱ��� 15�� ����)
(3)���̺� �̸��� �ߺ��� �� ����.
(4)���̺� �̸��� ������(�ѱ۰���), ���ڿ� Ư������($,#,_)��밡��
(5)SQL Ű����� ���̺� �̸����� ����� �� ����.(CREATE,SELECT ���)

--��(COLUMN)�̸� ���� ��Ģ
(1)���̸��� ���ڷ� �����ؾߵȴ�.(�ѱ� ����, ���� �Ұ�)
(2)���̸��� 30byte���Ͽ����Ѵ�.
    (�ѱ�(����1����-2����Ʈ)15,����(����1����-1����Ʈ) 30)
(3)���̸��� �ߺ��� �� ����.
(4)���̸��� ������(�ѱ�),����, Ư������ ����
(5)SQL Ű����� ���̺� �̸����� ����� �� ����.(CREATE,SELECT ���)

�� �ڷ���
(1)��NVARCHAR(����) : VARCHAR + ������ ���� ��Ʈ ������ ����
(2)VARCHAR(����) : �������� ������ Ÿ��(�ִ� 400����Ʈ)
                ������ ���̺��� ª�� �����Ͱ� �Էµ� �� 
                ������ ������ ä���� �ʴ´�.
                
(3)NUMBER : ���ڿ��� ���� ��ǥ������ ���ȴ�. ->>����, �Ǽ� ��� ����
   - NUMBER(5):5�ڸ� ����
   - NUMBER(3,2):3�ڸ� ����, �Ҽ��� 2�ڸ� �� 
(4)DATE :���� ����, ��¥ ������ ��/��/��/��/��/�� ǥ��
=======================================================
(5)CLOB :��뷮 ����Ʈ Ÿ������ �ִ� 4GB���� ����
(6)BLOB :��뷮 ����Ʈ �����ڵ� Ÿ������ �ִ� 4GB���� ����
(7)BFLE :��뷮 ���� ������ ������ �ִ� 4GB���� ������ �� �ִ�.

*/
--���ļ���----------------------------------------------------------
CREATE TABLE JSS(
   JSS_NAME  NVARCHAR2(5),
   JSS_AGE   NUMBER(2),
   JSS_DATE  DATE
);
--�����Ͱ� �ֱ�(������ �߰�)
--�̸�,����,��¥
 /*INSERT INTO [TABLE_NAME](COL1,COL2,....COLN)-->>��ȣ�� ������ �����͵��� ������ �������!
 VALUES(COL1data, COL2data,......COLNdata,)
 */ 
INSERT INTO JSS(JSS_NAME,JSS_AGE,JSS_DATE)
VALUES('������',26,'2020/06/03');

INSERT INTO JSS(JSS_NAME,JSS_AGE,JSS_DATE)
VALUES('����ȫ',29,SYSDATE);

SELECT * FROM JSS;
--*=>>��ζ�� ����.

--JSMEMBER���̺����
--�̸�, ����, ��ȭ��ȣ, ����(DATE)
--�ּ�,�̸���,���

DROP TABLE JSS2;

CREATE TABLE JSS2(
   JSS2_NAME  NVARCHAR2(5),
   JSS2_AGE   NUMBER(2),
   JSS2_NUMBER NVARCHAR2(11),
   JSS2_DATE  DATE,
   JSS2_ADD NVARCHAR2(10),
   JSS2_EMALI NVARCHAR2(25),
   JSS2_HOP NVARCHAR2(10)
);

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('������',26,'01077204452','1995/01/11','��⵵����ø�ȭ��','gustj3092@naver.com','��󸶺���');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('����ȫ',29,'01097895859','1992/01/11','��õ������','DLWOGHD@naver.com','�����ϱ�');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('������',24,'01077204452','1995/01/11','��õ','ALSWO@naver.com','����');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('������',26,'01077204452','1995/01/11','��õ','OHR@naver.com','����');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE)
VALUES ('�̹�',26);

--�������ڷ� Ȯ��
SELECT * FROM JSS2;

--�����ؼ� ����������
SELECT JSS2_NAME,JSS2_AGE FROM JSS2;


--���̺� ������ ���� ��ü ����(ALL ON)
GRANT ALL ON STUDENT TO JS002;


--���̺� �˻� ����
GRANT SELECT ON JSS2 TO JS001;
GRANT SELECT ON JSS2 TO JS002;
GRANT SELECT ON JSS2 TO JS003;


--���̺� ����
--DROP TABLE [TABLE_NEME];
DROP TABLE JSS2;

DROP TABLE TEST_TB;

--���̺� ����
CREATE TABLE TEST_TB(
    TB_NAME NVARCHAR2(10)
);

SELECT *FROM TEST_TB;

--���̺� ����
--ALTER TABLE[TABLE_NAME]

--(1)�߰� : ADD
ALTER TABLE TEST_TB
 ADD TB_AGE NUMBER(5);

--(2)�÷��� �ٲٱ� :RENAME
ALTER TABLE TEST_TB
RENAME COLUMN TB_NAME TO TEST_NAME;

--(3)�÷�Ÿ�� �ٲٱ� : MODIFY
ALTER TABLE TEST_TB
MODIFY TB_AGE NVARCHAR2(10);

--(4)�÷� ���� : DROP
ALTER TABLE TEST_TB
DROP COLUMN TEST_NAME;

--���̺� ����,����,���� => DDL
--DDL,DML,DCL(TSL)














