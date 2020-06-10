/*
Date : 2020.06.08
Author : YOUHYUNSEO
Description :
Version : 1.0
*/
--(1) GROUP BY : Ư�� �÷�  �Ǵ� �����͸� �������� �����͸� �׷����� ����
/*
   SELECT 
   FROM
   WHERE
   GROUP BY [�׷�ȭ�� COLUMN]�� ���� (������ ����)
   ORDER BY[������ COLUMN];
*/

SELECT DEPTNO,AVG(SAL)
FROM  EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

--��å���� �ο���, �޿��հ�, �޿� ����� ���Ͻÿ�
SELECT JOB, COUNT(JOB),SUM(SAL),ROUND(AVG(SAL))
FROM EMP
GROUP BY JOB

--�ο��� ���� ������ ����
ORDER BY COUNT(*)DESC;

--(2)ROLLUP : �׷�ȭ �������� �հ踦 �Բ� ���
/*
  SELECT
  FROM 
  WHERE
  GROUP BY ROLLUP[COL_NAME]
*/
SELECT JOB, COUNT(*),SUM(SAL),ROUND(AVG(SAL))
FROM EMP
GROUP BY ROLLUP(JOB);

--(3) HAVING : GROUP BY���� ����ؼ� 
--            �׷�ȭ�� ��� �߿� ��� �׷��� �����ϴ� ���ǽ�

/* ���� �߱���ϱ�!!
  SELECT
  FROM 
  WHERE -- HAVING���ǽ��� �������� ���� ���ǽ��� ����
  GROUP BY
  HAVING[��±׷��� �����ϴ� ���ǽ�] -- WHERE�� �߿��� ���ǽĿ� �´� ���� ã���� �Ѵ�.
  ORDER BY
  
*/

SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE SAL>1500
GROUP BY DEPTNO
HAVING DEPTNO>=20;
-- WHERE�� ���� ������ HAVIMG�� ����

--DEPTȮ��
SELECT * FROM EMP
ORDER BY DEPTNO;

--Q1.EMP���̺��� �̿��ؼ� �μ���ȣ(DEPTNO),��ձ޿�(AVG),�ְ� �޿�(MAX)
--���� �޿�(MIN), �����(COUNT)�� ���
--�� ��� �޿��� ����� �� �Ҽ����� �����ϰ� �� �μ� ��ȣ ���� ���
SELECT DEPTNO AS �μ���ȣ, ROUND(AVG(SAL))AS ��ձ޿�, MAX(SAL)AS �ְ�޿�, 
MIN(SAL) AS �����޿�, COUNT(*)
FROM EMP GROUP BY DEPTNO --�μ���ȣ���� ����Ͽ����ϱ� ������ DEPTNO�� �׷�ȭ�Ѵ�.
ORDER BY DEPTNO;

--Q2.���� ����(JOB)�� �����ϴ� ����� 3���̻��� ���ް� �ο����� ���
SELECT JOB,COUNT(*)
FROM EMP GROUP BY JOB -- GROUP BY�� JOB�� �׷�ȭ �Ѵ�.
HAVING COUNT(*)>= 3; -- HAVING�� ����ؼ� ���޿� ���� ���ǽ��� �־��ش�.
--->>�׷�ȭ�� ���޺��� �ο����� ��µȴ�.

--Q3.������� �Ի� ������ �������� �μ����� ����� �Ի��ߴ��� ���
SELECT TO_CHAR(HIREDATE,'YYYY')AS �Ի翬��,DEPTNO AS �μ���ȣ,COUNT(*)AS �����
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY'), DEPTNO 
--���� ������ DEPTNO�� �׷�ȭ�Ͽ� �������� ��� �Ի��ߴ��� ����Ѵ�.
ORDER BY DEPTNO;

--Q4.�߰� ����(COMM)�� �޴� ������� ���� �ʴ� ����� ���
--COMM�� ������ O,���� ������ X���(NV2)
SELECT NVL2(COMM,'O','X')AS ���翩��, COUNT(*)AS ����� --NVL2�� COMM�� ���� ���, ������ ��츦 ���Ѵ�.
FROM EMP
GROUP BY NVL2(COMM,'O','X'); --NLV2�� �׷�ȭ�Ͽ� ����Ѵ�. 
--NVL�� ������ O��X�� �������ֱ� ������ O�� X�� ������ ��µǾ�����.

--Q5.���μ��� �Ի� ������ �����, �ְ� �޿�, �޿��հ�,��� �޿��� ����ϰ�, 
--���μ��� �Ұ�� �Ѱ踦 ����ϼ���(ROLLUP)
SELECT DEPTNO AS �μ���ȣ, TO_CHAR(HIREDATE,'YYYY') AS �Ի�⵵, COUNT(*)AS �����,
MAX(SAL)AS �ְ�޿�,SUM(SAL)AS �޿��հ�,TRUNC(AVG(SAL))AS �޿����
FROM EMP
GROUP BY ROLLUP(DEPTNO,TO_CHAR(HIREDATE,'YYYY'));
--DEPT�� TO_CHAR(HIREDATE,'YYYY')�� �׷����� ��� 
--�μ����� ������ ����� �� �ִ�.


--���ļ���----------------------------------------------------------------
--(4)CONSTAINT(��������)
-- : ���̺��� Ư�� �÷��� ����, �������ǿ� �������� ���� �����ʹ� ����Ұ�
/*
- ���Ἲ ���� ���� : ������ ���Ἲ�� ������ ���̽��� ����� �������� �ϰ�����
                ��Ȯ���� ��Ű�� ���� ���Ѵ�. 
                �ϰ����� ��Ȯ���� �Ҿ� ���� ������ ���̽��� �����μ��� ��ġ�� �ɰ��� ������ �ִ�.
1) ���� ���Ἲ(Domain integtity)
 - ������ ����, �����̼� ���� Ʃ�õ�� �� �Ӽ��� �����ο� ������ ���� �������Ѵ�.
 
2) ��ü ���Ἲ(Entity interity)
 - �⺻�� ����, �����̼ǿ� �⺻Ű�� �����ϰ�, �׿� ���� ���Ἲ ��Ģ
   �⺻��� null�� �������� �ȵǰ�, �����̼� ���� ���� �ϳ��� ���� ����
   
3) ���� ���Ἲ(Referential integrity)
 - �ܷ�Ű(FK)����, �����̼� ���� ���� ���踦 �����ϴ� ���� ����
 - �Ϲ������� �����Ǵ� �����̼��� �θ� �����̼�
   ħ���ϴ� �����̼��� �ڽ� �����̼��̶�� �Ѵ�.
*/

/* CONSTRAINT �Լ�
1. RPIMARY KEY(�⺻Ű)
 : �ϳ��� ���̺��� ���ڵ带 ���� ���� �� �ִ� Ư�� �÷��� ���ϰ�
 : NOT NULL + UNIQUE
 EX)�л���ȣ(SSN), �ֹι�ȣ(STU_CODE), �ڵ�����ȣ(PHONE), NAVER ID
 
2. NOT NULL 
 : �ϳ��� ���̺��� Ư�� �÷��� ���� �ݵ�� �Է� �ؾ� �ϴ� ����
 : NULL���� ������ �ʴ´�.

3. UNIQUE
 : �ϳ��� ���̺��� Ư�� �÷��� ���� �ߺ��Ǵ� ���� �����ϴ� ����
 : ��, NULL�� ������ ���
 
4. DEFAULT
 : �ʱⰪ, �÷��� �ԷµǴ� �����Ͱ� ������� �̸� ��ӵ� ������ �ڵ� �Է��ϴ� ����

5. CHECK
 : Ư�� ������ �����͸� �Է� �����ϵ��� �ϴ� ���� 
  ex) JS_PASSWORD  NUMBER(4)
  ���ڸ� 3�ڸ� �̻� �Է�, ���� ���� CHECK
*/

--���� ����
SELECT * FROM TAB;
DROP TABLE JSSTU;

CREATE TABLE JS_MEMBERS(
    JS_CODE   NVARCHAR2(5), --PRIMARY KEY,
    JS_NAME   NVARCHAR2(5),
    JS_PASSWORD NUMBER(4),
    JS_PHONE NVARCHAR2(11)
    CONSTRAINT JS_CD_PK PRIMARY KEY(JS_CODE)
);

SELECT * FROM USER_CONSTRAINTS;

--(2)���� ���� �̸� ���ϱ�
--(TABLE_NAME)����_(COULMN_NAME)����_CONSTRAINT_TYPE
--JS_CD_PK : JS_MEMBERS ���̺��� JS_CODE �÷��� PK��./9
--ex) CONSTRAINT JS_CD_PK PRIMARY KEY(JS_CODE)

--(3)���� ���� �����ϱ�
/*
ALTER TABLE JS_MEMBERS
MODIFY CONSTRAINT JS_CD_PK
PRIMARY KEY(JS_NAME);
*/
--(4)���� ���� �����ϱ�
ALTER TABLE JS_MEMBERS 
DROP CONSTRAINT JS_CD_PK;

--(1)JS_CODE�� �⺻��(PK)����
ALTER TABLE JS_MEMBERS ADD CONSTRAINT JS_CD_PK 
PRIMARY KEY(JS_CODE);
/*
(1)JS_CODE�� �⺻��(PK)����
ALTER TABLE JS_MEMBERS ADD CONSTRAINT JS_CD_PK 
PRIMARY KEY(JS_CODE);

(2)�⺻��(PK)����2
(TABLE_NAME)����_(COULMN_NAME)����_CONSTRAINT_TYPE
--JS_CD_PK : JS_MEMBERS ���̺��� JS_CODE �÷��� PK��./9
--ex) CONSTRAINT JS_CD_PK PRIMARY KEY(JS_CODE)

(3)TABLE�� PK����
*/


/*
ALTER TABLE [TAB_NAME] ADD CONSTRAINT [CONST_NAME]PRIMARY KEY([CODE_NAME]);
*/

SELECT * FROM USER_CONSTRAINTS;


-- OWNER :���� ���� ���� ����
-- CONSTRAINT_NAME : ���� ���� �̸�(�ڵ� ���� �ϱ⵵��)
-- CONSTRAINT_TYPE :
--     C : CHCKC, NOT NULL
--     U : UNIQUE
--     P : PRIMARY KEY(�⺻Ű)
--     R : FORREIN KEY 
-- TABLE_NAME : ���� ������ ������ ���̺�

INSERT INTO JS_MEMBERS 
VALUES('JS001','������',1111,'01077777777');

INSERT INTO JS_MEMBERS 
VALUES('JS001','����ȫ',1111,'010');
--PK�� UNIQUE ���� ����� ���� �Ұ�
--���� ó�� ���ǽİ� ���� �ʾƾ��Ѵ�.

INSERT INTO JS_MEMBERS(JS_CODE, JS_PASSWORD, JS_PHONE)
VALUES('JS077',0000,'01077755250');
--PK�� NOT NULL ���� ����� ���� �Ұ�
--null���� ����� �Ѵ�.

--(2)NOT NULL
--NOT NULL ���� ���(1)

DROP TABLE JS_MEMBERS;

 CREATE TABLE JS_MEMBERS(
    JS_CODE   NVARCHAR2(5),
    JS_NAME   NVARCHAR2(5),
    JS_PASSWORD NUMBER(4),
    JS_PHONE NVARCHAR2(11)
); 

ALTER TABLE JS_MEMBERS
MODIFY JS_PASSWORD NOT NULL;

--NOT NULL ���� ���(2)
 CREATE TABLE JS_MEMBERS(
    JS_CODE   NVARCHAR2(5),
    JS_NAME   NVARCHAR2(5),
    JS_PASSWORD NUMBER(4) NOT NULL,
    JS_PHONE NVARCHAR2(11)
); 

SELECT * FROM USER_CONSTRAINTS;

INSERT INTO JS_MEMBERS VALUES('JS001','������',1111,'01077777777');

INSERT INTO JS_MEMBERS (JS_CODE,JS_NAME,JS_PHONE)
VALUES('JS001','����ȫ','01022222222');

INSERT INTO JS_MEMBERS(JS_PASSWORD)
VALUES(1234);

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD)
VALUES('JS001',1111);

SELECT * FROM JS_MEMBERS;

--(3)UNIQUE

DROP TABLE JS_MEMBER;

CREATE TABLE JS_MEMBERS(
      JS_CODE NVARCHAR2(5),
      JS_NAME NVARCHAR2(5),
      JS_PASSWORD NUMBER(4),
      JS_PHONE NVARCHAR2(11)UNIQUE
);

INSERT INTO JS_MEMBERS VALUES('JS001','������',1234,'0107');

INSERT INTO JS_MEMBERS VALUES('JS002','����ȫ',1111,'0107');
--UNIQUE����� ���� �Ұ�

--(4)DEFAULT : ���� ����

CREATE TABLE JS_MEMBERS(
      JS_CODE NVARCHAR2(5),
      JS_NAME NVARCHAR2(5),
      JS_PASSWORD NUMBER(4) DEFAULT 1234,
      JS_PHONE NVARCHAR2(11)
);

INSERT INTO JS_MEMBERS(JS_CODE) 
VALUES('JS001'); -- �ڵ常 �־ DEAULT�� ���� ��й�ȣ�� ���

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS002',1111);

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS003',DEFAULT);--DEFAULT������ ������ ���� ���

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS003',NULL);--JS_PASSWORD�� NULL������ ���

SELECT * FROM JS_MEMBERS;

--(5)CHECK ���� ����

CREATE TABLE JS_MEMBERS(
      JS_CODE NVARCHAR2(5),
      JS_NAME NVARCHAR2(5),
      JS_PASSWORD NUMBER(4),
      JS_PHONE NVARCHAR2(11),
      CONSTRAINT JS_PS_CK CHECK(LENGTH(JS_PASSWORD)>=3)
);

INSERT INTO JS_MEMBERS(JS_PASSWORD)
VALUES(1234);

INSERT INTO JS_MEMBERS(JS_PASSWORD)
VALUES(123);

INSERT INTO JS_MEMBERS(JS_PASSWORD)
VALUES(12);
--CHECKC������ ���յ��� �ʾ� �����Ұ�
SELECT * FROM JS_MEMBERS;

--�������� ���� ����
-- ���� ���� ���� ������ �� ���� ������ �� �ִ�.
CREATE TABLE JS_MEMBERS(
      JS_CODE NVARCHAR2(5),
      JS_NAME NVARCHAR2(5),
      JS_PASSWORD NUMBER(4)DEFAULT 1234 NOT NULL,
      JS_PHONE NVARCHAR2(11),
      CONSTRAINT JS_PS_CK CHECK(LENGTH(JS_PASSWORD)>=3)
);
SELECT * FROM USER_CONSTRAINTS;

INSERT INTO JS_MEMBERS(JS_CODE)VALUES('JS001');

SELECT * FROM JS_MEMBERS;


---------�ǽ�-----------------------------------------------
DROP TABLE JMEMBERS;

--JMEMBERS ���̺� ����
CREATE TABLE JMEMBERS(
   J_ID   NVARCHAR2(20),
   J_NAME NVARCHAR2(10),
   J_BIRTH DATE
);

--���� ���� �߰�(PK,�⺻Ű)
 ALTER TABLE JMEMBERS ADD CONSTRAINT J_ID_PK PRIMARY KEY(J_ID);
 
 --������ ����
 INSERT INTO JMEMBERS VALUES('J001','������', '19950111');
 
 INSERT INTO JMEMBERS VALUES('J001','����','19990911');
 --ORA-00001(unique ���� : �ߺ�X)
 
 INSERT INTO JMEMBERS VALUES('J002','����','19990511');
 
 SELECT*FROM JMEMBERS;

--����� ���̺� ����
CREATE TABLE ADDLISTS(
  A_JID NVARCHAR2(20),
  A_ADDR NVARCHAR2(100)
);

--���� ���� �߰�(FK,�ܷ�Ű)
ALTER TABLE ADDLISTS
ADD CONSTRAINT A_JID_FK FOREIGN KEY(A_JID)
REFERENCES JMEMBERS(J_ID); -- J_ID�� A_JID�� ������ Ÿ�԰� ũ�Ⱑ ���ƾ� �Ѵ�.

INSERT INTO ADDLISTS VALUES('J001','��õ');

INSERT INTO ADDLISTS VALUES('J001','��õ');

INSERT INTO ADDLISTS VALUES('J001','����');

INSERT INTO ADDLISTS VALUES('J002','����');

INSERT INTO ADDLISTS VALUES('J003','����');
--PK���� JS001,JS002�� ���������Ƿ� JS003�� ���� ������ JS003�� ���� �Ұ�
--parent key not found : �θ�Ű�� ����.

SELECT * FROM ADDLISTS; 

DROP TABLE JMEMBERS;


--<������>--
/*
  �ֹ� �ý��� ����
  
  ENTITY 
  1. SELLER(�Ǹ���)
  - ����� ��� ��ȣ, ��ȣ, ��ǥ��
  
  2. GOODS(��ǰ)
  - ��ǰ �̸�, ����, ���
  
  3. BUYER(������)
  - ���̵�, ��й�ȣ, �̸�, ����ó
  
  - ���� �˸��� ���� ���� �����ϱ�
  - ������ ���̺� ���� ������ �����ϱ�

*/












