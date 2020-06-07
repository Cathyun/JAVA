/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 산술연산자 (arithmeticOperation)
  Version : 1.0   
*/


package JAVA0511;

public class ex04_arithmeticOperation {

	public static void main(String[] args) {
		// 정수형 변수를 2개 선언
		//+,-,x,/,% 연산수행
		
		int num1 = 7;
		int num2 = 2;
		
		int result;
		
		
		//덧셈
		
		result = num1+ num2;
		System.out.println("+결과:"+result); // 9 
		
		//뺄셈(-)
		result = num1 - num2; 
	    System.out.println("-결과:"+ result); //5
	    
		//곱셈(*)
	    result = num1*num2;
	    System.out.println("*결과:"+result);//14
	    
		//나눗셈(/)
	    result = num1 / num2;
	    System.out.println("/결과"+result);//3.xxxx
	        
		//나머지(%)
	    result = num1%num2;
        System.out.println("%결과"+result);//1		
		
		
		
		
		
		
		
	}

}
