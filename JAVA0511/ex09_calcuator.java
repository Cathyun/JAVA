/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 계산기 (calcuator)
  Version : 1.2   
*/




package JAVA0511;

import java.util.Scanner;

public class ex09_calcuator {

	public static void main(String[] args) {
		// 두 개의 정수를 입력받아서 결과를 출력해보자!
		
		int num1; 
		int num2;
		double result;
		
		Scanner sc = new Scanner (System.in);
		
		System.out.println("첫번째 숫자를 입력 : ");
		num1 = sc.nextInt();
		
		System.out.println("두번째 숫자를 입력 :");
	    num2 = sc.nextInt();
	    
	    //산술연산자 사용
	    
	    result = num1 + num2;
	    System.out.println("덧셈결과 : " + result);
	    
		result = num1 - num2;
		System.out.println("뺄셈결과 : " + result);
		
		result = num1*num2;
		System.out.println("곱셈결과 : " + result);
		
		result = (double)num1/num2; 
		// num1과 num2가 모두 int로 되어졌기 대문에 정수로 결과가 나옴
		// double을 사용하여 실수까지 나올 수 있도록 함.
		System.out.println("나눗셈결과 : " + result);
		
		result = num1 % num2;
		System.out.println("나머지 결과 : "+ result); //나눗셈 결과에 대한 나머지
		
	}

}
