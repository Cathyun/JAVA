/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : Calculator
  Version : 1.1   
*/
package JAVA0521;

public class Calculator {
      //메소드
	 int add(int x, int y) {
		 int result= x + y; // 두 수를 더한 값을
		 return result;//result로 리턴 해준다.
	 }
	 
	 double avg(int x, int y) {
		 double sum = add(x,y);//숫자를  더해줌
		 double result = sum/2;
		 return result;
	 }
	 
	 void excute(int x, int y) { //메인 함수에 적혀 있는 숫자를 대입
		 double result = avg(x,y);
		  //void는 리턴값이 없을 뿐 리턴은 사용해도 되는데 
		  //return;값을 출력문 위에 쓰면 
		  //출력문은 오류가 난다.
		 System.out.println("실행결과 : " + result); 
		
		 
	 }
	 
	 
	 
}
