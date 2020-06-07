/*
Date : 2020.06.05
Author : YOUHYUNSEO
Description :CONCAT예제
Version : 1.0
*/
/* 예제 
1. EMP테이블에서 직원넘버 7839의 부서 직원인 사람들을 호출한다.
호출시 부서 넘버를 말한 뒤 이름을 부른다.
별칭은 호출을 사용한다.(EX . 00번 부서의 XXXX님! 사장실로 와주세요)

조건1.데이터를 합칠 때 무조건 CONCAT만을 사용한다.
조건2.이름을 부를 때 첫문자는 대문자로 나머지는 소문자로 변환한다.
조건3.부서번호를 낮은 순서대로 정렬하여 호출한다.
*/

SELECT CONCAT(DEPTNO,CONCAT('번 부서의',CONCAT(INITCAP(ENAME),'님 사장실로 와주세요')))AS"호출" FROM EMP
WHERE MGR = 7839
ORDER BY DEPTNO ASC;

/*예제 (CONCAT) 
1. JSSTU테이블에서 지각한 사람들을 호출한다.
호출시 조를 말한 뒤 이름을 부른다.
별칭은 '원장님 호출'을 사용한다.(EX . 00조 XXX님! 원장실로 와주세요)

조건1.데이터를 합칠 때 (1)CONCAT (2) ||
조건2.생년월일이 빠른 순서대로 호출한다.
*/
SELECT * FROM TAB;

--CONCAT 사용
SELECT CONCAT(GROUPNO, CONCAT('조',CONCAT(STUNAME,'님! 원장실로 와주세요')))AS "원장님 호출"
FROM JSSTU
WHERE GROUPNO = 6 
ORDER BY STUBIRTH ASC;

--|| 사용
SELECT GROUPNO||'조 '||STUNAME||'님! 원장실로 와주세요'AS "원장님 호출"
FROM JSSTU
WHERE GROUPNO = 6 
ORDER BY STUBIRTH;