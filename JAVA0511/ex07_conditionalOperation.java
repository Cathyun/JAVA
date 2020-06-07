/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 논리연산자 (conditionalOperation)
  Version : 1.2   
*/



package JAVA0511;

public class ex07_conditionalOperation {

	public static void main(String[] args) {
		// 삼항 연산자

		
		//(조건식) ? 참일 때 값 : 거짓일 때 값 ;
		int inAge = 35;
		int hoonAge = 50;
		
		
		char resultChar;
		int resultInt;
		String resultStr;
		
		//(조건식)? 참일 때 값 : 거짓일 때 값 ;
		resultChar = (inAge < hoonAge) ? 'O' : 'X';
		//char 때문에 문자 하나만 적용할 수 있음.
		resultInt = (inAge < hoonAge) ? 0 : 1;
		
		resultStr = (inAge < hoonAge) ? "참일경우" : "거짓일경우";
		//String 는 더블퀘터가 와야함.
		
		
		
		System.out.println("resultChar : " + resultChar);
        System.out.println("resultInt : " + resultInt);
        System.out.println("resultStr : " + resultStr);
        
        
        //문제 
        //조건연산자를 사용하여 10이 짝수인 경우에는 ture,
        //홀수인경우 false 출력하는 조건 연산자를 작성하시오.
        
        int num = 10;
        boolean resultEven;
        
       //(조건식)? 참일 때 값 : 거짓일 때 값 ;
        resultEven = (num % 2 == 0) ? true : false;
        resultEven = (num % 2 == 1) ? false : true;
        System.out.println(resultEven);
        		
        
        
        
        
        
		
		
		
		
		
		
		
		
		
		
	}

}
