/*
Date : 2020.06.05
Author : YOUHYUNSEO
Description :CONCAT����
Version : 1.0
*/
/* ���� 
1. EMP���̺��� �����ѹ� 7839�� �μ� ������ ������� ȣ���Ѵ�.
ȣ��� �μ� �ѹ��� ���� �� �̸��� �θ���.
��Ī�� ȣ���� ����Ѵ�.(EX . 00�� �μ��� XXXX��! ����Ƿ� ���ּ���)

����1.�����͸� ��ĥ �� ������ CONCAT���� ����Ѵ�.
����2.�̸��� �θ� �� ù���ڴ� �빮�ڷ� �������� �ҹ��ڷ� ��ȯ�Ѵ�.
����3.�μ���ȣ�� ���� ������� �����Ͽ� ȣ���Ѵ�.
*/

SELECT CONCAT(DEPTNO,CONCAT('�� �μ���',CONCAT(INITCAP(ENAME),'�� ����Ƿ� ���ּ���')))AS"ȣ��" FROM EMP
WHERE MGR = 7839
ORDER BY DEPTNO ASC;

/*���� (CONCAT) 
1. JSSTU���̺��� ������ ������� ȣ���Ѵ�.
ȣ��� ���� ���� �� �̸��� �θ���.
��Ī�� '����� ȣ��'�� ����Ѵ�.(EX . 00�� XXX��! ����Ƿ� ���ּ���)

����1.�����͸� ��ĥ �� (1)CONCAT (2) ||
����2.��������� ���� ������� ȣ���Ѵ�.
*/
SELECT * FROM TAB;

--CONCAT ���
SELECT CONCAT(GROUPNO, CONCAT('��',CONCAT(STUNAME,'��! ����Ƿ� ���ּ���')))AS "����� ȣ��"
FROM JSSTU
WHERE GROUPNO = 6 
ORDER BY STUBIRTH ASC;

--|| ���
SELECT GROUPNO||'�� '||STUNAME||'��! ����Ƿ� ���ּ���'AS "����� ȣ��"
FROM JSSTU
WHERE GROUPNO = 6 
ORDER BY STUBIRTH;