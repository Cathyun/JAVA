/*
Date : 2020.06.03
Author : YOUHYUNSEO
Description : 데이터베이스  DDL,DCL,TSL(3일차)
Version : 1.0
*/
/*
--1--------------------------------------
※SQL :DBMS(오라클)에서 사용하는  전용 질의 언어
     JAVA나 C언어보다 단순
     대소문자 구분X
     데이터를 저장하고 유지보수(추가,수정,삭제)
     하고 이를 검색하는 시스템
     
※ CRUD(CREATE,RETRIEVE,UPDATE,DELETE)
 
※데이터베이스 기본 문법
 - DDL(DATA DEFINITION Language)정의어
 :데이터 베이스 테이블을 생성하거나 재정의 및 제거
 (1) CREATE(기존) - 데이터 베이스 또는 테이블 생성
 (2) ALTER(수정) - 기존 데이터베이스 또는 테이블 수정
 (3) DROP(삭제) - 데이터베이스 또는 테이블 삭제

 - DML(DATA MANIPULATION Language) 조작어
 :데이터를 검색,삽입,수정,삭제
 (1)INSERT - 테이블에 데이터 삽입
 (2)UPDATE - 기존에 있는 데이터를 수정
 (3)DELETE - 입력된 데이터를 삭제
 (4)SELECT - 테이블에 존재하는 데이터를 기준으로 검색하여 결과를 출력한다.

 - DCL(Data Control Language)제어어
  : 계정에 권한을 주여하거나 회수하는 기능
 (1)GRANT - 계정에 권한 부여
 (2)REVOKE - 부여한 권한을 회수

 - TSL(Transaction Control Language)트랙잭션 제어어
 :DML문 실행 되어 DBMS에 저장되거나 되돌리기 위해 실행하는 SQL
 (1)COMMIT :SQL문의 겨롸를 영구적으로 DB에 반영
 (2)ROLLBACK : SQL문의 결과를 취소, 데이터를 되돌릴 때

table(테이블) : 정보들의 묶음 단위
tupie(튜플,행) : 한사람의 데이터
coiumn(컬럼,열) : 테이블 구성하는 정보들
 */
 
--DDL :(1)CREATE (2) ALTER (3) DROP
 --DROP
 --DROP TABLE [TABLE_NAME];
 DROP TABLE JSMEMBER;
 
--CREATE 
 --CREATE TABLE[TABLE](
 --   [COL1_NAME]  [COL_TYPE]
 --);
 
 CREATE TABLE JSMEMBER(
   JS_NAME NVARCHAR2(5),
   JS_AGE NUMBER(2),
   JS_NUM NUMBER(11)
 );
 
 SELECT * FROM JSMEMBER;
 --ALTER
 /*
 ALTER TABLE [TABLE_NAME]
 (1)ADD : COLUNM 추가 
 (2)RENAME : COLUNM 이름 변경
 (3)MODIFY : COLUNM 타입 변경
 (4)DROP : COLUNM 삭제
 */
 
--생일 추가, JS_NAME ->NAME_JS칼럼명 변경
--AGE타입을 NVARCHAR(3)으로 변경
--JSNUM컬럼 삭제 

--생일추가
ALTER TABLE JSMEMBER
  ADD JS_BITH DATE;

--JS_NAME ->NAME_JS칼럼명 변경  
ALTER TABLE JSMEMBER
  RENAME COLUMN JS_NAME TO NAME_JS;

--AGE타입을 NVARCHAR(3)으로 변경
ALTER TABLE JSMEMBER
 MODIFY JS_AGE NVARCHAR2(3);
 
--JSNUM컬럼 삭제  
ALTER TABLE JSMEMBER
 DROP COLUMN JS_NUM;  
--2------------------------------------
--DML(Data Manmipulation Language)
--(1)INSERT
/*
1)모든 COULMN데이터를 삽입할 때(COLUMN이 N개)
  INSERT INTO [TABLER_NAME]
  VALUES(COL1 DATA, COL2 DATA,....COL N DATA);
*/
INSERT INTO JSMEMBER
VALUES('유현서','26','19950111');

SELECT * FROM JSMEMBER;

/*
2)특정 COLUMN 데이터를 삽입할 때 
  INSERT INTO [TABEL_NAME](COL2 NAME,COL3 NAME)
  VALUES (COL1 DATA, COL2 DATA,....COL N DATA);
*/

INSERT INTO JSMEMBER(NAME_JS, JS_BITH)
VALUES('유현서',SYSDATE);

--날짜 조건 변경
ALTER SESSION 
SET NLS_DATE_FORMAT = 'YYYY/MM/DD HH24:MI:SS';

SELECT * FROM JSMEMBER;

--(2)UPDATE
/*
UPDATE [TABLE_NAME]
 SET(COL1_NAME) = (COL1_DATA),(COL2_NAME) = (COL2_DATA)
 WHERE[변경데이터 선별조건(CONDITION))];
*/
UPDATE JSMEMBER
SET NAME_JS = '오형록',JS_AGE = 29
WHERE NAME_JS = '유현서';

--모든데이터확인
SELECT * FROM JSMEMBER;

--(3)DELETE
/*
1)특정데이터를 삭제하는 경우
DELETE FROM [TABLE_NAME]
WHERE[CONDITION(조건)];
*/
DELETE FROM JSMEMBER
WHERE JS_AGE = '26';

SELECT * FROM JSMEMBER;
/*
2)모든 데이터를 삭제하는 경우
DELETE FROM [TABLE_NAME]
*/
DELETE FROM JSMEMBER;
SELECT * FROM JSMEMBER;

--(4)SELECT
/*
1)특정 컬럼값 조회
 SELSCT[COL_NAME]
 FROM[TABLE_NAME]
 WHRER[CONDITION(조건)]
 */
 SELECT NAME_JS
 FROM JSMEMBER
 WHERE JS_AGE = '26';
 

 /*
 2)모든 컬럼값 조회
 SELECT * 
 FROM [TABLE_NAME]
 WHRER[CONDITON(조건)]
 */
 SELECT * 
 FROM JSMEMBER
 WHERE JS_AGE = '26';


--별창(ALIAS)을 이용해서 검색하기
SELECT NAME_JS AS 이름, JS_AGE AS 나이
FROM JSMEMBER
WHERE JS_AGE = '26';

--EX)DML을 사용하여 테이블 만들기
--1.컬럼주기
 CREATE TABLE TIMONE(
   TIM_NAME NVARCHAR2(3),
   TIM_AGE NUMBER(2),
   TIM_NUMBER NVARCHAR2(11)
 );
--2.조원들 데이터 입력
INSERT INTO TIMONE
VALUES('이재홍',29,'01000000000');

INSERT INTO TIMONE
VALUES('오형록',26,'01022222222');

INSERT INTO TIMONE
VALUES('서민재',24,'01011111111');

SELECT * FROM TIMONE;
DROP TABLE TIMONE;

--3.검색 SELECT,조건 찾기
SELECT *
FROM TIMONE
WHERE TIM_NAME = '오형록';

SELECT  TIM_AGE --찾고자 하는 거
FROM TIMONE --만든 테이블 이름
WHERE TIM_NAME = '서민재'; --검색하는 거
---3---------------------------
--F5 :모든 데이터를 한번에 나오록 한다!






 
 
 

