/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 반복문for(loopFor)
  Version : 1.0   
*/


package JAVA0512;

public class ex08_loopFor {

	public static void main(String[] args) {
		// 안녕하세요 10번 출력!!
		//System.out.println("안녕하세요");
		
		//반복문for
		/*
		  for(초기화식;조건식;증감식){
		     반복할 수행문
		  } 
		 
		*/      
		int i;
		        //[초기값] [횟수] [초기값+1]
		for(i=1; i<=10; i++) {
			System.out.println(i+"안녕하세요");
		                      //i를 추가하여 i값을 프린트할 수 있다.
		    //i=i(10번) +1
		  }System.out.println("반복문 이후 i 값 :" + i);
		
		//1부터 10까지 합을 출력
		
//        int sum = 0;//sum : 총합 변수 선언
//        for (i=1; i<=10;i++) {
//        	sum += i; //sum = sum + i;sum에 i를 더한다.
//        	//1부터10까지의 숫자를 순서대로 돌아가며, 처음sum값은 초기화 되고 계산됨.
//        	System.out.print("i :" + i + "\t =>>");
//        	System.out.println(" \t sum : "+ sum);
//        }	
//        System.out.println("1부터10의 합은"+sum);
       }
	}

