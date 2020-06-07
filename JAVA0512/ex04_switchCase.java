/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : switchCase
  Version : 1.0   
*/


package JAVA0512;

import java.util.Scanner;

public class ex04_switchCase {
   public static void main(String[] args) {
	  /* switchCase형태
	   
	     switch(조건 변수){
	     case 변수값1 :
	                        해당조건이 맞을 때 실행
	     case 변수값2 :
	                        해당조건이 맞을 때 실행    
	            break ;
	     ~~~~~~~~
	     case 변수값n :
	                        해당조건이 맞을 때 실행    
	            break ;
	     defult:
	          case에서 어떤 조건도 맞지 않을 때 실행
	          break;                           
	     }
	   
	   */
	   Scanner sc = new Scanner(System.in);
	   
	   int num;
	   System.out.println("숫자 입력>>");
	   num = sc.nextInt();
	   
	   switch(num) {
	   case 0:
		   System.out.println("0을 입력했습니다.");
		   break; // break가 빠지면 다음 case와 함께 실행
		   // break :  break문은 다음 case문을 실행하지  않고 
		   // switch 문을 빠져나가기 위해 사용한다.
		   // break기 없으면 case가 연속으로 실행
	   case 1:
		   System.out.println("1을 입력했습니다.");
		   break;
	   case 2:
		   System.out.println("2을 입력했습니다.");
		   break;  
	   default:
		   System.out.println("그 외의 숫자를 입력했습니다.");
	   }   
   }
}
