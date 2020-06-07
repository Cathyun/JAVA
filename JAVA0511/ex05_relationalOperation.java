/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 관계연산자 (relationalOperation)
  Version : 1.1   
*/



package JAVA0511;

public class ex05_relationalOperation {

	public static void main(String[] args) {
		// 정수형 변수를 2개 선언
		int num1 = 7;
		int num2 = 2;
		//>,<,>=,<=,==,!= 연산수행
		
		boolean result;
		
		result = num1 > num2;
		System.out.println(" > 결과 : "+ result);
		
		result = num1 < num2;
		System.out.println(" < 결과 : "+ result);
		
		result = num1 >= num2;
		System.out.println(" >= 결과 : "+ result);
		
		result = num1 <= num2;
		System.out.println(" <= 결과 : "+ result);
		
		result = num1 == num2;
		System.out.println(" == 결과 : "+ result);
		
		result = num1 != num2;
		System.out.println(" != 결과 : "+ result);
	}

}
