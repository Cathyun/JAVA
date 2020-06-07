/*
Date : 2020.06.05
Author : YOUHYUNSEO
Description :�����ͺ��̽� 5���� �Լ�
Version : 1.0
*/

--(1)�����հ� ������

/*
(1) A���� : 4���� ���
(2) B���� : ���� '��'�� �� ���
*/
--A���� : 4��
SELECT * FROM JSSTU
WHERE GROUPNO = 4;

--B���� : 5��
SELECT * FROM JSSTU
WHERE STUNAME LIKE '��%'
ORDER BY STUNAME;

--INTERSECT(������) : ������� ���� �����͸� ���

SELECT * FROM JSSTU WHERE GROUPNO = 4
INTERSECT 
SELECT * FROM JSSTU WHERE STUNAME LIKE '��%';

--UNION(������) : ��� ��� ������ ���

SELECT * FROM JSSTU WHERE GROUPNO = 4
UNION 
SELECT * FROM JSSTU WHERE STUNAME LIKE '��%';

--MINUS(������) : ���� �ۼ���  SELECT ������ ���߿� �ۼ��� SELECT���� �����͸� ���� ���

SELECT * FROM JSSTU WHERE GROUPNO = 4
MINUS 
SELECT * FROM JSSTU WHERE STUNAME LIKE '��%';



--(2)�������� : TRIM(), LTRIM(), RTRIM()
SELECT TRIM(' ICIA������ ') AS TRIM,
       LTRIM(' ICIA������ ')AS LTRIM,
       RTRIM (' ICIA������ ')AS RTRIM
FROM DUAL;       

--(3)���밪 : ABS( )
SELECT ABS(5) AS "���밪 5", ABS(-10) AS "���밪 -10"
FROM DUAL;

--(4)�ݿø�: ROUND()
SELECT ROUND(1324.5678) AS ROUND,
       ROUND(1324.5678 ,0)AS ROUND_0, -- 
       ROUND(1324.5678, 1)AS ROUND_1,
       ROUND(1324.5678, 2)AS ROUND_2,
       ROUND(1324.5678, -1)AS ROUND_MINUS1,
       ROUND(1324.5678, -2)AS ROUND_MINUS2
FROM DUAL;       
       
--����ȭ��ȣ�� �ݿø� Ȯ���غ���
--0,1,2,3,-1,-2,-3
SELECT ROUND(7720.4452) AS ROUND,
       ROUND(7720.4452, 0)AS ROUND_0,
       ROUND(7720.4452, 1)AS ROUND_1,
       ROUND(7720.4452, 2)AS ROUND_2,
       ROUND(7720.4452, -1)AS ROUND_MINUS1,
       ROUND(7720.4452, -2)AS ROUND_MINUS2
FROM DUAL;


--(5)���� : TRUNC
--���� ���ڿ��� �Ҽ��� ������ �ڸ����� ������ �������� �ڸ����� ������ 
--���� ��µǾ�����.
SELECT TRUNC(1234.4452) AS TRUNC,
       TRUNC(1234.4452, 0)AS TRUNC_0,
       TRUNC(1234.4452, 1)AS TRUNC_1,
       TRUNC(1234.4452, 2)AS TRUNC_2,
       TRUNC(1234.4452, -1)AS TRUNC_MINUS1,
       TRUNC(1234.4452, -2)AS TRUNC_MINUS2
FROM DUAL;

--(6)����� ���� ã�� :CEIL(���κ��� ū), FLOOR(���κ��� ����)
SELECT CEIL(3.14), --4
       FLOOR(3.14),--3
       CEIL(-3.14),--(-3)
       FLOOR(-3.14)--(-4)
FROM DUAL;       

--(7)������ �� ���ϱ� : MOD(NUM1,NUM2)
--NUM1&NUM2
SELECT FLOOR(15/6) AS "15/6",MOD(15,6)AS "15%6"FROM DUAL;

--1���� �p�ַ� �Ǿ� �ִ��� �˾��غ��ÿ�
SELECT CEIL(365/7) AS "1�⿡ �p��"
FROM DUAL;

--(8)��¥ ���� �Լ� 
--DATE DATA + ���� : ���� ��ŭ ���� ��¥
--DATE DATA - ���� : ���� ��ŭ ���� ��¥
--DATE DATA1 + DATE DATA2 : �� ��¥�� �ϼ� ����
--DATE DATA1 + DATE DATA2 : ���� �Ұ���

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';
--����,����,���� ��¥ ���ϱ�
SELECT 
     SYSDATE AS NOW,
     SYSDATE +1 AS TOMORROW,
     SYSDATE -1 AS YESTERDAY
FROM DUAL;

--��������,������ �� ���ϱ�
SELECT SYSDATE AS NOW,
SYSDATE-7 AS "������ ��",
SYSDATE+7 AS "������ ��"
FROM DUAL;
     
    
--(9)���� �� ���ϱ� : MOMTHS_BETWEEN(���߳�¥, ó����¥)
SELECT CEIL(MONTHS_BETWEEN('2020/10/23','2020/05/01')) AS "���� ��"
FROM DUAL;

--(10)���� �� ���ϱ� : ADD_MONTHS(���� �� ���ϰ����ϴ� ��¥,���� ��)
SELECT ADD_MONTHS(SYSDATE,5)AS "5���� ��"
FROM DUAL;
-----------------------------------------------------------------
--(11)�ٰ��� ���Ͽ� �ش��ϴ� ��¥ :NEXT_DAY(��¥,����)
SELECT NEXT_DAY(SYSDATE,'�Ͽ���') AS "���ƿ��� �Ͽ���"
FROM DUAL;

--(12)�̹��� /Ư������ ������ �� �� :LAST_DAY(��¥)
SELECT LAST_DAY(SYSDATE) AS "6�� ��������"
FROM DUAL;

--2020�� 2�� ���������� ���!
--SYSDATE�� ���� '2020/06/05'
SELECT LAST_DAY('2020/02/01')AS"2020�� 2�� ��������"
FROM DUAL;

--(13)
--    1) TO_CHAR(��¥,��¥ ����):���� �Ǵ� ��¥�� ���ڵ����ͷ� ��ȯ
--    JAVA ex)String.valueOf(100)

--    2) TO_NUMBER :���ڸ� ���ڷ�
--    JAVA ex)integer.parseInt("100") 

--    3)TO_DATE : ���ڸ� ���ڷ�

SELECT TO_CHAR(SYSDATE,'MM-DD DAY')FROM DUAL;

--DATE FORMAT(��¥ ����)
--TO CHAR(SYSDATE, 'YYYYMMDD') 20200605
SELECT TO_CHAR(SYSDATE,'YYYYMMDD') AS "YYYYMMDD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY-MM-DD') 2020-06-05
SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD') AS "YYYY-MM-DD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY/MM/DD')2020/06/05
SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD') AS "YYYY/MM/DD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY')2020
SELECT TO_CHAR(SYSDATE,'YYYY') AS "YYYY" FROM DUAL;

--TO_CHAR(SYSDATE,'YY')20: �ڿ� YY
SELECT TO_CHAR(SYSDATE,'YY') AS "YY" FROM DUAL;

--TO_CHAR(SYSDATE,'MM')06
SELECT TO_CHAR(SYSDATE,'MM') AS "MM" FROM DUAL;

--TO_CHAR(SYSDATE,'MON')6��
SELECT TO_CHAR(SYSDATE,'MON') AS "MON" FROM DUAL;

--TO_CHAR(SYSDATE,'D')6 : ������ ���� �ϼ� (�Ͽ��� = 1)
SELECT TO_CHAR(SYSDATE,'D') AS "D" FROM DUAL;

--TO_CHAR(SYSDATE,'DD')05 
SELECT TO_CHAR(SYSDATE,'DD') AS "DD" FROM DUAL;

--TO_CHAR(SYSDATE,'DDD')157 : 1�� ���� �ϼ� 
SELECT TO_CHAR(SYSDATE,'DDD') AS "DDD" FROM DUAL;

--TO_CHAR(SYSDATE,'DAY')�ݿ���
SELECT TO_CHAR(SYSDATE,'DAY') AS "DAY" FROM DUAL;

--TO_CHAR(SYSDATE,'DY')��
SELECT TO_CHAR(SYSDATE,'DY') AS "DY" FROM DUAL;

--TO_CHAR(SYSDATE,'WW')23 : 1�� ���� ��ġ
SELECT TO_CHAR(SYSDATE,'WW') AS "WW" FROM DUAL;

--TO_CHAR(SYSDATE,'W')1 : �Ѵ� ���� ��ġ
SELECT TO_CHAR(SYSDATE,'W') AS "W" FROM DUAL;

--TO_CHAR(SYSDATE,'DL')2020�� 6��5�� �ݿ��� : �ش� ��¥ ����
SELECT TO_CHAR(SYSDATE,'DL') AS "DL" FROM DUAL;

--�ð� ����TO_CHAR(��¥, �ð� ����)
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD HH24:MI:SS';
SELECT SYSDATE FROM DUAL; --����

--TO_CHAR(SYSDATE, 'AM') -- ����
SELECT TO_CHAR(SYSDATE, 'AM') FROM DUAL;
--TO_CHAR(SYSDATE, 'PM')--����
SELECT TO_CHAR(SYSDATE,'PM') FROM DUAL;
--TO_CHAR(SYSDATE, 'HH')--11 // ���� 1�� ���� 01��
SELECT TO_CHAR(SYSDATE,'HH') FROM DUAL;
--TO_CHAR(SYSDATE, 'HH24')--11 //����1�� : 13��
SELECT TO_CHAR(SYSDATE,'HH24') FROM DUAL;
--TO_CHAR(SYSDATE, 'MI')--38
SELECT TO_CHAR(SYSDATE,'MI') FROM DUAL;
--TO_CHAR(SYSDATE, 'SS')--42
SELECT TO_CHAR(SYSDATE,'SS') FROM DUAL;

--���� 11:42:14 ���(SYSDATE)
SELECT TO_CHAR(SYSDATE,'AM HH24 : MI: SS') FROM DUAL;

--(14)����
--TO_CHAR(SYSDATE,'CC')--21����
--TO_CHAR(SYSDATE,'BC')--����

SELECT TO_CHAR(SYSDATE,'CC')FROM DUAL;

SELECT TO_CHAR(SYSDATE,'BC YYYY')FROM DUAL;

--(15)NULL ó�� �Լ� : NVL, NLV2
--        NVL([COL_NAME],0):�÷��� �����Ͱ� NULL�� ��� 0���� �ٲ��.
--        NVL([COL_NAME],'NULL���� �ƴ� ���','NULL�� ���')

--AB���̺� ����
CREATE TABLE AB(
   ABNAME NVARCHAR2(10),
   ABAGE NUMBER(5),
   ABMERRY NVARCHAR2(5)
);
--������ ����
INSERT INTO AB(ABNAME)
VALUES('YOUHYUN');

INSERT INTO AB
VALUES('YOU',26,'X');

--AB���̺� ��ȸ
SELECT * FROM AB;

SELECT ABNAME, NVL(ABAGE,999)AS "���� NULL ����",ABMERRY FROM AB;

SELECT ABNAME, 
NVL2(ABAGE,111,222),
NVL2(ABMERRY,'NULL �ƴ� �� ȣ��','NULL�� �� ȣ��')
FROM AB;

--(16)SEITCH�� : DECODE(ȣ����COULMN,����,������ ���϶� ��Ÿ�� ��)
SELECT ENAME, DEPTNO,
       DECODE(DEPTNO,10,'�λ���',
                    20,'������',
                    30,'ȫ����')AS "���μ�"
FROM EMP
ORDER BY DEPTNO;
/*
  SWITCH(DEPTNO)
     CASE 10: �λ���
     CASE 20: ������
     CASE 30: ȫ����
*/
--(17)IF~ELSE : CASE~WHEN
SELECT ENAME,DEPTNO,
   CASE 
      WHEN DEPTNO = 10 THEN '�λ���'
      WHEN DEPTNO = 20 THEN '������'
      WHEN DEPTNO = 30 THEN '������'
   END AS ���μ�
FROM EMP
ORDER BY DEPTNO;

--(18)�׷�ȭ �Լ�
--SUM() : ������ �÷� �������� ��
--AVG() : ������ �÷� �������� ���
--COUNT() : ������ �÷� �������� ����
--MAX() : ������ �÷� �������� �ִ�
--MIN() : ������ �÷� �������� �ּڰ�

--SUM(SAL) : ALL�� �����Ǿ� ����
--SUM(DISTINCT(SAL)) : �ߺ����� ������ �޿��� �հ�
SELECT SUM(SAL) AS �޿��հ�,SUM(DISTINCT(SAL))AS "�ߺ����� �޿��հ�",
      SUM(ALL(SAL))AS "�޿��հ�(ALL)"
FROM EMP;


--����)�μ��� 20���� ����� �������, �׵��� �޿��հ�� ��ձ޿��� ��ȸ�ϰ�,
--���帹���޿��� ���� ����� ���� ���� �޿��� �޴� ����� ��ȸ�Ͻÿ�
--(SELECT 1�� ���)
SELECT  
       COUNT(ENAME) AS "�ο���",SUM(SAL)AS �޿��հ�, AVG(SAL)AS �޿����,  
       MIN(SAL)AS "�����޿�", MAX(SAL) AS "�ְ�޿�"
FROM EMP
WHERE DEPTNO = 20;

/*MAX = FORD,SCOTT
  MIN = SMITH*/
  
SELECT ENAME || SAL FROM EMP
WHERE DEPTNO = 20
ORDER BY ENAME DESC;



















