/*
Date : 2020.06.04
Author : YOUHYUNSEO
Description : 데이터베이스 4일차 함수
Version : 1.0
*/

/*
(1)대, 소문자 바꿔주는 함수
  - UPPER : 모두 대문자로
  - LOWPER : 모두 소문자로
  - INTICAP : 첫글자 대문자, 나머지는 소문자
 */
 SELECT UPPER ('ABcdeFG')AS "UPPER(대문자)" FROM DUAL;
 SELECT LOWER ('ABcDeFg')AS "LOWER(소문자)" FROM DUAL;
 SELECT INITCAP('aBCDEFG') AS "INITCAP(첫글자 대문자)" FROM DUAL;
 
 /*
 (2)문자열 길이를 구하는 LENGTH
 
 */
 
 SELECT LENGTH ('Abc/de_fg')AS "문자열 길이"
 FROM DUAL;

 --EMP 테이블에서 이름이 5자 이상인 직원 조회
 
 SELECT ENAME, LENGTH(ENAME) 
 FROM EMP 
 WHERE LENGTH(ENAME)>=5; 
 
 SELECT * FROM EMP;
 
 --LENGTHB :문자의 크기 조회(byte)
 SELECT LENGTHB('가') AS 한글, LENGTHB ('a') AS 소문자, LENGTHB ('A') AS 대문자 FROM DUAL;
 
 --!,#,_,(공백)
 SELECT LENGTHB ('!')AS "!", LENGTHB ('#') AS "#", 
          LENGTHB ('_') AS "_", LENGTHB(' ')AS " " FROM DUAL; 
 
 /*
 (3)문자열 일부를 추출하는 SUBSTR
 SUBSTR('문자열데이터' OR [COL1_NAME],시작위치,추출길이)
 SUBSTR('문자열데이터'OR [COL1_NAME],시작위치)
 */
 
 SELECT SUBSTR('HELLO!!',1,2),SUBSTR('HELLO!!',3,2),SUBSTR('HELLO!!',5) FROM DUAL;
 
 /*
 (4)문자열 데이터 안에서 특정 문자 위치를 찾는 INSTR
 INSTR('문자열 데이터'OR [COL_NAME],
        '위치를 찾으려는 부분 문자', 
        시작 위치(기본 값1),
        같은 문자일 대 몇번때 문자인지(기본값1))
 */
 /*HELLO, ORACLE! ->>는 14글자 띄어쓰기와 ,포함 */
 --'L'의 위치번호 찾기
 SELECT INSTR('HELLO, ORACLE!','L') AS INSTR1, -- 첫번째 'L'의 글자 번호
        INSTR('HELLO, ORACLE!','L',5) AS INSTR2,-- 5번째 글자부터 시작하는 첫번째 'L' 
        INSTR('HELLO, ORACLE!','L',2,3) AS INSTR3 --2번째 글자부터 시작해서 세번째 'L'
FROM DUAL;

--'O'의 위치 번호 찾기
SELECT INSTR('HELLO, ORACLE!', 'O',1,1) AS INSTR1, -- 두번째 글자에서 첫번째 'O'의 글자번호 
       INSTR('HELLO, ORACLE!','O',1,2)AS INSTR1--두번째 글자에서 두번째 'O'의 글자번호 
FROM DUAL;
 
--(5)특정 문자를 다른 문자로 바꾸는 REPLACE
/* 
REPLACE('문자데이터'OR[COL_NAME], 찾는 문자, 바꿀 문자)
REPLACE('문자데이터'OR[COL_NAME], 찾는 문자),
*/ 
SELECT 
'010-7720-4452' AS "REPLACE이전",
REPLACE('010-7720-4452', '-',' ') AS "REPLACE기본형",
REPLACE('010-7720-4452', '-') AS "REPLACE선택형"
FROM DUAL; 

--류현진 이후 첫 신기록...소형준, 던지면서 더 강해진다
--류현진 => 김혁, 소형준 => 김성진

SELECT
'류현진 이후 첫 신기록...소형준, 던지면서 더 강해진다' AS "메인 뉴스",
REPLACE ( 
REPLACE('류현진 이후 첫 신기록...소형준, 던지면서 더 강해진다','류현진','김혁')
        ,'소형준','김성진')AS "메인뉴스 수정1"
FROM DUAL;
 

--(6)두 컬럼 데이터를 합치는 CONCAT
SELECT CONCAT (EMPNO,ENAME),
      CONCAT(EMPNO, CONCAT(' : ', ENAME))
FROM EMP;

--||사용 ==>> CONCAT과 같은 용도이다
SELECT EMPNO || ENAME AS COCAT1,
     EMPNO || ' : ' || ENAME AS CONCAT2
FROM EMP;      

--JOB이 SALESMAN인 사원 이름 앞에 '힘내세요'문자 붙여 주기

SELECT CONCAT ('힘내세요', ENAME),JOB
FROM EMP     
WHERE JOB = 'SALESMAN';

SELECT '힘내세요' || ENAME FROM EMP
WHERE JOB = 'SALESMAN';
  
--(7)데이터의 빈공간을 특정 문자로 채우는 
--LAPD(왼쪽), RPAD(오른쪽)
--LAPD('문자열',데이터자릿수,빈공간에 채울 문자(기본값''))
--RAPD('문자열',데이터자릿수,빈공간에 채울 문자(기본값''))

SELECT 'ICIA',
       LPAD('ICIA',7,'A')AS LPAD1,
       RPAD('ICIA',7,'나')AS RPAD2,
       LPAD('ICIA',7)AS LPAD1,
       RPAD('ICIA',7)AS RPAD2
FROM DUAL;
--A와 같은 알파벳은 1byte
--'가'는 3byte


CREATE TABLE YHS (
   JSNAME NVARCHAR2(3),
   SSSN NVARCHAR2(14),
   JSPHONE NVARCHAR2(13)
);

INSERT INTO YHS VALUES('유현서','950111-2331561','010-7720-4452');
SELECT * FROM YHS;

--예제
--1)주민번호 950111-2******
SELECT RPAD('950111-2',14,'*')AS "주민번호"
FROM DUAL;   


--CONCAT,SUBSTR
--2)전화번호 010-****-4452
SELECT RPAD(SUBSTR(JSPHONE,1,4),8,'*')|| SUBSTR(JSPHONE,9)AS 전화번호 FROM YHS; 




--문제만들기
--1)'ICIA를 오신 것을 환영합니다'에서 'ICIA'를 '교육원','환영합니다'를 '어서오세요'라고 '를'을 '에'바꿔주는 칼럼과
--오신 것을 부분을 '*'만들어주는 칼럼을 만드시오

SELECT 'ICIA를 오신 것을 환영합니다.'AS "교육원 문구", 
REPLACE(REPLACE('ICIA를 오신 것을 환영합니다.','ICIA','교육원'),'를','에')AS "교육원 문구 수정",
RPAD(SUBSTR('ICIA를 오신 것을 환영합니다.',1,5),11,'*')||SUBSTR('ICIA를 오신 것을 환영합니다.',13) AS "문구*"
FROM DUAL;

--2)안나라는 한국이름을 만들고, '안나'를 'ANNAR'라고 바꿔 첫글자만 대문자로 바꾸시오 
SELECT '안나'AS "한국 이름",
REPLACE ('안나','안나',INITCAP('ANNAR')) AS "영어 이름"
FROM DUAL;






 
 
 
 
 
 