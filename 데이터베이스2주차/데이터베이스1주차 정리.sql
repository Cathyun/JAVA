/*
(1)데이터베이스의 정의와 특징

1)데이터 베이스의 정의: ISOS
1) 특정 조직의 여러 사용자가 공유하여 사용할 수 있도록 통합해서 저장한 운영 데이터의 집합

--STU TABLE 생성
CREATE TABLE STUDENT(STU_NAME NVARCHAR2(5));

--STU_NAME 값 입력
INSERT INTO VALUES('유현서');

--값 저장
COMMIT;

--STUDENT TABLE에 관한 권한 부여
GRANT ALL ON STUDENT TO JS001(계정이름);

--서버가 권한을 부여한 계정으로 접속해야한다!
SELECT * FROM (서버계정).STUDENT;
SELECT * FROM SYS.STUDENT;

-->> 서버가 잠금 방법
--ALTER USER [USER ID] ACCOUNT LOCK
ALTER USER JS001 ACCOUNT LOCK;
ALTER USER JS002 ACCOUNT LOCK;
ALTER USER JS003 ACCOUNT LOCK;

-->>서버가 잠금 해제하는 방법
--ALTER USER [USER ID] ACCOUNT UNLOCK
ALTER USER JS001 ACCOUNT UNLOCK;
ALTER USER JS002 ACCOUNT UNLOCK;
ALTER USER JS003 ACCOUNT UNLOCK;

--사용자 계정 비밀번호 바꾸는 방법
--->>ALTER USER JS001 INDENTIFIED BY "새로운 비밀번호";
ALTER USER JS001 INDENTIFIED BY "1234";
ALTER USER JS001 INDENTIFIED BY "4567";
ALTER USER JS001 INDENTIFIED BY "7894";

--테이블 생성
(테이블)CREATE TABLE [TABLE_NAME](
     (열)COL1_NAME  COL1_TYPE  ,
        COL2_NAME  COL2_TYPE  ,
        COLN_NAME  COLN_TYPE  
);

--데이터값 넣기(데이터 추가)
--이름,나이,날짜
 /*INSERT INTO [TABLE_NAME](COL1,COL2,....COLN)-->>괄호와 나머지 데이터들을 지워도 상관없다!
 VALUES(COL1data, COL2data,......COLNdata,)
 */ 

/*
2)데이터베이스의 특징
1.실시간 접근성
2.동시공유
3.내용기반참조
4.계속적인 변화

3)데이터 베이스 사용자 : DBA
-응용프로그래머
-사용자

4)테이블 이름 생성 규칙 & 열 이름 생성 규칙
1.이름 생성 시 문자로 시작해야된다.(한글 가능, 숫자 불가능)
2.30byte이하여여한다.(영어는 30자, 한글은 15자 이하)
3.이름은 중복될 수 없다.
4.영문자(한글가능), 숫자와 특수문자 사용가능
5.SQL키워드는 테이블 이름으로 사용할 수 없다.(CREATE,SELECT 등등)

5)자료형 ->>DATE를 제외한 자료형은 길이를 정해주어야한다.
1.★NVARCHAR : 가장 많이 사용한다.
2.VARCHAR 
3.NUMMBER : 숫자 사용 대표적
4.DATE : 고정길이 , 날짜 데이터 
5.CLOB
6.BLOB
7.BFIE

6)테이블 수정
1.추가 : ADD
2.컬럼명 바꾸기 : RENAME
3.컬럼타입 바꾸기 : MODIFY
4.컬럼삭제 : DROP
-->>DDL
------------------------------------------------------------
(2)데이터베이스 기본문법
1)DDL : 데이터 베이스 테이블을 생성하거나 재정의 및 제거
2)DML : 데이터를 검색, 삽입, 수정, 삭제
3)DCL : 계정에 권한을 부여하거나 회수하는 기능
4)TSL : DML문 실행 되어 DBMS에 저장되거나 되돌리기 위해 실행하는 SQL

-DDL
(1)CREATE : 데이터 베이스 또는 테이블 생성
<CREATE의 형태>
CREATE TABLE[TABLE](
    [COL1_NAME]  [COL_TYPE]
 );
 
(2)ALTER : 기존 데이터 베이스 또는 테이블 수정
<ALTER의 형태>
ALTER TABLE [TABLE_NAME]
 (1)ADD : COLUNM 추가 
 (2)RENAME : COLUNM 이름 변경
 (3)MODIFY : COLUNM 타입 변경
 (4)DROP : COLUNM 삭제
 
(3)DROP : 데이터 베이스 또는 테이블 삭제
 <DROP형태>
  DROP TABLE [TABLE_NAME];
  
-DML
(1)INSERT : 테이블에 데이터 삽입
 <INSERT의 형태>
- 모든 COULMN데이터를 삽입할 때(COLUMN이 N개)
  INSERT INTO [TABLER_NAME]
  VALUES(COL1 DATA, COL2 DATA,....COL N DATA);
- 특정 COLUMN 데이터를 삽입할 때 
  INSERT INTO [TABEL_NAME](COL2 NAME,COL3 NAME)
  VALUES (COL1 DATA, COL2 DATA,....COL N DATA);
(2)UPDATE : 기존에 있는 데이터 수정
 <UPDATE의 형태>
 UPDATE [TABLE_NAME]
 SET(COL1_NAME) = (COL1_DATA),(COL2_NAME) = (COL2_DATA)
 WHERE[변경데이터 선별조건(CONDITION))];
(3)DELETE : 입력된 데이터 삭제
 <DELETE의 형태>
 - 특정데이터를 삭제하는 경우
    DELETE FROM [TABLE_NAME]
    WHERE[CONDITION(조건)];
- 모든 데이터를 삭제하는 경우
   DELETE FROM [TABLE_NAME]
(4)SELECT : 테이블에 존재하는 데이터를 기준으로 검색하여 결과를 출력
 <SELECT의 형태>
 - 특정 컬럼값 조회
   SELSCT[COL_NAME]
   FROM[TABLE_NAME]
   WHRER[CONDITION(조건)]
 - 모든 컬럼값 조회
 SELECT * 
 FROM [TABLE_NAME]
 WHRER[CONDITON(조건)]
------------------------------------------------------------
(3)데이터베이스 함수
1.대소문자를 바꿔주는 함수 : UPPER(대문자),LOWER(소문자),INTICAP(첫글자만대문자)
 - SELECT UPPER ('ABcdeFG')AS "UPPER(대문자)" FROM DUAL;
 - SELECT LOWER ('ABcDeFg')AS "LOWER(소문자)" FROM DUAL;
 - SELECT INITCAP('aBCDEFG') AS "INITCAP(첫글자 대문자)" FROM DUAL;
2.문자열 길이 구하는 함수 : LENGTH 
 - SELECT LENGTH ('Abc/de_fg')AS "문자열 길이" FROM DUAL;
-문자크기 구하는 LENGTHB
 - SELECT LENGTHB('가') AS 한글, LENGTHB ('a') AS 소문자, LENGTHB ('A') AS 대문자 FROM DUAL;
3.문자열 일부 추출 : SUBSTR
 <SUBSTR의 형태>
 SUBSTR('문자열데이터' OR [COL1_NAME],시작위치,추출길이)
 SUBSTR('문자열데이터'OR [COL1_NAME],시작위치)
4.문자열 데이터 안에서 특정 문자 위치 찾는 함수 : INSTR
<INSTR의 형태>
INSTR('문자열 데이터'OR [COL_NAME],
        '위치를 찾으려는 부분 문자', 
        시작 위치(기본 값1),
        같은 문자일 대 몇번때 문자인지(기본값1))
5.특정 문자를 다른 문자로 바꾸는 함수 : REPLACE
<REPLACE의 형태>
REPLACE('문자데이터'OR[COL_NAME], 찾는 문자, 바꿀 문자)
REPLACE('문자데이터'OR[COL_NAME], 찾는 문자)
6.두 컬럼 데이터를 합치는 함수 : CONCAT == ||
SELECT CONCAT (EMPNO,ENAME),
      CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP;

SELECT EMPNO || ENAME AS COCAT1,
     EMPNO || ' : ' || ENAME AS CONCAT2
FROM EMP;      

7.데이터를 빈공간의 특정 문자로 채우는 함수 : 왼쪽(LPAD), 오른쪽(RPAD)
<LPAD,RPAD의 형태>
--LAPD('문자열',데이터자릿수,빈공간에 채울 문자(기본값''))
--RAPD('문자열',데이터자릿수,빈공간에 채울 문자(기본값''))
--------------------------------------
8.교집합과 합집합, 차집합 : INTERSECT(교집합),NUION(합집합),MINUS(차집합)

9.공백제거 : TRIM(), LTRIM() RTRIM()
SELECT TRIM(' ICIA교육원 ') AS TRIM,
       LTRIM(' ICIA교육원 ')AS LTRIM,
       RTRIM (' ICIA교육원 ')AS RTRIM
FROM DUAL; 
10.절대값 : ABS
SELECT ABS(5) AS "절대값 5", ABS(-10) AS "절대값 -10"
FROM DUAL;
11.반올림 : ROUND
SELECT ROUND(1324.5678) AS ROUND,
       ROUND(1324.5678 ,0)AS ROUND_0,  
       ROUND(1324.5678, 1)AS ROUND_1,
       ROUND(1324.5678, 2)AS ROUND_2,
       ROUND(1324.5678, -1)AS ROUND_MINUS1,
       ROUND(1324.5678, -2)AS ROUND_MINUS2
FROM DUAL; 
12.버림 : TRUNC
SELECT TRUNC(1234.4452) AS TRUNC,
       TRUNC(1234.4452, 0)AS TRUNC_0,
       TRUNC(1234.4452, 1)AS TRUNC_1,
       TRUNC(1234.4452, 2)AS TRUNC_2,
       TRUNC(1234.4452, -1)AS TRUNC_MINUS1,
       TRUNC(1234.4452, -2)AS TRUNC_MINUS2
FROM DUAL;
13.가까운 정수 찾기 : CEIL,FLOOR
SELECT CEIL(3.14), --4
       FLOOR(3.14),--3
       CEIL(-3.14),--(-3)
       FLOOR(-3.14)--(-4)
FROM DUAL;
14.나머지 값구하기 : MOD
--NUM1&NUM2
SELECT FLOOR(15/6) AS "15/6",MOD(15,6)AS "15%6"FROM DUAL;

15.날짜 관련 함수 
--DATE DATA + 숫자 : 숫자 만큼 이후 날짜
--DATE DATA - 숫자 : 숫자 만큼 이전 날짜
--DATE DATA1 - DATE DATA2 : 두 날짜간 일수 차이
--DATE DATA1 + DATE DATA2 : 연산 불가능

16.개월 수 구하기 : MOMTHS_BETWEEN(나중날짜, 처음날짜)
SELECT CEIL(MONTHS_BETWEEN('2020/10/23','2020/05/01')) AS "개월 수"
FROM DUAL;
17.개월 수 더하기 : ADD_MONTHS(더하고자하는 날짜, 개월 수)
SELECT ADD_MONTHS(SYSDATE,5)AS "5개월 후"
FROM DUAL;
18.다가올 요일에 해당하는 날짜구하기 : NEXT_DAY(날짜, 요일)
SELECT NEXT_DAY(SYSDATE,'일요일') AS "돌아오는 일요일"
FROM DUAL;
19. 이번달/ 특정달의 마지막 일 수 : LAST_DAY(날짜)
SELECT LAST_DAY(SYSDATE) AS "6월 마지막날"
FROM DUAL;
20. TO_CHAR : 숫자 또는 날짜를 문자데이터로 전환
 1) TO_CHAR(날짜,날짜 형식):숫자 또는 날짜를 문자데이터로 전환
--    JAVA ex)String.valueOf(100)

--    2) TO_NUMBER :문자를 숫자로
--    JAVA ex)integer.parseInt("100") 

--    3)TO_DATE : 문자를 숫자로

--시간형식

21. 세기 : 'CC','BC'
--TO_CHAR(SYSDATE,'CC')--21세기
--TO_CHAR(SYSDATE,'BC')--서기

22. NULL처리 함수 : NVL,NVL2
     NVL([COL_NAME],0):컬럼에 데이터가 NULL일 경우 0으로 바뀐다.
     NVL([COL_NAME],'NULL값이 아닐 경우','NULL일 경우')
23. SWITCH : DECODE(호출할 COLMN,조건, 조건이 참일경우)
    SWITCH(DEPTNO)
     CASE 10: 인사팀
     CASE 20: 영업팀
     CASE 30: 홍보팀
24. IF~ELSE : CASE~WHEN
    SELECT ENAME,DEPTNO,
   CASE --IF
      WHEN DEPTNO = 10 THEN '인사팀'--ELSE IF
      WHEN DEPTNO = 20 THEN '영업팀'
      WHEN DEPTNO = 30 THEN '연구팀'
   END AS 담당부서
FROM EMP
ORDER BY DEPTNO;

25. 그룹화 함수 
--SUM() : 지정한 컬럼 데이터의 합
--AVG() : 지정한 컬럼 데이터의 평균
--COUNT() : 지정한 컬럼 데이터의 갯수
--MAX() : 지정한 컬럼 데이터의 최댓값
--MIN() : 지정한 컬럼 데이터의 최솟값

------------------------------------------------------

26. GROUP BY : 특정 컬럼  또는 데이터를 기준으로 데이터를 그룹으로 묶음
/*
   SELECT 
   FROM
   WHERE
   GROUP BY [그룹화할 COLUMN]을 지정 (여러개 가능)
   ORDER BY[정렬할 COLUMN];
*/

/*

27.(2)ROLLUP :그룹화 데이터의 합계를 함께 출력
/*
  SELECT
  FROM 
  WHERE
  GROUP BY ROLLUP[COL_NAME]
*/

/*
28. HAVING : GROUP BY절을 사용해서 
--            그룹화된 결과 중에 출력 그룹을 선별하는 조건식

/* 순서 잘기억하기!!
  SELECT
  FROM 
  WHERE -- HAVING조건식을 가져오기 전에 조건식을 성립
  GROUP BY
  HAVING[출력그룹을 제한하는 조건식] -- WHERE값 중에서 조건식에 맞는 값을 찾도록 한다.
  ORDER BY
*/
