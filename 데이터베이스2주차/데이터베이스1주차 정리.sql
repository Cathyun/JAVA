/*
(1)�����ͺ��̽��� ���ǿ� Ư¡

1)������ ���̽��� ����: ISOS
1) Ư�� ������ ���� ����ڰ� �����Ͽ� ����� �� �ֵ��� �����ؼ� ������ � �������� ����

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

-->> ������ ��� ���
--ALTER USER [USER ID] ACCOUNT LOCK
ALTER USER JS001 ACCOUNT LOCK;
ALTER USER JS002 ACCOUNT LOCK;
ALTER USER JS003 ACCOUNT LOCK;

-->>������ ��� �����ϴ� ���
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

--�����Ͱ� �ֱ�(������ �߰�)
--�̸�,����,��¥
 /*INSERT INTO [TABLE_NAME](COL1,COL2,....COLN)-->>��ȣ�� ������ �����͵��� ������ �������!
 VALUES(COL1data, COL2data,......COLNdata,)
 */ 

/*
2)�����ͺ��̽��� Ư¡
1.�ǽð� ���ټ�
2.���ð���
3.����������
4.������� ��ȭ

3)������ ���̽� ����� : DBA
-�������α׷���
-�����

4)���̺� �̸� ���� ��Ģ & �� �̸� ���� ��Ģ
1.�̸� ���� �� ���ڷ� �����ؾߵȴ�.(�ѱ� ����, ���� �Ұ���)
2.30byte���Ͽ����Ѵ�.(����� 30��, �ѱ��� 15�� ����)
3.�̸��� �ߺ��� �� ����.
4.������(�ѱ۰���), ���ڿ� Ư������ ��밡��
5.SQLŰ����� ���̺� �̸����� ����� �� ����.(CREATE,SELECT ���)

5)�ڷ��� ->>DATE�� ������ �ڷ����� ���̸� �����־���Ѵ�.
1.��NVARCHAR : ���� ���� ����Ѵ�.
2.VARCHAR 
3.NUMMBER : ���� ��� ��ǥ��
4.DATE : �������� , ��¥ ������ 
5.CLOB
6.BLOB
7.BFIE

6)���̺� ����
1.�߰� : ADD
2.�÷��� �ٲٱ� : RENAME
3.�÷�Ÿ�� �ٲٱ� : MODIFY
4.�÷����� : DROP
-->>DDL
------------------------------------------------------------
(2)�����ͺ��̽� �⺻����
1)DDL : ������ ���̽� ���̺��� �����ϰų� ������ �� ����
2)DML : �����͸� �˻�, ����, ����, ����
3)DCL : ������ ������ �ο��ϰų� ȸ���ϴ� ���
4)TSL : DML�� ���� �Ǿ� DBMS�� ����ǰų� �ǵ����� ���� �����ϴ� SQL

-DDL
(1)CREATE : ������ ���̽� �Ǵ� ���̺� ����
<CREATE�� ����>
CREATE TABLE[TABLE](
    [COL1_NAME]  [COL_TYPE]
 );
 
(2)ALTER : ���� ������ ���̽� �Ǵ� ���̺� ����
<ALTER�� ����>
ALTER TABLE [TABLE_NAME]
 (1)ADD : COLUNM �߰� 
 (2)RENAME : COLUNM �̸� ����
 (3)MODIFY : COLUNM Ÿ�� ����
 (4)DROP : COLUNM ����
 
(3)DROP : ������ ���̽� �Ǵ� ���̺� ����
 <DROP����>
  DROP TABLE [TABLE_NAME];
  
-DML
(1)INSERT : ���̺� ������ ����
 <INSERT�� ����>
- ��� COULMN�����͸� ������ ��(COLUMN�� N��)
  INSERT INTO [TABLER_NAME]
  VALUES(COL1 DATA, COL2 DATA,....COL N DATA);
- Ư�� COLUMN �����͸� ������ �� 
  INSERT INTO [TABEL_NAME](COL2 NAME,COL3 NAME)
  VALUES (COL1 DATA, COL2 DATA,....COL N DATA);
(2)UPDATE : ������ �ִ� ������ ����
 <UPDATE�� ����>
 UPDATE [TABLE_NAME]
 SET(COL1_NAME) = (COL1_DATA),(COL2_NAME) = (COL2_DATA)
 WHERE[���浥���� ��������(CONDITION))];
(3)DELETE : �Էµ� ������ ����
 <DELETE�� ����>
 - Ư�������͸� �����ϴ� ���
    DELETE FROM [TABLE_NAME]
    WHERE[CONDITION(����)];
- ��� �����͸� �����ϴ� ���
   DELETE FROM [TABLE_NAME]
(4)SELECT : ���̺� �����ϴ� �����͸� �������� �˻��Ͽ� ����� ���
 <SELECT�� ����>
 - Ư�� �÷��� ��ȸ
   SELSCT[COL_NAME]
   FROM[TABLE_NAME]
   WHRER[CONDITION(����)]
 - ��� �÷��� ��ȸ
 SELECT * 
 FROM [TABLE_NAME]
 WHRER[CONDITON(����)]
------------------------------------------------------------
(3)�����ͺ��̽� �Լ�
1.��ҹ��ڸ� �ٲ��ִ� �Լ� : UPPER(�빮��),LOWER(�ҹ���),INTICAP(ù���ڸ��빮��)
 - SELECT UPPER ('ABcdeFG')AS "UPPER(�빮��)" FROM DUAL;
 - SELECT LOWER ('ABcDeFg')AS "LOWER(�ҹ���)" FROM DUAL;
 - SELECT INITCAP('aBCDEFG') AS "INITCAP(ù���� �빮��)" FROM DUAL;
2.���ڿ� ���� ���ϴ� �Լ� : LENGTH 
 - SELECT LENGTH ('Abc/de_fg')AS "���ڿ� ����" FROM DUAL;
-����ũ�� ���ϴ� LENGTHB
 - SELECT LENGTHB('��') AS �ѱ�, LENGTHB ('a') AS �ҹ���, LENGTHB ('A') AS �빮�� FROM DUAL;
3.���ڿ� �Ϻ� ���� : SUBSTR
 <SUBSTR�� ����>
 SUBSTR('���ڿ�������' OR [COL1_NAME],������ġ,�������)
 SUBSTR('���ڿ�������'OR [COL1_NAME],������ġ)
4.���ڿ� ������ �ȿ��� Ư�� ���� ��ġ ã�� �Լ� : INSTR
<INSTR�� ����>
INSTR('���ڿ� ������'OR [COL_NAME],
        '��ġ�� ã������ �κ� ����', 
        ���� ��ġ(�⺻ ��1),
        ���� ������ �� ����� ��������(�⺻��1))
5.Ư�� ���ڸ� �ٸ� ���ڷ� �ٲٴ� �Լ� : REPLACE
<REPLACE�� ����>
REPLACE('���ڵ�����'OR[COL_NAME], ã�� ����, �ٲ� ����)
REPLACE('���ڵ�����'OR[COL_NAME], ã�� ����)
6.�� �÷� �����͸� ��ġ�� �Լ� : CONCAT == ||
SELECT CONCAT (EMPNO,ENAME),
      CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP;

SELECT EMPNO || ENAME AS COCAT1,
     EMPNO || ' : ' || ENAME AS CONCAT2
FROM EMP;      

7.�����͸� ������� Ư�� ���ڷ� ä��� �Լ� : ����(LPAD), ������(RPAD)
<LPAD,RPAD�� ����>
--LAPD('���ڿ�',�������ڸ���,������� ä�� ����(�⺻��''))
--RAPD('���ڿ�',�������ڸ���,������� ä�� ����(�⺻��''))
--------------------------------------
8.�����հ� ������, ������ : INTERSECT(������),NUION(������),MINUS(������)

9.�������� : TRIM(), LTRIM() RTRIM()
SELECT TRIM(' ICIA������ ') AS TRIM,
       LTRIM(' ICIA������ ')AS LTRIM,
       RTRIM (' ICIA������ ')AS RTRIM
FROM DUAL; 
10.���밪 : ABS
SELECT ABS(5) AS "���밪 5", ABS(-10) AS "���밪 -10"
FROM DUAL;
11.�ݿø� : ROUND
SELECT ROUND(1324.5678) AS ROUND,
       ROUND(1324.5678 ,0)AS ROUND_0,  
       ROUND(1324.5678, 1)AS ROUND_1,
       ROUND(1324.5678, 2)AS ROUND_2,
       ROUND(1324.5678, -1)AS ROUND_MINUS1,
       ROUND(1324.5678, -2)AS ROUND_MINUS2
FROM DUAL; 
12.���� : TRUNC
SELECT TRUNC(1234.4452) AS TRUNC,
       TRUNC(1234.4452, 0)AS TRUNC_0,
       TRUNC(1234.4452, 1)AS TRUNC_1,
       TRUNC(1234.4452, 2)AS TRUNC_2,
       TRUNC(1234.4452, -1)AS TRUNC_MINUS1,
       TRUNC(1234.4452, -2)AS TRUNC_MINUS2
FROM DUAL;
13.����� ���� ã�� : CEIL,FLOOR
SELECT CEIL(3.14), --4
       FLOOR(3.14),--3
       CEIL(-3.14),--(-3)
       FLOOR(-3.14)--(-4)
FROM DUAL;
14.������ �����ϱ� : MOD
--NUM1&NUM2
SELECT FLOOR(15/6) AS "15/6",MOD(15,6)AS "15%6"FROM DUAL;

15.��¥ ���� �Լ� 
--DATE DATA + ���� : ���� ��ŭ ���� ��¥
--DATE DATA - ���� : ���� ��ŭ ���� ��¥
--DATE DATA1 - DATE DATA2 : �� ��¥�� �ϼ� ����
--DATE DATA1 + DATE DATA2 : ���� �Ұ���

16.���� �� ���ϱ� : MOMTHS_BETWEEN(���߳�¥, ó����¥)
SELECT CEIL(MONTHS_BETWEEN('2020/10/23','2020/05/01')) AS "���� ��"
FROM DUAL;
17.���� �� ���ϱ� : ADD_MONTHS(���ϰ����ϴ� ��¥, ���� ��)
SELECT ADD_MONTHS(SYSDATE,5)AS "5���� ��"
FROM DUAL;
18.�ٰ��� ���Ͽ� �ش��ϴ� ��¥���ϱ� : NEXT_DAY(��¥, ����)
SELECT NEXT_DAY(SYSDATE,'�Ͽ���') AS "���ƿ��� �Ͽ���"
FROM DUAL;
19. �̹���/ Ư������ ������ �� �� : LAST_DAY(��¥)
SELECT LAST_DAY(SYSDATE) AS "6�� ��������"
FROM DUAL;
20. TO_CHAR : ���� �Ǵ� ��¥�� ���ڵ����ͷ� ��ȯ
 1) TO_CHAR(��¥,��¥ ����):���� �Ǵ� ��¥�� ���ڵ����ͷ� ��ȯ
--    JAVA ex)String.valueOf(100)

--    2) TO_NUMBER :���ڸ� ���ڷ�
--    JAVA ex)integer.parseInt("100") 

--    3)TO_DATE : ���ڸ� ���ڷ�

--�ð�����

21. ���� : 'CC','BC'
--TO_CHAR(SYSDATE,'CC')--21����
--TO_CHAR(SYSDATE,'BC')--����

22. NULLó�� �Լ� : NVL,NVL2
     NVL([COL_NAME],0):�÷��� �����Ͱ� NULL�� ��� 0���� �ٲ��.
     NVL([COL_NAME],'NULL���� �ƴ� ���','NULL�� ���')
23. SWITCH : DECODE(ȣ���� COLMN,����, ������ ���ϰ��)
    SWITCH(DEPTNO)
     CASE 10: �λ���
     CASE 20: ������
     CASE 30: ȫ����
24. IF~ELSE : CASE~WHEN
    SELECT ENAME,DEPTNO,
   CASE --IF
      WHEN DEPTNO = 10 THEN '�λ���'--ELSE IF
      WHEN DEPTNO = 20 THEN '������'
      WHEN DEPTNO = 30 THEN '������'
   END AS ���μ�
FROM EMP
ORDER BY DEPTNO;

25. �׷�ȭ �Լ� 
--SUM() : ������ �÷� �������� ��
--AVG() : ������ �÷� �������� ���
--COUNT() : ������ �÷� �������� ����
--MAX() : ������ �÷� �������� �ִ�
--MIN() : ������ �÷� �������� �ּڰ�

------------------------------------------------------

26. GROUP BY : Ư�� �÷�  �Ǵ� �����͸� �������� �����͸� �׷����� ����
/*
   SELECT 
   FROM
   WHERE
   GROUP BY [�׷�ȭ�� COLUMN]�� ���� (������ ����)
   ORDER BY[������ COLUMN];
*/

/*

27.(2)ROLLUP :�׷�ȭ �������� �հ踦 �Բ� ���
/*
  SELECT
  FROM 
  WHERE
  GROUP BY ROLLUP[COL_NAME]
*/

/*
28. HAVING : GROUP BY���� ����ؼ� 
--            �׷�ȭ�� ��� �߿� ��� �׷��� �����ϴ� ���ǽ�

/* ���� �߱���ϱ�!!
  SELECT
  FROM 
  WHERE -- HAVING���ǽ��� �������� ���� ���ǽ��� ����
  GROUP BY
  HAVING[��±׷��� �����ϴ� ���ǽ�] -- WHERE�� �߿��� ���ǽĿ� �´� ���� ã���� �Ѵ�.
  ORDER BY
*/
