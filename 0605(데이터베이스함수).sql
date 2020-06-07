/*
Date : 2020.06.05
Author : YOUHYUNSEO
Description :데이터베이스 5일차 함수
Version : 1.0
*/

--(1)교집합과 합집합

/*
(1) A집합 : 4조인 사람
(2) B집합 : 성인 '이'씨 인 사람
*/
--A집합 : 4명
SELECT * FROM JSSTU
WHERE GROUPNO = 4;

--B집합 : 5명
SELECT * FROM JSSTU
WHERE STUNAME LIKE '이%'
ORDER BY STUNAME;

--INTERSECT(교집합) : 결과값이 같은 데이터만 출력

SELECT * FROM JSSTU WHERE GROUPNO = 4
INTERSECT 
SELECT * FROM JSSTU WHERE STUNAME LIKE '이%';

--UNION(합집합) : 모든 결과 데이터 출력

SELECT * FROM JSSTU WHERE GROUPNO = 4
UNION 
SELECT * FROM JSSTU WHERE STUNAME LIKE '이%';

--MINUS(차집합) : 먼저 작성한  SELECT 문에서 나중에 작성한 SELECT문의 데이터를 빼고 출력

SELECT * FROM JSSTU WHERE GROUPNO = 4
MINUS 
SELECT * FROM JSSTU WHERE STUNAME LIKE '이%';



--(2)공백제거 : TRIM(), LTRIM(), RTRIM()
SELECT TRIM(' ICIA교육원 ') AS TRIM,
       LTRIM(' ICIA교육원 ')AS LTRIM,
       RTRIM (' ICIA교육원 ')AS RTRIM
FROM DUAL;       

--(3)절대값 : ABS( )
SELECT ABS(5) AS "절대값 5", ABS(-10) AS "절대값 -10"
FROM DUAL;

--(4)반올림: ROUND()
SELECT ROUND(1324.5678) AS ROUND,
       ROUND(1324.5678 ,0)AS ROUND_0, -- 
       ROUND(1324.5678, 1)AS ROUND_1,
       ROUND(1324.5678, 2)AS ROUND_2,
       ROUND(1324.5678, -1)AS ROUND_MINUS1,
       ROUND(1324.5678, -2)AS ROUND_MINUS2
FROM DUAL;       
       
--내전화번호로 반올림 확인해보기
--0,1,2,3,-1,-2,-3
SELECT ROUND(7720.4452) AS ROUND,
       ROUND(7720.4452, 0)AS ROUND_0,
       ROUND(7720.4452, 1)AS ROUND_1,
       ROUND(7720.4452, 2)AS ROUND_2,
       ROUND(7720.4452, -1)AS ROUND_MINUS1,
       ROUND(7720.4452, -2)AS ROUND_MINUS2
FROM DUAL;


--(5)버림 : TRUNC
--정한 숫자에서 소수점 이후의 자릿수를 적으면 그이후의 자릿수를 제외한 
--값이 출력되어진다.
SELECT TRUNC(1234.4452) AS TRUNC,
       TRUNC(1234.4452, 0)AS TRUNC_0,
       TRUNC(1234.4452, 1)AS TRUNC_1,
       TRUNC(1234.4452, 2)AS TRUNC_2,
       TRUNC(1234.4452, -1)AS TRUNC_MINUS1,
       TRUNC(1234.4452, -2)AS TRUNC_MINUS2
FROM DUAL;

--(6)가까운 정수 찾기 :CEIL(본인보다 큰), FLOOR(본인보다 작은)
SELECT CEIL(3.14), --4
       FLOOR(3.14),--3
       CEIL(-3.14),--(-3)
       FLOOR(-3.14)--(-4)
FROM DUAL;       

--(7)나머지 값 구하기 : MOD(NUM1,NUM2)
--NUM1&NUM2
SELECT FLOOR(15/6) AS "15/6",MOD(15,6)AS "15%6"FROM DUAL;

--1년은 몆주로 되어 있는지 알아해보시오
SELECT CEIL(365/7) AS "1년에 몆주"
FROM DUAL;

--(8)날짜 관련 함수 
--DATE DATA + 숫자 : 숫자 만큼 이후 날짜
--DATE DATA - 숫자 : 숫자 만큼 이전 날짜
--DATE DATA1 + DATE DATA2 : 두 날짜간 일수 차이
--DATE DATA1 + DATE DATA2 : 연산 불가능

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';
--오늘,내일,어제 날짜 구하기
SELECT 
     SYSDATE AS NOW,
     SYSDATE +1 AS TOMORROW,
     SYSDATE -1 AS YESTERDAY
FROM DUAL;

--일주일전,일주일 후 구하기
SELECT SYSDATE AS NOW,
SYSDATE-7 AS "일주일 전",
SYSDATE+7 AS "일주일 후"
FROM DUAL;
     
    
--(9)개월 수 구하기 : MOMTHS_BETWEEN(나중날짜, 처음날짜)
SELECT CEIL(MONTHS_BETWEEN('2020/10/23','2020/05/01')) AS "개월 수"
FROM DUAL;

--(10)개월 수 더하기 : ADD_MONTHS(개월 수 더하고자하는 날짜,개월 수)
SELECT ADD_MONTHS(SYSDATE,5)AS "5개월 후"
FROM DUAL;
-----------------------------------------------------------------
--(11)다가올 요일에 해당하는 날짜 :NEXT_DAY(날짜,요일)
SELECT NEXT_DAY(SYSDATE,'일요일') AS "돌아오는 일요일"
FROM DUAL;

--(12)이번달 /특정달의 마지막 일 수 :LAST_DAY(날짜)
SELECT LAST_DAY(SYSDATE) AS "6월 마지막날"
FROM DUAL;

--2020년 2월 마지막날을 출력!
--SYSDATE의 형식 '2020/06/05'
SELECT LAST_DAY('2020/02/01')AS"2020년 2월 마지막날"
FROM DUAL;

--(13)
--    1) TO_CHAR(날짜,날짜 형식):숫자 또는 날짜를 문자데이터로 전환
--    JAVA ex)String.valueOf(100)

--    2) TO_NUMBER :문자를 숫자로
--    JAVA ex)integer.parseInt("100") 

--    3)TO_DATE : 문자를 숫자로

SELECT TO_CHAR(SYSDATE,'MM-DD DAY')FROM DUAL;

--DATE FORMAT(날짜 형식)
--TO CHAR(SYSDATE, 'YYYYMMDD') 20200605
SELECT TO_CHAR(SYSDATE,'YYYYMMDD') AS "YYYYMMDD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY-MM-DD') 2020-06-05
SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD') AS "YYYY-MM-DD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY/MM/DD')2020/06/05
SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD') AS "YYYY/MM/DD" FROM DUAL;

--TO_CHAR(SYSDATE,'YYYY')2020
SELECT TO_CHAR(SYSDATE,'YYYY') AS "YYYY" FROM DUAL;

--TO_CHAR(SYSDATE,'YY')20: 뒤에 YY
SELECT TO_CHAR(SYSDATE,'YY') AS "YY" FROM DUAL;

--TO_CHAR(SYSDATE,'MM')06
SELECT TO_CHAR(SYSDATE,'MM') AS "MM" FROM DUAL;

--TO_CHAR(SYSDATE,'MON')6월
SELECT TO_CHAR(SYSDATE,'MON') AS "MON" FROM DUAL;

--TO_CHAR(SYSDATE,'D')6 : 일주일 기준 일수 (일요일 = 1)
SELECT TO_CHAR(SYSDATE,'D') AS "D" FROM DUAL;

--TO_CHAR(SYSDATE,'DD')05 
SELECT TO_CHAR(SYSDATE,'DD') AS "DD" FROM DUAL;

--TO_CHAR(SYSDATE,'DDD')157 : 1년 기준 일수 
SELECT TO_CHAR(SYSDATE,'DDD') AS "DDD" FROM DUAL;

--TO_CHAR(SYSDATE,'DAY')금요일
SELECT TO_CHAR(SYSDATE,'DAY') AS "DAY" FROM DUAL;

--TO_CHAR(SYSDATE,'DY')금
SELECT TO_CHAR(SYSDATE,'DY') AS "DY" FROM DUAL;

--TO_CHAR(SYSDATE,'WW')23 : 1년 기준 수치
SELECT TO_CHAR(SYSDATE,'WW') AS "WW" FROM DUAL;

--TO_CHAR(SYSDATE,'W')1 : 한달 기준 수치
SELECT TO_CHAR(SYSDATE,'W') AS "W" FROM DUAL;

--TO_CHAR(SYSDATE,'DL')2020년 6월5일 금요일 : 해당 날짜 형식
SELECT TO_CHAR(SYSDATE,'DL') AS "DL" FROM DUAL;

--시간 형식TO_CHAR(날짜, 시간 형식)
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD HH24:MI:SS';
SELECT SYSDATE FROM DUAL; --현재

--TO_CHAR(SYSDATE, 'AM') -- 오전
SELECT TO_CHAR(SYSDATE, 'AM') FROM DUAL;
--TO_CHAR(SYSDATE, 'PM')--오후
SELECT TO_CHAR(SYSDATE,'PM') FROM DUAL;
--TO_CHAR(SYSDATE, 'HH')--11 // 오후 1시 이후 01시
SELECT TO_CHAR(SYSDATE,'HH') FROM DUAL;
--TO_CHAR(SYSDATE, 'HH24')--11 //오후1시 : 13시
SELECT TO_CHAR(SYSDATE,'HH24') FROM DUAL;
--TO_CHAR(SYSDATE, 'MI')--38
SELECT TO_CHAR(SYSDATE,'MI') FROM DUAL;
--TO_CHAR(SYSDATE, 'SS')--42
SELECT TO_CHAR(SYSDATE,'SS') FROM DUAL;

--오전 11:42:14 출력(SYSDATE)
SELECT TO_CHAR(SYSDATE,'AM HH24 : MI: SS') FROM DUAL;

--(14)세기
--TO_CHAR(SYSDATE,'CC')--21세기
--TO_CHAR(SYSDATE,'BC')--서기

SELECT TO_CHAR(SYSDATE,'CC')FROM DUAL;

SELECT TO_CHAR(SYSDATE,'BC YYYY')FROM DUAL;

--(15)NULL 처리 함수 : NVL, NLV2
--        NVL([COL_NAME],0):컬럼에 데이터가 NULL일 경우 0으로 바뀐다.
--        NVL([COL_NAME],'NULL값이 아닐 경우','NULL일 경우')

--AB테이블 생성
CREATE TABLE AB(
   ABNAME NVARCHAR2(10),
   ABAGE NUMBER(5),
   ABMERRY NVARCHAR2(5)
);
--데이터 삽입
INSERT INTO AB(ABNAME)
VALUES('YOUHYUN');

INSERT INTO AB
VALUES('YOU',26,'X');

--AB테이블 조회
SELECT * FROM AB;

SELECT ABNAME, NVL(ABAGE,999)AS "나이 NULL 여부",ABMERRY FROM AB;

SELECT ABNAME, 
NVL2(ABAGE,111,222),
NVL2(ABMERRY,'NULL 아닐 때 호출','NULL일 때 호출')
FROM AB;

--(16)SEITCH문 : DECODE(호출할COULMN,조건,조건이 참일때 나타는 것)
SELECT ENAME, DEPTNO,
       DECODE(DEPTNO,10,'인사팀',
                    20,'영업팀',
                    30,'홍보팀')AS "담당부서"
FROM EMP
ORDER BY DEPTNO;
/*
  SWITCH(DEPTNO)
     CASE 10: 인사팀
     CASE 20: 영업팀
     CASE 30: 홍보팀
*/
--(17)IF~ELSE : CASE~WHEN
SELECT ENAME,DEPTNO,
   CASE 
      WHEN DEPTNO = 10 THEN '인사팀'
      WHEN DEPTNO = 20 THEN '영업팀'
      WHEN DEPTNO = 30 THEN '연구팀'
   END AS 담당부서
FROM EMP
ORDER BY DEPTNO;

--(18)그룹화 함수
--SUM() : 지정한 컬럼 데이터의 합
--AVG() : 지정한 컬럼 데이터의 평균
--COUNT() : 지정한 컬럼 데이터의 갯수
--MAX() : 지정한 컬럼 데이터의 최댓값
--MIN() : 지정한 컬럼 데이터의 최솟값

--SUM(SAL) : ALL이 생략되어 있음
--SUM(DISTINCT(SAL)) : 중복값을 제거한 급여의 합계
SELECT SUM(SAL) AS 급여합계,SUM(DISTINCT(SAL))AS "중복제거 급여합계",
      SUM(ALL(SAL))AS "급여합계(ALL)"
FROM EMP;


--예제)부서가 20번인 사람이 몇명인지, 그들의 급여합계와 평균급여를 조회하고,
--가장많은급여를 받은 사람과 가장 적은 급여를 받는 사람을 조회하시오
--(SELECT 1개 사용)
SELECT  
       COUNT(ENAME) AS "인원수",SUM(SAL)AS 급여합계, AVG(SAL)AS 급여평균,  
       MIN(SAL)AS "최저급여", MAX(SAL) AS "최고급여"
FROM EMP
WHERE DEPTNO = 20;

/*MAX = FORD,SCOTT
  MIN = SMITH*/
  
SELECT ENAME || SAL FROM EMP
WHERE DEPTNO = 20
ORDER BY ENAME DESC;



















