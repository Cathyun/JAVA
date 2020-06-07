/*
Date : 2020.06.04
Author : YOUHYUNSEO
Description : �����ͺ��̽� 4���� �Լ�
Version : 1.0
*/

/*
(1)��, �ҹ��� �ٲ��ִ� �Լ�
  - UPPER : ��� �빮�ڷ�
  - LOWPER : ��� �ҹ��ڷ�
  - INTICAP : ù���� �빮��, �������� �ҹ���
 */
 SELECT UPPER ('ABcdeFG')AS "UPPER(�빮��)" FROM DUAL;
 SELECT LOWER ('ABcDeFg')AS "LOWER(�ҹ���)" FROM DUAL;
 SELECT INITCAP('aBCDEFG') AS "INITCAP(ù���� �빮��)" FROM DUAL;
 
 /*
 (2)���ڿ� ���̸� ���ϴ� LENGTH
 
 */
 
 SELECT LENGTH ('Abc/de_fg')AS "���ڿ� ����"
 FROM DUAL;

 --EMP ���̺��� �̸��� 5�� �̻��� ���� ��ȸ
 
 SELECT ENAME, LENGTH(ENAME) 
 FROM EMP 
 WHERE LENGTH(ENAME)>=5; 
 
 SELECT * FROM EMP;
 
 --LENGTHB :������ ũ�� ��ȸ(byte)
 SELECT LENGTHB('��') AS �ѱ�, LENGTHB ('a') AS �ҹ���, LENGTHB ('A') AS �빮�� FROM DUAL;
 
 --!,#,_,(����)
 SELECT LENGTHB ('!')AS "!", LENGTHB ('#') AS "#", 
          LENGTHB ('_') AS "_", LENGTHB(' ')AS " " FROM DUAL; 
 
 /*
 (3)���ڿ� �Ϻθ� �����ϴ� SUBSTR
 SUBSTR('���ڿ�������' OR [COL1_NAME],������ġ,�������)
 SUBSTR('���ڿ�������'OR [COL1_NAME],������ġ)
 */
 
 SELECT SUBSTR('HELLO!!',1,2),SUBSTR('HELLO!!',3,2),SUBSTR('HELLO!!',5) FROM DUAL;
 
 /*
 (4)���ڿ� ������ �ȿ��� Ư�� ���� ��ġ�� ã�� INSTR
 INSTR('���ڿ� ������'OR [COL_NAME],
        '��ġ�� ã������ �κ� ����', 
        ���� ��ġ(�⺻ ��1),
        ���� ������ �� ����� ��������(�⺻��1))
 */
 /*HELLO, ORACLE! ->>�� 14���� ����� ,���� */
 --'L'�� ��ġ��ȣ ã��
 SELECT INSTR('HELLO, ORACLE!','L') AS INSTR1, -- ù��° 'L'�� ���� ��ȣ
        INSTR('HELLO, ORACLE!','L',5) AS INSTR2,-- 5��° ���ں��� �����ϴ� ù��° 'L' 
        INSTR('HELLO, ORACLE!','L',2,3) AS INSTR3 --2��° ���ں��� �����ؼ� ����° 'L'
FROM DUAL;

--'O'�� ��ġ ��ȣ ã��
SELECT INSTR('HELLO, ORACLE!', 'O',1,1) AS INSTR1, -- �ι�° ���ڿ��� ù��° 'O'�� ���ڹ�ȣ 
       INSTR('HELLO, ORACLE!','O',1,2)AS INSTR1--�ι�° ���ڿ��� �ι�° 'O'�� ���ڹ�ȣ 
FROM DUAL;
 
--(5)Ư�� ���ڸ� �ٸ� ���ڷ� �ٲٴ� REPLACE
/* 
REPLACE('���ڵ�����'OR[COL_NAME], ã�� ����, �ٲ� ����)
REPLACE('���ڵ�����'OR[COL_NAME], ã�� ����),
*/ 
SELECT 
'010-7720-4452' AS "REPLACE����",
REPLACE('010-7720-4452', '-',' ') AS "REPLACE�⺻��",
REPLACE('010-7720-4452', '-') AS "REPLACE������"
FROM DUAL; 

--������ ���� ù �ű��...������, �����鼭 �� ��������
--������ => ����, ������ => �輺��

SELECT
'������ ���� ù �ű��...������, �����鼭 �� ��������' AS "���� ����",
REPLACE ( 
REPLACE('������ ���� ù �ű��...������, �����鼭 �� ��������','������','����')
        ,'������','�輺��')AS "���δ��� ����1"
FROM DUAL;
 

--(6)�� �÷� �����͸� ��ġ�� CONCAT
SELECT CONCAT (EMPNO,ENAME),
      CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP;

--||��� ==>> CONCAT�� ���� �뵵�̴�
SELECT EMPNO || ENAME AS COCAT1,
     EMPNO || ' : ' || ENAME AS CONCAT2
FROM EMP;      

--JOB�� SALESMAN�� ��� �̸� �տ� '��������'���� �ٿ� �ֱ�

SELECT CONCAT ('��������', ENAME),JOB
FROM EMP     
WHERE JOB = 'SALESMAN';

SELECT '��������' || ENAME FROM EMP
WHERE JOB = 'SALESMAN';
  
--(7)�������� ������� Ư�� ���ڷ� ä��� 
--LAPD(����), RPAD(������)
--LAPD('���ڿ�',�������ڸ���,������� ä�� ����(�⺻��''))
--RAPD('���ڿ�',�������ڸ���,������� ä�� ����(�⺻��''))

SELECT 'ICIA',
       LPAD('ICIA',7,'A')AS LPAD1,
       RPAD('ICIA',7,'��')AS RPAD2,
       LPAD('ICIA',7)AS LPAD1,
       RPAD('ICIA',7)AS RPAD2
FROM DUAL;
--A�� ���� ���ĺ��� 1byte
--'��'�� 3byte


CREATE TABLE YHS (
   JSNAME NVARCHAR2(3),
   SSSN NVARCHAR2(14),
   JSPHONE NVARCHAR2(13)
);

INSERT INTO YHS VALUES('������','950111-2331561','010-7720-4452');
SELECT * FROM YHS;

--����
--1)�ֹι�ȣ 950111-2******
SELECT RPAD('950111-2',14,'*')AS "�ֹι�ȣ"
FROM DUAL;   


--CONCAT,SUBSTR
--2)��ȭ��ȣ 010-****-4452
SELECT RPAD(SUBSTR(JSPHONE,1,4),8,'*')|| SUBSTR(JSPHONE,9)AS ��ȭ��ȣ FROM YHS; 




--���������
--1)'ICIA�� ���� ���� ȯ���մϴ�'���� 'ICIA'�� '������','ȯ���մϴ�'�� '�������'��� '��'�� '��'�ٲ��ִ� Į����
--���� ���� �κ��� '*'������ִ� Į���� ����ÿ�

SELECT 'ICIA�� ���� ���� ȯ���մϴ�.'AS "������ ����", 
REPLACE(REPLACE('ICIA�� ���� ���� ȯ���մϴ�.','ICIA','������'),'��','��')AS "������ ���� ����",
RPAD(SUBSTR('ICIA�� ���� ���� ȯ���մϴ�.',1,5),11,'*')||SUBSTR('ICIA�� ���� ���� ȯ���մϴ�.',13) AS "����*"
FROM DUAL;

--2)�ȳ���� �ѱ��̸��� �����, '�ȳ�'�� 'ANNAR'��� �ٲ� ù���ڸ� �빮�ڷ� �ٲٽÿ� 
SELECT '�ȳ�'AS "�ѱ� �̸�",
REPLACE ('�ȳ�','�ȳ�',INITCAP('ANNAR')) AS "���� �̸�"
FROM DUAL;






 
 
 
 
 
 