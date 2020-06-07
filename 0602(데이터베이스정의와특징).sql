/*
Date : 2020.06.02
Author : YOUHYUNSEO
Description :데이터베이스 2일차 , 테이블 생성방법
Version : 1.0
*/

/*
※정보와 자료
자료(Data) : 현실세계에서 관찰이나 측정을 통해
             수집한 단순한 사실이나 결과값

정보(Imformation) : 의사결정에 도움을 줄 수 있는 유용한 형태,
                    자료를 가공(처리)해서 얻을 수 있는 결과

data : 시험점수 입력
process :총점, 평균 구하기
imformation : 성적표 출력

DataBase(DB):필요한 데이터가 저장되어있는 단위
             테이블들이 모여 이루는 데이터 단위
※데이터베이스 정의:ISOS
 :특정 조직의 여러 사용자가 (공유)하여 사용할 수 있도록 
 (통합)해서 (저장)한 (운영) 데이터의 집합!!
- Integrated Data(통합데이터)
  :자료 중복을 배제한 데이터 모임
- Sroeed Data(저장데이터) : 컴퓨터가 접근할 수 있는 저장매체에 저장된자료
- Oeration Data(운영데이터) : 지속적으로 꾸준히 유지해야하는 데어터
- Shard Data(공유데이터) :여러 사용자가 함께 사용하고 이용
  : 사용목적이 다를 수 있으므로 이를 고려해서 유연성 있게 데이터 베이스를 설계

※데이터베이스 특징
(1)실시간 접근성 : 사용자가 요구하는 데이터에 실시간으로 응답할 수 있어야한다.
(2)동시공유 :다수의 사용자가 동시에 이용할 수 있어야한다. 
이 동시 사용은 여러 사용자가 서로 다른 데이터를 동시에 사용하는 것은 물론,
같은 데이터도 동시에 사용하도록 지원할 수 있어야한다.
(3)내용기반참조 :저장된 메모리의 주소나 위치가 아닌 데이터의 내용은 참호한다.
EX)학점이 B이상인 학생 이름을 검색하세요. 
=>>데이터의 내용 조건만 제시해도 조건만 맞으면 위치가 어디든 상관없다.
(4)계속적인 변화 : 현실세계의 상태를 정확히 반영해야하기 때문에 
끊임없이 변하는 세계에 맞춰 데이터 베이스 속 데이터도 계속 변해야 한다. 
이를 위해 삽입,삭제,수정이 필요하다.

※데이터 베이스 사용자
:DBA :데이터 베이스 관리자
-응용 프로그래머
-사용자

※DBA(Data Base Administrator)
 :데이터베이스 시스템의 모든 관리와 운영에 대한 책임을 지고 있는 사람

※DEMS(DataBaseManagementSystem)=>동일한 언어 사용
 :데이터들을 효율적으로 관리하기 위해 제공되는 시스템
 
 -->>오라클은 효율적이므로 사용함....
 
*/

--내IP주소 : 192.168.0.189
/*서버가 하는 일

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

-->> 서버 잠금 방법
--ALTER USER [USER ID] ACCOUNT LOCK
ALTER USER JS001 ACCOUNT LOCK;
ALTER USER JS002 ACCOUNT LOCK;
ALTER USER JS003 ACCOUNT LOCK;

-->>서버 잠금 해제
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
--------------------------------------
--테이블 이름 생성 규칙
(1)테이블 이름은 문자로 시작해야된다.(한글도 가능,숫자 불가능)
(2)테이블 이름은 30byte이하여야 한다.(영어는 30자, 한글은 15자 이하)
(3)테이블 이름은 중복될 수 없다.
(4)테이블 이름은 영문자(한글가능), 숫자와 특수문자($,#,_)사용가능
(5)SQL 키워드는 테이블 이름으로 사용할 수 없다.(CREATE,SELECT 등등)

--열(COLUMN)이름 생성 규칙
(1)열이름은 문자로 시작해야된다.(한글 가능, 숫자 불가)
(2)열이름은 30byte이하여야한다.
    (한글(글자1개당-2바이트)15,영어(글자1개당-1바이트) 30)
(3)열이름은 중복될 수 없다.
(4)열이름은 영문자(한글),숫자, 특수문자 가능
(5)SQL 키워드는 테이블 이름으로 사용할 수 없다.(CREATE,SELECT 등등)

※ 자료형
(1)★NVARCHAR(길이) : VARCHAR + 국가별 문자 세트 데이터 저장
(2)VARCHAR(길이) : 가변길이 데이터 타입(최대 400바이트)
                지정된 길이보다 짧은 데이터가 입력될 시 
                나머지 공간은 채우지 않는다.
                
(3)NUMBER : 숫자에서 가장 대표적으로 사용된다. ->>정수, 실수 모두 가능
   - NUMBER(5):5자리 정수
   - NUMBER(3,2):3자리 정수, 소수점 2자리 수 
(4)DATE :고정 길이, 날짜 데이터 년/월/일/시/분/초 표현
=======================================================
(5)CLOB :대용량 덱스트 타입으로 최대 4GB까지 가능
(6)BLOB :대용량 엑스트 유니코드 타입으로 최대 4GB까지 가능
(7)BFLE :대용량 이진 데이터 파일을 최대 4GB까지 저장할 수 있다.

*/
--오후수업----------------------------------------------------------
CREATE TABLE JSS(
   JSS_NAME  NVARCHAR2(5),
   JSS_AGE   NUMBER(2),
   JSS_DATE  DATE
);
--데이터값 넣기(데이터 추가)
--이름,나이,날짜
 /*INSERT INTO [TABLE_NAME](COL1,COL2,....COLN)-->>괄호와 나머지 데이터들을 지워도 상관없다!
 VALUES(COL1data, COL2data,......COLNdata,)
 */ 
INSERT INTO JSS(JSS_NAME,JSS_AGE,JSS_DATE)
VALUES('유현서',26,'2020/06/03');

INSERT INTO JSS(JSS_NAME,JSS_AGE,JSS_DATE)
VALUES('이재홍',29,SYSDATE);

SELECT * FROM JSS;
--*=>>모두라는 뜻임.

--JSMEMBER테이블생성
--이름, 나이, 전화번호, 생일(DATE)
--주소,이메일,취미

DROP TABLE JSS2;

CREATE TABLE JSS2(
   JSS2_NAME  NVARCHAR2(5),
   JSS2_AGE   NUMBER(2),
   JSS2_NUMBER NVARCHAR2(11),
   JSS2_DATE  DATE,
   JSS2_ADD NVARCHAR2(10),
   JSS2_EMALI NVARCHAR2(25),
   JSS2_HOP NVARCHAR2(10)
);

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('유현서',26,'01077204452','1995/01/11','경기도시흥시매화동','gustj3092@naver.com','드라마보기');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('이재홍',29,'01097895859','1992/01/11','인천가정동','DLWOGHD@naver.com','게임하기');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('서민재',24,'01077204452','1995/01/11','인천','ALSWO@naver.com','게임');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE,JSS2_NUMBER,JSS2_DATE,JSS2_ADD,JSS2_EMALI,JSS2_HOP)
VALUES ('오형록',26,'01077204452','1995/01/11','인천','OHR@naver.com','게임');

INSERT INTO JSS2(JSS2_NAME, JSS2_AGE)
VALUES ('미밈',26);

--저장한자료 확인
SELECT * FROM JSS2;

--선택해서 데이터형성
SELECT JSS2_NAME,JSS2_AGE FROM JSS2;


--테이블 전제에 대한 전체 권한(ALL ON)
GRANT ALL ON STUDENT TO JS002;


--테이블 검색 권한
GRANT SELECT ON JSS2 TO JS001;
GRANT SELECT ON JSS2 TO JS002;
GRANT SELECT ON JSS2 TO JS003;


--테이블 삭제
--DROP TABLE [TABLE_NEME];
DROP TABLE JSS2;

DROP TABLE TEST_TB;

--테이블 형성
CREATE TABLE TEST_TB(
    TB_NAME NVARCHAR2(10)
);

SELECT *FROM TEST_TB;

--테이블 수정
--ALTER TABLE[TABLE_NAME]

--(1)추가 : ADD
ALTER TABLE TEST_TB
 ADD TB_AGE NUMBER(5);

--(2)컬럼명 바꾸기 :RENAME
ALTER TABLE TEST_TB
RENAME COLUMN TB_NAME TO TEST_NAME;

--(3)컬럼타입 바꾸기 : MODIFY
ALTER TABLE TEST_TB
MODIFY TB_AGE NVARCHAR2(10);

--(4)컬럼 삭제 : DROP
ALTER TABLE TEST_TB
DROP COLUMN TEST_NAME;

--테이블 생성,삭제,수정 => DDL
--DDL,DML,DCL(TSL)














