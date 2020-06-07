-- ������ �ִ� ���̺� ��ȸ

SELECT * FROM TAB;

-- ���̺� ��ȸ
SELECT * FROM BONUS;
SELECT * FROM DEPT;
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

ALTER SESSION
SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

-- (1) ��� (JOB) ���� ��ȸ
-- �ߺ��� ����(DISTINCT)

SELECT DISTINCT JOB FROM EMP;

-- (2) �޿��� 2000�̻�, 3000������
-- ���(�����ȣ, �̸�, �޿�) ��ȸ

SELECT EMPNO AS �����ȣ, ENAME AS �̸�, SAL AS �޿�
FROM EMP
WHERE SAL>= 2000 AND SAL<= 3000; 

-- (3) 1981�� ���� �Ի��� ��� (���, �̸�, �Ի���) ��ȸ

SELECT EMPNO AS �����ȣ, ENAME AS �̸�, HIREDATE AS �Ի���
FROM EMP
WHERE HIREDATE >= '1981.01.01';

-- (4) �̸��� S�� ������ ����� ��� ���� ��ȸ
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

-- (5) ������ ���� �ʴ� ��� (�����ȣ, �̸�, �޿�, ����(�޿�X12)) ��ȸ

SELECT EMPNO AS �����ȣ, ENAME AS �̸�, SAL AS �޿� , (SAL * 12) AS "����"   -- �߰��� ������ ���� ""�� �����������
FROM EMP
WHERE COMM IS NULL;

-- (6) ������ �޴� ��� (�����ȣ, �̸�, �޿�, ����, ����(�޿�X12+����)) ��ȸ

SELECT EMPNO AS �����ȣ, ENAME AS �̸�, SAL AS �޿� ,COMM AS ����, SAL * 12 +COMM AS "����"   
FROM EMP
WHERE COMM IS NOT NULL;

-- (7) 30�� �μ����� �ٹ��ϰ�
-- ��å�� SALESMAN�� ���(���, �̸�, ��å, �޿�, �μ�) ��ȸ
SELECT EMPNO AS �����ȣ, ENAME AS �̸�, JOB AS ��å ,SAL AS �޿�, DEPTNO AS �μ�
FROM EMP
WHERE DEPTNO = 30 AND JOB LIKE 'SALESMAN'; 

-- (8) 20, 30�� �μ����� �ٹ��ϰ� �޿��� 2000�ʰ��� ��� ��� ���� ��ȸ
SELECT *
FROM EMP
WHERE DEPTNO IN(20,30) AND SAL >2000;
