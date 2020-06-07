DROP TABLE JSSTU;
--JSSTU 테이블 삭제
CREATE TABLE JSSTU(
    STUNO NUMBER(4),
    STUNAME NVARCHAR2(5),
    STUAGE NUMBER(2),
    STUPHONE NVARCHAR2(4),
    STUBIRTH DATE,
    GROUPNO NUMBER(2),
    CONSTRAINT JSSTU_PK PRIMARY KEY(STUNO)--제약 조건PK(나중에 배움)
);

DELETE FROM JSSTU;
--JSSTU 테이블에 있는 모든 데이터 삭제
INSERT INTO JSSTU VALUES (6301, '강지수', 27, '9128', '19940427', 5 ); 
INSERT INTO JSSTU VALUES (6302, '구민성', 24, '0278', '19971002', 1 ); 
INSERT INTO JSSTU VALUES (6304, '김도연', 26, '3510', '19950309', 4 );
INSERT INTO JSSTU VALUES (6305, '김상민', 25, '9532', '19960516', 1 );
INSERT INTO JSSTU VALUES (6306, '김성진', 26, '2883', '19950410', 1 );
INSERT INTO JSSTU VALUES (6307, '김태석', 24, '2883', '19970711', 3 );
INSERT INTO JSSTU VALUES (6308, '김혁', 24, '0892', '19970301', 1 );
INSERT INTO JSSTU VALUES (6310, '서민재', 24, '7954', '19970128', 6 );
INSERT INTO JSSTU VALUES (6312, '신희태', 26, '3756', '19951128', 4 );
INSERT INTO JSSTU VALUES (6313, '안재현', 23, '5667', '19980106', 2 );
INSERT INTO JSSTU VALUES (6315, '양준희', 21, '9401', '20000309', 2 );
INSERT INTO JSSTU VALUES (6316, '오은희', 20, '0255', '20010519', 3 );
INSERT INTO JSSTU VALUES (6317, '오형록', 26, '5446', '19950422', 6 );
INSERT INTO JSSTU VALUES (6318, '유제상', 27, '8896', '19941204', 5 );
INSERT INTO JSSTU VALUES (6319, '유현서', 26, '4452', '19950111', 6 );
INSERT INTO JSSTU VALUES (6320, '윤희영', 26, '2639', '19950917', 3 );
INSERT INTO JSSTU VALUES (6321, '이소현', 28, '5960', '19930529', 4 );
INSERT INTO JSSTU VALUES (6323, '이유진', 30, '3288', '19910121', 4 );
INSERT INTO JSSTU VALUES (6324, '이은솔', 25, '5975', '19960618', 5 );
INSERT INTO JSSTU VALUES (6325, '이은지', 23, '7691', '19980728', 2 );
INSERT INTO JSSTU VALUES (6326, '이재홍', 29, '5859', '19920211', 6 );
INSERT INTO JSSTU VALUES (6327, '임형민', 24, '9743', '19970403', 3 );
INSERT INTO JSSTU VALUES (6328, '차호정', 23, '2837', '19980328', 5 );
INSERT INTO JSSTU VALUES (6329, '최동선', 28, '5112', '19931113', 2 );

SELECT * FROM JSSTU;

--(1)테이블 구성 살펴보기
DESC JSSTU;

--(2)ALIAS(별칭)으로 조회하기
  -- 조회 : 학생번호, 학생나이,전화번호,생년월일,조
SELECT STUNO AS 학생번호, STUNAME AS 학생이름,
STUAGE AS 학생나이,STUPHONE AS 전화번호 ,STUBIRTH AS 생년월일, GROUPNO AS 조
FROM JSSTU; 

--(3)중복 데이터 제거 DISTINCT
--GROUPNO만 조회
SELECT GROUPNO FROM JSSTU;
--DISTINCT로 중복제거
SELECT DISTINCT GROUPNO FROM JSSTU;

--AGE만 조회
SELECT STUAGE FROM JSSTU;
--AGE를 중복제거
SELECT DISTINCT STUAGE FROM JSSTU;

--(4)정렬하기 : ORDER BY 
--    1)오름차순ASC
SELECT DISTINCT GROUPNO FROM JSSTU
ORDER BY GROUPNO ASC;

SELECT DISTINCT STUAGE FROM JSSTU
ORDER BY STUAGE ASC;

SELECT STUBIRTH FROM JSSTU; 
SELECT DISTINCT STUBIRTH FROM JSSTU
ORDER BY STUBIRTH ASC;

--    2)내림차순DESC
SELECT DISTINCT GROUPNO FROM JSSTU
ORDER BY GROUPNO DESC;

--(5)특정조건 검색 :WHERE

--ex) 2조인 사람들 검색
SELECT STUNAME
FROM JSSTU
WHERE GROUPNO = '2';
--ex)우리조원들 이름 검색
SELECT STUNAME
FROM JSSTU
WHERE GROUPNO = '6';
--ex)우리 조원들 학생번호 검색
SELECT STUNO
FROM JSSTU
WHERE GROUPNO = '6';
--ex)우리조원들 중에 어린 순서대로 건색
SELECT * FROM JSSTU
WHERE GROUPNO ='6'
ORDER BY STUBIRTH DESC;

SELECT * FROM JSSTU
WHERE GROUPNO ='6'
ORDER BY STUAGE ASC;

--(6)두 가지 조건 검색
--1)AND : 조건식1과 조건식2 모두 참일 때 TRUE,하나라도 거짓이면 FALSE
--2)OR : 조건식1과 조건식2 모두 거짓일 때 FALSE, 하나라도 참이면 TRUE

--EX)나이가 25살 이면서 1조인 사람
/*
 SELECT
 FROM
 WHERE : 조건식1 AND 조건식2; 
*/
SELECT * --->>모두라는 뜻 모든 데이터 표시
FROM JSSTU
WHERE STUAGE = '25' AND GROUPNO = '1';

--EX)나이가 25살 또는 26살인 학생과 5조인 학생을 구하라
SELECT *
FROM JSSTU
WHERE (STUAGE = '25' OR STUAGE = '26') AND GROUPNO = '5';

--(7)산술 연산,문자연산
--산술연산
SELECT *FROM JSSTU
WHERE STUAGE >= '26';

--문자연산
SELECT * FROM JSSTU
WHERE STUNAME >= '김' AND STUNAME <='이';

--1조,3조,5조인사람 출력
SELECT * FROM JSSTU
WHERE GROUPNO = '1' OR GROUPNO = '3' OR GROUPNO = '5'
ORDER BY STUNAME ASC;
--------------------------------------------------
--(8)IN연산자 
--같은 칼럼에서 여러가지 조건 검색
/*
 SELECT
 FROM
 WHERE[COM1_NAME]IN[DATA1,DATA2....]
*/
SELECT * 
FROM JSSTU
WHERE GROUPNO IN (1,2,3);
--1,3,5조가 아닌 학생조회

SELECT *
FROM JSSTU
WHERE GROUPNO NOT IN (1,3,5)
ORDER BY GROUPNO ASC; 

--나이가 23살 이상 25이하인 학생조회
SELECT *
FROM JSSTU 
WHERE STUAGE >= '23' AND STUAGE <='25'; 
---------------------------------------
--(9)BETWEEN A AND B 
--A부터 B까지 데이터를 검색
/*
SELECT *
FROM
WHERE [COL_NAME] BETWEEN 최솟값 AND 최댓값
*/
SELECT * FROM JSSTU
WHERE STUAGE BETWEEN 23 AND 25;

--23살에서 26살이 아닌 학생 조회

SELECT * FROM JSSTU
WHERE STUAGE NOT BETWEEN 23 AND 25;


--(10)Like,와일드카드
/*
SELECT *
FROM
WHERE [COL_NAME] Like(......);
*/

SELECT *
FROM JSSTU
WHERE STUNAME Like '김%';
-- 첫글자가 '김'으로 시작하는 데이터조회


SELECT *
FROM JSSTU
WHERE STUNAME Like '_은%';
--두번째 글자가 '은'인 데이터 조회

SELECT *
FROM JSSTU
WHERE STUNAME Like '_제%';
--두번째 글자가 '제'인 데이터 조회

SELECT *
FROM JSSTU
WHERE STUNAME Like '%성%';
--'성'이라는 글자를 포함하는 모든 데이터 조회

SELECT *
FROM JSSTU
WHERE STUNAME Like '%민%';
--'민'이라는 글자를 포함하는 모든 데이터 조회

/*
와일드카드 
 _ : 어떤 값이든 상관없이 한 개의 문자 데이터를 정의
 % : 값이랑 상관없이(문자 없는 경우도 포함) 모든 문자 데이터를 의미
*/
--이름의 성이 김, 이가 아닌 사람을 조회
SELECT * FROM JSSTU WHERE STUNAME NOT Like'김%' AND 
STUNAME NOT Like '이%';

--(11) IS NULL /IS NOT NULL
ALTER TABLE JSSTU ADD MERRY NUMBER(1);

SELECT * FROM JSSTU;

UPDATE JSSTU
SET MERRY = 1
WHERE STUNAME = '이유진';

UPDATE JSSTU
SET MERRY = 0
WHERE STUNAME = '오형록';

SELECT *
FROM JSSTU
WHERE MERRY IS NULL; 
----문제만들기 시간!!!문제풀이-------------------------------------------------------------------
--문제만들기
--1)1,2,3조 중에 26살 이하 학생번호가 20번인 사람
SELECT * 
FROM JSSTU
WHERE GROUPNO IN (1,2,3) AND STUAGE <= '26' AND STUNO LIKE '__20'; 

--2)성이 김,이가 아닌 사람중에서 이름에 두번째가 '현'이 들어가는 생일이 1월인 사람 
SELECT * FROM JSSTU 
WHERE(STUNAME NOT LIKE'김%' AND STUNAME NOT LIKE'이%') 
AND STUNAME LIKE '_현%' AND STUBIRTH LIKE '_____01%'; 

--3)2,4,6 조 중에 전화번호 첫번째가 5이면서 92년생인 사람
SELECT * FROM JSSTU
WHERE GROUPNO IN (2,4,6) AND STUPHONE LIKE '5%' AND STUBIRTH LIKE '__92%';

--4)1,2,5,6 중에 25살 이상인 학생 중에 학생번호가 20번 이하이고 
--4월생인 사람중에 전화번호에 5가 들어가는 사람
SELECT * FROM JSSTU
WHERE GROUPNO IN (1,2,5,6) AND STUAGE >= 25 AND STUNO <= 6320 AND STUBIRTH LIKE '_____04%' AND STUPHONE LIKE '%5%'; 

--5)

--1조
--1)
SELECT STUNO AS 번호, STUNAME AS 이름 FROM JSSTU 
WHERE STUBIRTH BETWEEN '1995.01.01' AND '1995.12.31';
--2)
ALTER TABLE JSSTU ADD SHOESE NUMBER(2);
SELECT * FROM JSSTU;

UPDATE JSSTU
SET SHOESE = 70
WHERE STUNAME = '이재홍';

UPDATE JSSTU
SET SHOESE = 60
WHERE STUNAME = '유현서';

UPDATE JSSTU
SET SHOESE = 70
WHERE STUNAME = '오형록';

UPDATE JSSTU
SET SHOESE = 80
WHERE STUNAME = '서민재';

SELECT *
FROM JSSTU
WHERE GROUPNO = 6
ORDER BY SHOESE ASC;

--3)
ALTER TABLE JSSTU ADD MERRY NVARCHAR2(1);
SELECT * FROM JSSTU;

UPDATE JSSTU 
SET MERRY = 0
WHERE STUNAME = '유현서';

UPDATE JSSTU 
SET MERRY = 1
WHERE STUNAME = '이재홍';

UPDATE JSSTU 
SET MERRY = 0
WHERE STUNAME = '서민재';

UPDATE JSSTU 
SET MERRY = 1
WHERE STUNAME = '오형록';


SELECT * FROM JSSTU WHERE MERRY IS NOT NULL;

--4)
SELECT STUNAME FROM JSSTU
WHERE STUPHONE LIKE '__8%' AND STUPHONE LIKE '___8%';

--5) 
SELECT * FROM JSSTU 
WHERE STUNAME NOT LIKE '%민%' AND STUAGE <='25';

--2조
--1)
SELECT STUNAME AS 이름, MERRY AS 결혼, STUAGE AS 나이 FROM JSSTU 
WHERE STUAGE>=24 AND MERRY = 1 AND STUNAME LIKE '이%';

--2)
SELECT * FROM JSSTU 
WHERE STUPHONE LIKE '___3%';

--3)
SELECT * FROM JSSTU
WHERE STUAGE >= 26 AND STUNAME LIKE '이%'
ORDER BY STUNAME ASC;

--4)
SELECT STUAGE,STUAGE+5 AS "5년후",STUNAME FROM JSSTU
WHERE STUAGE+5 >= 30
ORDER BY STUAGE ASC;

--5)
SELECT STUNAME AS 이름, STUAGE AS 나이, STUNO AS 번호, GROUPNO AS 조, STUPHONE AS 전화번호,
STUBIRTH AS 생년월일, SHOESE AS 신발사이즈, MERRY AS 결혼 FROM JSSTU
WHERE STUBIRTH LIKE '_____01%' OR STUBIRTH LIKE '_____02%'
ORDER BY STUAGE DESC;

--3조
--1)
SELECT *
FROM JSSTU 
WHERE GROUPNO = 3 AND STUBIRTH >= 19970000 AND STUBIRTH <= 20010000;

--2)
SELECT *
FROM JSSTU
WHERE STUPHONE LIKE '%11%' OR
STUPHONE LIKE '%22%'OR
STUPHONE LIKE '%33%'OR
STUPHONE LIKE '%44%'OR
STUPHONE LIKE '%55%'OR
STUPHONE LIKE '%66%'OR
STUPHONE LIKE '%77%'OR
STUPHONE LIKE '%88%'OR
STUPHONE LIKE '%99%';

--3)
SELECT * FROM JSSTU
WHERE STUNAME LIKE '%은%'AND STUAGE BETWEEN 23 AND 27;

--4)
SELECT * FROM JSSTU WHERE STUBIRTH LIKE '%11';

--5)
SELECT * FROM JSSTU
WHERE STUBIRTH LIKE '1997%'
ORDER BY STUBIRTH ASC;

--4조
--1)
ALTER TABLE JSSTU ADD GENDER NVARCHAR2(1);


UPDATE JSSTU
SET GENDER = '여'
WHERE STUNAME = '유현서';

UPDATE JSSTU
SET GENDER = '남'
WHERE STUNAME = '이재홍';

UPDATE JSSTU
SET GENDER = '남'
WHERE STUNAME = '오형록';

UPDATE JSSTU
SET GENDER = '남'
WHERE STUNAME = '서민재';

SELECT * FROM JSSTU WHERE GENDER = '남';


--2) 
SELECT * FROM JSSTU
WHERE STUPHONE BETWEEN '2' AND '5'
ORDER BY STUPHONE ASC;

--3)
SELECT * FROM JSSTU
WHERE STUAGE = 25 AND NOT GROUPNO = 1; 

--4)
ALTER TABLE JSSTU ADD STURIDE NVARCHAR2(1);
SELECT * FROM JSSTU;


UPDATE JSSTU
SET STURIDE = 1
WHERE STUNAME = '이재홍';

UPDATE JSSTU
SET STURIDE = 1
WHERE STUNAME = '오형록';

UPDATE JSSTU
SET STURIDE = 0
WHERE STUNAME = '유현서';

UPDATE JSSTU
SET STURIDE = 0 
WHERE STUNAME = '서민재';

SELECT * FROM JSSTU
WHERE GROUPNO = 6;

--5)
SELECT * FROM JSSTU
WHERE GENDER = '남' OR GENDER = '여' AND GENDER IS NULL
ORDER BY GENDER ASC;

--5조
--1)
SELECT * FROM JSSTU
WHERE STUBIRTH LIKE '______6%';

--2)
SELECT * FROM JSSTU WHERE STUNO LIKE '1%' AND STUNO LIKE '20%';

--3)
SELECT * FROM JSSTU WHERE NOT STUPHONE LIKE 12345;
--4)
SELECT * FROM  JSSTU WHERE STUNAME LIKE '__';

--5)
SELECT * FROM JSSTU WHERE STUNAME LIKE '이%' AND STUAGE = 25;














