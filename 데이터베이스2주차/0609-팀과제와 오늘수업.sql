--������
/*
  �ֹ� �ý��� ����
  
  ENTITY 
  1. SELLER(�Ǹ���)
  - ����� ��� ��ȣ, ��ȣ, ��ǥ��
  
  2. GOODS(��ǰ)
  - ��ǰ�ڵ�, ��ǰ �̸�, ����, ���
  
  3. BUYER(������)
  - ���̵�, ��й�ȣ, �̸�, ����ó
  
  - ���� �˸��� ���� ���� �����ϱ�
  - ������ ���̺� ���� ������ �����ϱ�

*/
DROP TABLE SELLER;
DROP TABLE GOODS;
DROP TABLE BUYER;
    
    CREATE TABLE SELLER(
    SE_CODE NVARCHAR2(20),
    SE_NUM NVARCHAR2(20),
    SE_NAME NVARCHAR2(20),
    CEO NVARCHAR2(5) DEFAULT '����ȫ',
    CONSTRAINT SE_CO_PK PRIMARY KEY(SE_CODE),
    CONSTRAINT SE_CO_FK FOREIGN KEY(SE_CODE) REFERENCES GOODS(GD_CODE)
);

SELECT * FROM SELLER; --�ڡڡڡڡڡ�

INSERT INTO SELLER VALUES ('01','012-34-56789', 'LONGCAT', DEFAULT);
INSERT INTO SELLER VALUES ('02','012-34-56789', 'LONGCAT','������');
INSERT INTO SELLER VALUES ('03','012-34-56789', 'LONGCAT','������');
-----------------------------------------------------
    CREATE TABLE GOODS(
    GD_CODE NVARCHAR2(20) PRIMARY KEY,
    GO_NAME NVARCHAR2(20),
    PRICE NVARCHAR2(20),
    STOCK NVARCHAR2(20)
);

DROP TABLE GOODS;

SELECT * FROM GOODS; --�ڡڡڡڡڡ�
INSERT INTO GOODS
VALUES ('01','�ξ�ĳ��', '33000��', '20��');
INSERT INTO GOODS
VALUES ('02','�Ƹ޸�ĭ�ַ��', '20000��', '10��');
INSERT INTO GOODS
VALUES ('03','������ ĹŸ��', '50000��', '30��');

-------------------------------------------

DROP TABLE BUYER;

  CREATE TABLE BUYER(
    BY_CODE NVARCHAR2(20) ,
    B_ID NVARCHAR2(20) PRIMARY KEY,
    B_PW NUMBER(4) DEFAULT 1234,
    B_NAME NVARCHAR2(20) NOT NULL,
    B_PHONE NVARCHAR2(20) NOT NULL,
    CONSTRAINT JS_PS_CK CHECK(LENGTH(B_PW) =4),
    CONSTRAINT BU_CD_FK FOREIGN KEY(BY_CODE) REFERENCES GOODS(GD_CODE)
);

SELECT * FROM BUYER; --�ڡڡڡڡڡ�
INSERT INTO BUYER VALUES ('01','MINJ', 1234, '������','7954');
INSERT INTO BUYER VALUES ('02','SEOO', 1234, '������','1234');
INSERT INTO BUYER VALUES ('03','JH', DEFAULT , '����ȫ','4321');
INSERT INTO BUYER VALUES (NULL,'OHR', 5689 , '������','5555');

 -- SELLER ���̺�, BUYER ���̺� GD_CODE FKŰ ����
 
   ALTER TABLE BUYER
    ADD CONSTRAINT BY_CO_FK FOREIGN KEY (BY_CODE)
    REFERENCES GOODS(GD_CODE);
    
       ALTER TABLE SELLER
    ADD CONSTRAINT SE_CO_FK FOREIGN KEY (SE_CODE)
    REFERENCES GOODS(GD_CODE);

---------------6/9 ������ ����-------------------------------
/*
 �� ����(JOIN) : ���� �ܰ� ����!!!
   : �� �� �̻��� ���̺��� �����Ͽ� �ϳ��� ���̺�ó�� ���
*/

SELECT * FROM GOODS;
SELECT * FROM GOODS,SELLER; -- GOODS*SELLER�� ����� �Ǿ�����.

--(1)INNER����(EUQL JOIN - �����) : �� �� ���̺��� �� ���� ���� ��
SELECT GO_NAME,CEO FROM GOODS,SELLER
WHERE GOODS.GD_CODE = SELLER.SE_CODE;

--(2)��Ī�� �̿��� ǥ���ϱ�  
SELECT GO_NAME,CEO FROM GOODS GO,SELLER SE --��Ī�ϰ��� �ϴ� TABLE�̸� �ڿ� ��Ī�� ������
WHERE GO.GD_CODE = SE.SE_CODE;--��Ī�� ����Ͽ� WHERE������ ����!!

--Q1. ��ǰ(GOODS)�� �Ǹ� �ϴ� �Ǹ���(SELLER), �����ϴ� ���(BUYER) ��ȸ
SELECT GO_NAME AS ��ǰ�̸�, CEO AS �Ǹ���,BU_NAME AS ������ 
FROM GOODS G, SELLER S,BUYER B
WHERE G.GD_CODE = S.SE_CODE AND G.GD_CODE = B.BU_CODE;

--Q2. SCOTT������ ����ؼ� DEPT���̺��� ��ȸ�ϰ�, 
--       EMP���̺�� JOIN�ؼ� ����̸�, �μ���ȣ, �μ� ��ġ�� ��ȸ
SELECT ENAME AS ����̸�, D.DEPTNO AS �μ���ȣ,LOC AS �μ���ġ
                         --�μ���ȣ�� 'DEPTNO'���� �ϸ� ������ ����.
                         --��� ������ �Դ��� �˾ƾ��ϸ�
                         --��Ī���� �� ������ Ȱ���Ͽ� 'D.DEPT'�� �ۼ�
FROM DEPT D, EMP E
WHERE D.DEPTNO = E.DEPTNO;

SELECT * FROM DEPT;

--(3)������(NON-EQUL JOIN) : ����� �ܿ� ���
--            : ���� ����ϴ� ���� �ƴ�����, ������ Ư�� ���� ��ġ ���θ� �˻��ϴ� ���

SELECT * FROM TAB;
--BONUS,DEPT,EMP,SALGRADE

SELECT * FROM SALGRADE;

--1�� : LOSAL 700      HISAL 1200
--2�� : LOSAL 1201      HISAL 1400
--3�� : LOSAL 3001     HISAL 9999

--����.
SELECT * FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

--(4)��ü����(SELF JOIN) : �ϳ��� ���̺��� ������ ���̺�ó�� Ȱ���ϴ� ���
SELECT * FROM EMP;

SELECT E.ENAME AS �����̸�, E2.ENAME AS ����̸� FROM EMP E, EMP E2 --���̺� �̸��� �� �� ���� �ٸ� ��Ī�� ����ؼ� ��Ī
WHERE E.MGR = E2.EMPNO; --ó�� EMP�� MGR�� �ι�° EMP�� EMPNO��ȣ�� �Ǿ�����. 
--13�� �˻�

--(5)�ܺ�����(OUTER JOIN) : ���� ������ �������� �ʴ� �����͸� ó���ϱ� ���� ������
-- INNER JOIN �� �� ���̺� �ִ� ��ġ�ϴ� ���� �������� �Ϳ� ����
-- OUTER JOIN�� ��� ������ �����͸� ��� �����´�.
-- : JOIN ���� ���� NULL�� ó���ϴ� ���� �������� ���
-- : LEET OUTER JOIN, RIGTH OUTER JOIN, FULL OUTER JOIN

-- LEET OUTER JOIN
/* ù��° ���
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]LEFT OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/
SELECT * FROM EMP E1 LEFT OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

/* �ι�° ���
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1],[TAB_NAME2]
  WHERE[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME](+)
*/

SELECT * FROM EMP E1,EMP E2
WHERE E1.MGR = E2.EMPNO(+);


-- RIGHT OUTER JOIN
/* ù��° ���
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]RIGHT OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/
SELECT * FROM EMP E1 RIGHT OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

/* �ι�° ���
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1],[TAB_NAME2]
  WHERE[TAB_NAME1].[COL_NAME](+)=[TAB2_NAME],[COL_NAME];
*/

SELECT * FROM EMP E1,EMP E2
WHERE E1.MGR(+) = E2.EMPNO;

-- FULL OUTER JOIN
/* ù��° ���
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]FULL OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/

SELECT * FROM EMP E1 FULL OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

--(6)�������� : SQL���� �����ϴ��� �ʿ��� �����͸� �߰��� ��ȸ�ϱ� ����
--            SQL�� ���ο��� SELECT���� ���

/*
 - ���� ������ Ư¡
 1. ���� ������ �����ڿ� ���� �� �Ǵ� ��ȸ ����� �����ʿ� ���̸�
    ��ȣ()�� ��� ����Ѵ�.
 2. Ư���� ��� ��츦 �����ϰ� ���������� ORDER BY���� ����� �� ����.(�����ϸ� �� ��� X)
 3. ���������� SELECT ���� ����� ��(SAL)�� ���������� �� ���(���� SAL)��
    ���� �ڷ����� ���� ������ �����ؾ��Ѵ�.
*/


--Q1.��� �̸��� JONES�� ����� �޿��� ���
SELECT SAL FROM EMP
WHERE ENAME = 'JONES';

--Q2.�޿��� 2975���� ���� �޿��� �޴� ������� ���
SELECT * FROM EMP
WHERE SAL>2975;

--Q3.JONES�� �޿����� ���� �޿��� �޴� ������� ���(Q1+Q2)--��������
SELECT * FROM EMP
WHERE SAL>(SELECT SAL 
           FROM EMP
           WHERE ENAME = 'JONES');


--�������� �ȿ� �Լ��� ����� ���
--Q. �޴� �޿��� ��� �޿��̻��� ����� ������ �˻��Ͻÿ�.
SELECT * FROM EMP
WHERE SAL>=(SELECT AVG(SAL) FROM EMP);
--�������� IN������ : ���� ������ ����Ŀ�� ���� ������ ��� �� 
                   --�ϳ��� ��ġ�ϴ� �����Ͱ� �ִٸ� TURE
--Q.�� �μ��� �ְ� �޿��� ���� �޿��� �޴� ���
SELECT * FROM EMP 
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO);


















