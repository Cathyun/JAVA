
--<������>--
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
    B_NUM NVARCHAR2(20),
    S_NAME NVARCHAR2(20),
    CEO NVARCHAR2(5) DEFAULT '����ȫ',
    CONSTRAINT SE_CO_PK PRIMARY KEY(SE_CODE),
    CONSTRAINT SE_CO_FK FOREIGN KEY(SE_CODE) REFERENCES GOODS(GD_CODE)
);

SELECT * FROM SELLER; --�ڡڡڡڡڡ�
INSERT INTO SELLER VALUES ('01','012-34-56789', 'LONGCAT', DEFAULT);
INSERT INTO SELLER VALUES ('02','012-34-56789', 'LONGCAT','������');
-----------------------------------------------------------------------

    CREATE TABLE GOODS(
    GD_CODE NVARCHAR2(10),
    GO_NAME NVARCHAR2(20),
    GD_PRICE NVARCHAR2(20),
    GD_STOCK NVARCHAR2(20),  
    CONSTRAINT GO_GD_PK PRIMARY KEY(GD_CODE)
);

SELECT * FROM GOODS; --�ڡڡڡڡڡ�

INSERT INTO GOODS VALUES ('01','�ξ�ĳ��', '33000��', '20��');
INSERT INTO GOODS VALUES ('02','�Ƹ޸�ĭ�ַ��', '20000��', '10��');
INSERT INTO GOODS VALUES ('03','������ ĹŸ��', '50000��', '30��');

----------------------------------------------------------

  CREATE TABLE BUYER(
    B_CODE NVARCHAR2(20),
    B_ID NVARCHAR2(20)PRIMARY KEY,
    B_PW NUMBER(4) DEFAULT 1234,
    B_NAME NVARCHAR2(20) NOT NULL,
    B_PHNOE NVARCHAR2(20) NOT NULL,
    
    CONSTRAINT JS_PS_CK CHECK(LENGTH(B_PW) =4),
    CONSTRAINT BU_CO_PK PRIMARY KEY(B_CODE),
    CONSTRAINT BU_CD_FK FOREIGN KEY(B_CODE) REFERENCES GOODS(GD_CODE)
);

SELECT * FROM BUYER; --�ڡڡڡڡڡ�

INSERT INTO BUYER VALUES ('01','MINJ',1234, '������','7954');
INSERT INTO BUYER VALUES ('02','SEOO',1234, '������','1234');
INSERT INTO BUYER VALUES ('03','JH', DEFAULT , '����ȫ','4321');
INSERT INTO BUYER VALUES (NULL,'OHR',5689, '������','5555');
--��ǰ�� ���ٴ� ��

--��ǰ�� ��Ÿ���� GO_CODE
--SELLER ���̺�, BUYER ���̺� GO_CODE_FKŰ ����
--BUYER ���̺�
 ALTER TABLE BUYER  ADD CONSTRAINT BY_CODE_FK FOREIGN KEY(B_CODE)
 REFERENCES GOODS(GD_CODE);
 
--SELLER ���̺�
 ALTER TABLE SELLER  ADD CONSTRAINT SE_CODE_FK FOREIGN KEY(SE_CODE)
 REFERENCES GOODS(GD_CODE);









