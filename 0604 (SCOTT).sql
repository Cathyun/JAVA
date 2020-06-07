-- 계정에 있는 테이블 조회

SELECT * FROM TAB;

-- 테이블 조회
SELECT * FROM BONUS;
SELECT * FROM DEPT;
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

ALTER SESSION
SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

-- (1) 계급 (JOB) 종류 조회
-- 중복값 제거(DISTINCT)

SELECT DISTINCT JOB FROM EMP;

-- (2) 급여가 2000이상, 3000이하인
-- 사원(사원번호, 이름, 급여) 조회

SELECT EMPNO AS 사원번호, ENAME AS 이름, SAL AS 급여
FROM EMP
WHERE SAL>= 2000 AND SAL<= 3000; 

-- (3) 1981년 이후 입사한 사원 (사번, 이름, 입사일) 조회

SELECT EMPNO AS 사원번호, ENAME AS 이름, HIREDATE AS 입사일
FROM EMP
WHERE HIREDATE >= '1981.01.01';

-- (4) 이름이 S로 끝나는 사원의 모든 정보 조회
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

-- (5) 수당을 받지 않는 사원 (사원번호, 이름, 급여, 연봉(급여X12)) 조회

SELECT EMPNO AS 사원번호, ENAME AS 이름, SAL AS 급여 , (SAL * 12) AS "연봉"   -- 중간에 수식이 들어가면 ""로 구별해줘야함
FROM EMP
WHERE COMM IS NULL;

-- (6) 수당을 받는 사원 (사원번호, 이름, 급여, 수당, 연봉(급여X12+수당)) 조회

SELECT EMPNO AS 사원번호, ENAME AS 이름, SAL AS 급여 ,COMM AS 수당, SAL * 12 +COMM AS "연봉"   
FROM EMP
WHERE COMM IS NOT NULL;

-- (7) 30번 부서에서 근무하고
-- 직책이 SALESMAN인 사원(사번, 이름, 직책, 급여, 부서) 조회
SELECT EMPNO AS 사원번호, ENAME AS 이름, JOB AS 직책 ,SAL AS 급여, DEPTNO AS 부서
FROM EMP
WHERE DEPTNO = 30 AND JOB LIKE 'SALESMAN'; 

-- (8) 20, 30번 부서에서 근무하고 급여가 2000초과인 사원 모든 정보 조회
SELECT *
FROM EMP
WHERE DEPTNO IN(20,30) AND SAL >2000;
