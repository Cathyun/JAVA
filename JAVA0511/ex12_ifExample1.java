/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 조건문연습문제1(ifExample1)
  Version : 1.2   
*/
package JAVA0511;

import java.util.Scanner;

public class ex12_ifExample1 {

	public static void main(String[] args) {
		//문제 성적 출력 예제
		// 점수를 입력받아서
		//90점 이상이면 "A학점입니다."출력
		//A : 90~100
		//B : 80~89
		//C : 70~79
		//D : 60~69
		//F : 60 미만
        
	    Scanner sc = new Scanner(System.in);
		//1. 스캐너 적용
	    
	    int score; //2. int로 변수값을 정수로 만듦. 
	    
	    System.out.print("점수를 입력하세요 :");//3.점수를 입력할 print를 작성.
	    score = sc.nextInt();
	    //4. 변수 입력: 변수 입력시 = 뒤에 sc.nextInt()를 작성.
	    
        System.out.println("점수는 :");
        //5. 프린트할 값 설정
        
        if (score >= 90) {
        	System.out.println("A학점입니다.");
        } else if(score>=80) {
        	System.out.println("B학점입니다.");
        } else if(score>=70) {
        	System.out.println("C학점입니다.");
        } else if(score>=60) {
        	System.out.println("D학점입니다.");
        } else
            System.out.println("F학점입니다.");

        //6. 조건문을 작성해서 결과가 알맞게 나올 수 있도록 함.
        
        
		

	}

}
