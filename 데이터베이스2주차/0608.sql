/*
Date : 2020.06.08
Author : YOUHYUNSEO
Description :
Version : 1.0
*/
--(1) GROUP BY : 특정 컬럼  또는 데이터를 기준으로 데이터를 그룹으로 묶음
/*
   SELECT 
   FROM
   WHERE
   GROUP BY [그룹화할 COLUMN]을 지정 (여러개 가능)
   ORDER BY[정렬할 COLUMN];
*/

SELECT DEPTNO,AVG(SAL)
FROM  EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

--직책별로 인원수, 급여합계, 급여 평균을 구하시오
SELECT JOB, COUNT(JOB),SUM(SAL),ROUND(AVG(SAL))
FROM EMP
GROUP BY JOB

--인원이 많은 순으로 정렬
ORDER BY COUNT(*)DESC;

--(2)ROLLUP : 그룹화 데이터의 합계를 함께 출력
/*
  SELECT
  FROM 
  WHERE
  GROUP BY ROLLUP[COL_NAME]
*/
SELECT JOB, COUNT(*),SUM(SAL),ROUND(AVG(SAL))
FROM EMP
GROUP BY ROLLUP(JOB);

--(3) HAVING : GROUP BY절을 사용해서 
--            그룹화된 결과 중에 출력 그룹을 선별하는 조건식

/* 순서 잘기억하기!!
  SELECT
  FROM 
  WHERE -- HAVING조건식을 가져오기 전에 조건식을 성립
  GROUP BY
  HAVING[출력그룹을 제한하는 조건식] -- WHERE값 중에서 조건식에 맞는 값을 찾도록 한다.
  ORDER BY
  
*/

SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE SAL>1500
GROUP BY DEPTNO
HAVING DEPTNO>=20;
-- WHERE절 조건 다음에 HAVIMG절 조건

--DEPT확인
SELECT * FROM EMP
ORDER BY DEPTNO;

--Q1.EMP테이블을 이용해서 부서번호(DEPTNO),평균급여(AVG),최고 급여(MAX)
--최저 급여(MIN), 사원수(COUNT)를 출력
--단 평균 급여를 출력할 때 소숫점을 제외하고 각 부서 번호 별로 출력
SELECT DEPTNO AS 부서번호, ROUND(AVG(SAL))AS 평균급여, MAX(SAL)AS 최고급여, 
MIN(SAL) AS 최저급여, COUNT(*)
FROM EMP GROUP BY DEPTNO --부서번호별로 출력하여야하기 때문에 DEPTNO을 그룹화한다.
ORDER BY DEPTNO;

--Q2.같은 직급(JOB)에 종사하는 사원이 3명이상인 직급과 인원수를 출력
SELECT JOB,COUNT(*)
FROM EMP GROUP BY JOB -- GROUP BY로 JOB을 그룹화 한다.
HAVING COUNT(*)>= 3; -- HAVING을 사용해서 직급에 관한 조건식을 넣어준다.
--->>그룹화한 직급별로 인원수가 출력된다.

--Q3.사원들의 입사 연도를 기준으로 부서별로 몇명이 입사했는지 출력
SELECT TO_CHAR(HIREDATE,'YYYY')AS 입사연도,DEPTNO AS 부서번호,COUNT(*)AS 사원수
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY'), DEPTNO 
--같은 연도와 DEPTNO을 그룹화하여 연도별로 몇명 입사했는지 출력한다.
ORDER BY DEPTNO;

--Q4.추가 수당(COMM)을 받는 사원수와 받지 않는 사원수 출력
--COMM을 받으면 O,받지 않으면 X출력(NV2)
SELECT NVL2(COMM,'O','X')AS 수당여부, COUNT(*)AS 사원수 --NVL2로 COMM이 참일 경우, 거짓일 경우를 정한다.
FROM EMP
GROUP BY NVL2(COMM,'O','X'); --NLV2을 그룹화하여 출력한다. 
--NVL의 내용은 O와X로 나눠져있기 때문에 O와 X로 나눠서 출력되어진다.

--Q5.각부서의 입사 연도별 사원수, 최고 급여, 급여합계,평균 급여를 출력하고, 
--각부서별 소계와 총계를 출력하세요(ROLLUP)
SELECT DEPTNO AS 부서번호, TO_CHAR(HIREDATE,'YYYY') AS 입사년도, COUNT(*)AS 사원수,
MAX(SAL)AS 최고급여,SUM(SAL)AS 급여합계,TRUNC(AVG(SAL))AS 급여평균
FROM EMP
GROUP BY ROLLUP(DEPTNO,TO_CHAR(HIREDATE,'YYYY'));
--DEPT와 TO_CHAR(HIREDATE,'YYYY')을 그룹으로 묶어서 
--부서별로 총합을 출력할 수 있다.


--오후수업----------------------------------------------------------------
--(4)CONSTAINT(제약조건)
-- : 테이블의 특정 컬럼에 지정, 제약조건에 부합하지 않은 데이터는 저장불가
/*
- 무결성 제약 조건 : 데이터 무결성은 데이터 베이스에 저장된 데이터의 일관성과
                정확성을 지키는 것을 말한다. 
                일관성과 정확성을 잃어 버린 데이터 베이스는 정보로서의 가치에 심각한 문제가 있다.
1) 영역 무결성(Domain integtity)
 - 도메인 제약, 릴레이션 내의 튜플들아 각 속성의 도메인에 지정된 값만 가져야한다.
 
2) 객체 무결성(Entity interity)
 - 기본기 제약, 릴레이션에 기본키를 지정하고, 그에 따른 무결성 원칙
   기본기는 null을 가져서는 안되고, 릴레이션 내에 오직 하나의 값만 존재
   
3) 참조 무결성(Referential integrity)
 - 외래키(FK)제약, 릴레이션 간의 참조 관계를 선언하는 제약 조건
 - 일반적으로 참조되는 릴레이션을 부모 릴레이션
   침조하는 릴레이션을 자식 릴레이션이라고 한다.
*/

/* CONSTRAINT 함수
1. RPIMARY KEY(기본키)
 : 하나의 케이블에서 레코드를 구분 지을 수 있는 특정 컬럼의 유일값
 : NOT NULL + UNIQUE
 EX)학생번호(SSN), 주민번호(STU_CODE), 핸드폰번호(PHONE), NAVER ID
 
2. NOT NULL 
 : 하나의 테이블에서 특정 컬럼의 값을 반드시 입력 해야 하는 제약
 : NULL값이 허용되지 않는다.

3. UNIQUE
 : 하나의 테이블에서 특정 컬럼의 값이 중복되는 것을 방지하는 제약
 : 단, NULL은 무제한 허용
 
4. DEFAULT
 : 초기값, 컬럼의 입력되는 데이터가 없더라고 미리 약속된 값으로 자동 입력하는 제약

5. CHECK
 : 특정 범위의 데이터만 입력 가능하도록 하는 제약 
  ex) JS_PASSWORD  NUMBER(4)
  숫자를 3자리 이상 입력, 제약 조건 CHECK
*/

--본인 계정
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

--(2)제약 조건 이름 정하기
--(TABLE_NAME)약자_(COULMN_NAME)약자_CONSTRAINT_TYPE
--JS_CD_PK : JS_MEMBERS 테이블의 JS_CODE 컬럼이 PK다./9
--ex) CONSTRAINT JS_CD_PK PRIMARY KEY(JS_CODE)

--(3)제약 조건 수정하기
/*
ALTER TABLE JS_MEMBERS
MODIFY CONSTRAINT JS_CD_PK
PRIMARY KEY(JS_NAME);
*/
--(4)제약 조건 삭제하기
ALTER TABLE JS_MEMBERS 
DROP CONSTRAINT JS_CD_PK;

--(1)JS_CODE를 기본기(PK)지정
ALTER TABLE JS_MEMBERS ADD CONSTRAINT JS_CD_PK 
PRIMARY KEY(JS_CODE);
/*
(1)JS_CODE를 기본기(PK)지정
ALTER TABLE JS_MEMBERS ADD CONSTRAINT JS_CD_PK 
PRIMARY KEY(JS_CODE);

(2)기본기(PK)지정2
(TABLE_NAME)약자_(COULMN_NAME)약자_CONSTRAINT_TYPE
--JS_CD_PK : JS_MEMBERS 테이블의 JS_CODE 컬럼이 PK다./9
--ex) CONSTRAINT JS_CD_PK PRIMARY KEY(JS_CODE)

(3)TABLE에 PK지정
*/


/*
ALTER TABLE [TAB_NAME] ADD CONSTRAINT [CONST_NAME]PRIMARY KEY([CODE_NAME]);
*/

SELECT * FROM USER_CONSTRAINTS;


-- OWNER :제약 조건 소유 계정
-- CONSTRAINT_NAME : 제약 조건 이름(자동 지정 하기도함)
-- CONSTRAINT_TYPE :
--     C : CHCKC, NOT NULL
--     U : UNIQUE
--     P : PRIMARY KEY(기본키)
--     R : FORREIN KEY 
-- TABLE_NAME : 제약 조건을 지정한 테이블

INSERT INTO JS_MEMBERS 
VALUES('JS001','유현서',1111,'01077777777');

INSERT INTO JS_MEMBERS 
VALUES('JS001','이재홍',1111,'010');
--PK중 UNIQUE 조건 위배로 삽입 불가
--값을 처음 조건식과 같지 않아야한다.

INSERT INTO JS_MEMBERS(JS_CODE, JS_PASSWORD, JS_PHONE)
VALUES('JS077',0000,'01077755250');
--PK중 NOT NULL 조건 위배로 삽입 불가
--null값이 없어야 한다.

--(2)NOT NULL
--NOT NULL 지정 방법(1)

DROP TABLE JS_MEMBERS;

 CREATE TABLE JS_MEMBERS(
    JS_CODE   NVARCHAR2(5),
    JS_NAME   NVARCHAR2(5),
    JS_PASSWORD NUMBER(4),
    JS_PHONE NVARCHAR2(11)
); 

ALTER TABLE JS_MEMBERS
MODIFY JS_PASSWORD NOT NULL;

--NOT NULL 지정 방법(2)
 CREATE TABLE JS_MEMBERS(
    JS_CODE   NVARCHAR2(5),
    JS_NAME   NVARCHAR2(5),
    JS_PASSWORD NUMBER(4) NOT NULL,
    JS_PHONE NVARCHAR2(11)
); 

SELECT * FROM USER_CONSTRAINTS;

INSERT INTO JS_MEMBERS VALUES('JS001','유현서',1111,'01077777777');

INSERT INTO JS_MEMBERS (JS_CODE,JS_NAME,JS_PHONE)
VALUES('JS001','이재홍','01022222222');

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

INSERT INTO JS_MEMBERS VALUES('JS001','유현서',1234,'0107');

INSERT INTO JS_MEMBERS VALUES('JS002','이재홍',1111,'0107');
--UNIQUE위배로 삽입 불가

--(4)DEFAULT : 제약 조건

CREATE TABLE JS_MEMBERS(
      JS_CODE NVARCHAR2(5),
      JS_NAME NVARCHAR2(5),
      JS_PASSWORD NUMBER(4) DEFAULT 1234,
      JS_PHONE NVARCHAR2(11)
);

INSERT INTO JS_MEMBERS(JS_CODE) 
VALUES('JS001'); -- 코드만 넣어도 DEAULT로 넣은 비밀번호가 출력

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS002',1111);

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS003',DEFAULT);--DEFAULT값으로 설정된 것이 출력

INSERT INTO JS_MEMBERS(JS_CODE,JS_PASSWORD) 
VALUES('JS003',NULL);--JS_PASSWORD를 NULL값으로 출력

SELECT * FROM JS_MEMBERS;

--(5)CHECK 제약 조건

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
--CHECKC조건의 부합되지 않아 성립불가
SELECT * FROM JS_MEMBERS;

--여러가지 제약 조건
-- 여러 가지 제약 조건을 한 번에 삽입할 수 있다.
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


---------실습-----------------------------------------------
DROP TABLE JMEMBERS;

--JMEMBERS 테이블 생성
CREATE TABLE JMEMBERS(
   J_ID   NVARCHAR2(20),
   J_NAME NVARCHAR2(10),
   J_BIRTH DATE
);

--제약 조건 추가(PK,기본키)
 ALTER TABLE JMEMBERS ADD CONSTRAINT J_ID_PK PRIMARY KEY(J_ID);
 
 --데이터 삽입
 INSERT INTO JMEMBERS VALUES('J001','유현서', '19950111');
 
 INSERT INTO JMEMBERS VALUES('J001','양기두','19990911');
 --ORA-00001(unique 오류 : 중복X)
 
 INSERT INTO JMEMBERS VALUES('J002','양기두','19990511');
 
 SELECT*FROM JMEMBERS;

--배송지 테이블 생성
CREATE TABLE ADDLISTS(
  A_JID NVARCHAR2(20),
  A_ADDR NVARCHAR2(100)
);

--제약 조건 추가(FK,외래키)
ALTER TABLE ADDLISTS
ADD CONSTRAINT A_JID_FK FOREIGN KEY(A_JID)
REFERENCES JMEMBERS(J_ID); -- J_ID와 A_JID의 데이터 타입과 크기가 같아야 한다.

INSERT INTO ADDLISTS VALUES('J001','인천');

INSERT INTO ADDLISTS VALUES('J001','부천');

INSERT INTO ADDLISTS VALUES('J001','시흥');

INSERT INTO ADDLISTS VALUES('J002','시흥');

INSERT INTO ADDLISTS VALUES('J003','시흥');
--PK에서 JS001,JS002을 성립했으므로 JS003이 없기 때문에 JS003은 성립 불가
--parent key not found : 부모키가 없다.

SELECT * FROM ADDLISTS; 

DROP TABLE JMEMBERS;


--<팀과제>--
/*
  주문 시스템 설계
  
  ENTITY 
  1. SELLER(판매자)
  - 사업자 등록 번호, 상호, 대표자
  
  2. GOODS(상품)
  - 상품 이름, 가격, 재고
  
  3. BUYER(구매자)
  - 아이디, 비밀번호, 이름, 연락처
  
  - 각각 알맞은 제약 조건 설정하기
  - 설정한 테이블에 맞춰 데이터 삽입하기

*/












