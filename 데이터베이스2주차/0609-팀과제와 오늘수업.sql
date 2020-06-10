--팀과제
/*
  주문 시스템 설계
  
  ENTITY 
  1. SELLER(판매자)
  - 사업자 등록 번호, 상호, 대표자
  
  2. GOODS(상품)
  - 상품코드, 상품 이름, 가격, 재고
  
  3. BUYER(구매자)
  - 아이디, 비밀번호, 이름, 연락처
  
  - 각각 알맞은 제약 조건 설정하기
  - 설정한 테이블에 맞춰 데이터 삽입하기

*/
DROP TABLE SELLER;
DROP TABLE GOODS;
DROP TABLE BUYER;
    
    CREATE TABLE SELLER(
    SE_CODE NVARCHAR2(20),
    SE_NUM NVARCHAR2(20),
    SE_NAME NVARCHAR2(20),
    CEO NVARCHAR2(5) DEFAULT '이재홍',
    CONSTRAINT SE_CO_PK PRIMARY KEY(SE_CODE),
    CONSTRAINT SE_CO_FK FOREIGN KEY(SE_CODE) REFERENCES GOODS(GD_CODE)
);

SELECT * FROM SELLER; --★★★★★★

INSERT INTO SELLER VALUES ('01','012-34-56789', 'LONGCAT', DEFAULT);
INSERT INTO SELLER VALUES ('02','012-34-56789', 'LONGCAT','유현서');
INSERT INTO SELLER VALUES ('03','012-34-56789', 'LONGCAT','오형록');
-----------------------------------------------------
    CREATE TABLE GOODS(
    GD_CODE NVARCHAR2(20) PRIMARY KEY,
    GO_NAME NVARCHAR2(20),
    PRICE NVARCHAR2(20),
    STOCK NVARCHAR2(20)
);

DROP TABLE GOODS;

SELECT * FROM GOODS; --★★★★★★
INSERT INTO GOODS
VALUES ('01','로얄캐닌', '33000원', '20개');
INSERT INTO GOODS
VALUES ('02','아메리칸솔루션', '20000원', '10개');
INSERT INTO GOODS
VALUES ('03','조립식 캣타워', '50000원', '30개');

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

SELECT * FROM BUYER; --★★★★★★
INSERT INTO BUYER VALUES ('01','MINJ', 1234, '서민재','7954');
INSERT INTO BUYER VALUES ('02','SEOO', 1234, '유현서','1234');
INSERT INTO BUYER VALUES ('03','JH', DEFAULT , '이재홍','4321');
INSERT INTO BUYER VALUES (NULL,'OHR', 5689 , '오형록','5555');

 -- SELLER 테이블, BUYER 테이블 GD_CODE FK키 지정
 
   ALTER TABLE BUYER
    ADD CONSTRAINT BY_CO_FK FOREIGN KEY (BY_CODE)
    REFERENCES GOODS(GD_CODE);
    
       ALTER TABLE SELLER
    ADD CONSTRAINT SE_CO_FK FOREIGN KEY (SE_CODE)
    REFERENCES GOODS(GD_CODE);

---------------6/9 오늘의 수업-------------------------------
/*
 ※ 조인(JOIN) : 면접 단골 문제!!!
   : 두 개 이상의 테이블을 연결하여 하나의 테이블처럼 사용
*/

SELECT * FROM GOODS;
SELECT * FROM GOODS,SELLER; -- GOODS*SELLER로 출력이 되어진다.

--(1)INNER조인(EUQL JOIN - 등가조인) : 두 개 테이블의 열 값이 같을 때
SELECT GO_NAME,CEO FROM GOODS,SELLER
WHERE GOODS.GD_CODE = SELLER.SE_CODE;

--(2)별칭을 이용해 표현하기  
SELECT GO_NAME,CEO FROM GOODS GO,SELLER SE --별칭하고자 하는 TABLE이름 뒤에 별칭을 적어줌
WHERE GO.GD_CODE = SE.SE_CODE;--별칭을 사용하여 WHERE절에도 적용!!

--Q1. 상품(GOODS)을 판매 하는 판매자(SELLER), 구입하는 사람(BUYER) 조회
SELECT GO_NAME AS 상품이름, CEO AS 판매자,BU_NAME AS 구매자 
FROM GOODS G, SELLER S,BUYER B
WHERE G.GD_CODE = S.SE_CODE AND G.GD_CODE = B.BU_CODE;

--Q2. SCOTT계정을 사용해서 DEPT테이블을 조회하고, 
--       EMP테이블과 JOIN해서 사원이름, 부서번호, 부서 위치를 조회
SELECT ENAME AS 사원이름, D.DEPTNO AS 부서번호,LOC AS 부서위치
                         --부서번호를 'DEPTNO'으로 하면 오류가 난다.
                         --어디서 가지고 왔는지 알아야하며
                         --별칭으로 된 것으로 활용하여 'D.DEPT'로 작성
FROM DEPT D, EMP E
WHERE D.DEPTNO = E.DEPTNO;

SELECT * FROM DEPT;

--(3)비등가조인(NON-EQUL JOIN) : 등가조인 외에 방식
--            : 자주 사용하는 편은 아니지만, 조건이 특정 열의 일치 여부를 검사하는 방식

SELECT * FROM TAB;
--BONUS,DEPT,EMP,SALGRADE

SELECT * FROM SALGRADE;

--1급 : LOSAL 700      HISAL 1200
--2급 : LOSAL 1201      HISAL 1400
--3급 : LOSAL 3001     HISAL 9999

--예제.
SELECT * FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

--(4)자체조인(SELF JOIN) : 하나의 테이블을 여러개 테이블처럼 활용하는 방식
SELECT * FROM EMP;

SELECT E.ENAME AS 직원이름, E2.ENAME AS 상사이름 FROM EMP E, EMP E2 --테이블 이름을 두 개 각각 다른 별칭을 사용해서 별칭
WHERE E.MGR = E2.EMPNO; --처음 EMP의 MGR이 두번째 EMP의 EMPNO번호가 되어진다. 
--13명 검색

--(5)외부조인(OUTER JOIN) : 조인 조건을 만족하지 않는 데이터를 처리하기 위한 것으로
-- INNER JOIN 이 두 테이블에 있는 일치하는 값만 가져오는 것에 비해
-- OUTER JOIN은 어느 한쪽의 데이터를 모두 가져온다.
-- : JOIN 기준 열의 NULL을 처리하는 것을 목적으로 사용
-- : LEET OUTER JOIN, RIGTH OUTER JOIN, FULL OUTER JOIN

-- LEET OUTER JOIN
/* 첫번째 방법
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]LEFT OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/
SELECT * FROM EMP E1 LEFT OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

/* 두번째 방법
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1],[TAB_NAME2]
  WHERE[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME](+)
*/

SELECT * FROM EMP E1,EMP E2
WHERE E1.MGR = E2.EMPNO(+);


-- RIGHT OUTER JOIN
/* 첫번째 방법
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]RIGHT OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/
SELECT * FROM EMP E1 RIGHT OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

/* 두번째 방법
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1],[TAB_NAME2]
  WHERE[TAB_NAME1].[COL_NAME](+)=[TAB2_NAME],[COL_NAME];
*/

SELECT * FROM EMP E1,EMP E2
WHERE E1.MGR(+) = E2.EMPNO;

-- FULL OUTER JOIN
/* 첫번째 방법
  SELECT [TAB_NAME].[COL_NAME].[TAB_NAME2].[COL_NAME]....
  FROM[TAB_NAME1]FULL OUTER JOIN[TAB_NAME2]
  ON[TAB_NAME1].[COL_NAME]=[TAB2_NAME],[COL_NAME]
*/

SELECT * FROM EMP E1 FULL OUTER JOIN EMP E2
ON E1.MGR = E2.EMPNO;

--(6)서브쿼리 : SQL문을 실행하는제 필요한 데이터를 추가로 조회하기 위해
--            SQL문 내부에서 SELECT문을 사용

/*
 - 서브 쿼리의 특징
 1. 서브 쿼리는 연산자와 같은 비교 또는 조회 대상의 오른쪽에 놓이며
    괄호()로 묶어서 사용한다.
 2. 특수한 몇명 경우를 제외하고 서브퀴리는 ORDER BY절을 사용할 수 없다.(웬만하면 잘 사용 X)
 3. 서브퀴리의 SELECT 절에 명시한 열(SAL)은 메인퀴리의 비교 대상(왼쪽 SAL)과
    같은 자료형과 같은 개수로 지정해야한다.
*/


--Q1.사원 이름이 JONES인 사원의 급여를 출력
SELECT SAL FROM EMP
WHERE ENAME = 'JONES';

--Q2.급여가 2975보다 높은 급여를 받는 사원정보 출력
SELECT * FROM EMP
WHERE SAL>2975;

--Q3.JONES의 급여보다 높은 급여를 받는 사원정보 출력(Q1+Q2)--서브쿼리
SELECT * FROM EMP
WHERE SAL>(SELECT SAL 
           FROM EMP
           WHERE ENAME = 'JONES');


--서브퀴리 안에 함수를 사용한 경우
--Q. 받는 급여가 평균 급여이상인 사람의 정보를 검색하시오.
SELECT * FROM EMP
WHERE SAL>=(SELECT AVG(SAL) FROM EMP);
--서브쿼리 IN연산자 : 메인 쿼리의 데이커가 서브 쿼리의 결과 중 
                   --하나라도 일치하는 데이터가 있다면 TURE
--Q.각 부서별 최고 급여와 동일 급여를 받는 사원
SELECT * FROM EMP 
WHERE SAL IN (SELECT MAX(SAL)FROM EMP GROUP BY DEPTNO);


















