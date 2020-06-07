/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : DoWhile예제(UP&DOWN게임)
  Version : 1.1   
*/
package JAVA0514;

import java.util.Scanner;

public class Ex03_DoWhileEx {
	public static void main(String[]args) {
		//3번안에 맞추면 통과
		//그 이후에 맞추면 벌칙
		
		
		// ex)do-while를 활용하여 UP&DOWN게임 만들기
		//랜덤 숫자를 활용하여 범위의 값이 무작위로 나오도록 함.		
		int answer = (int)(Math.random()*45)+1;//랜덤 숫자가 1부터 45까지
		//숫자를 입력하기 전에 랜덤숫자가 나옴
	    int input = 0;
	    int count = 0;
	    
	    boolean run = true; 
	    
	    Scanner sc = new Scanner(System.in);
	    
	    System.out.println("UP&DOWN 게임 시작!");
	    
	    System.out.println(answer);
	    
	    do {
	    	System.out.println("1부터 45까지 숫자를 말하세요");
	    	input =sc.nextInt();//내가 입력한 숫자 
	    	//숫자나 문자를 입력하려면 =sc.next();이러한 형태가 있어야함!!!
	    	// input변수를 사용하여 위의 숫자를 입력할 수 있도록
	    	// 스캐너를 입력하여 작성한다.
	    	count++;
	    	//주사위를 던진 횟수를 하나씩 늘려준다.
	    	//증감식은 (ex)주사위를 던지는 행위를 가리킨다.
	    	
	    	if (answer > input) { //do안에 if를 적용하여 do에서 if값을 설정해준다.
	    		//ex)???(위에 나온 숫자)>15(내가 쓴 숫자)
	    		System.out.println("up! 더 큰 수 를 말하세요!");
	    		} else if (answer < input) {
	    			System.out.println("down! 더 작은 수 를 말하세요!");
	    		}else {//else는 정답을 맞출 때 출력!!
	    			System.out.println("정답은"+answer+"입니다.");
	    			System.out.println("시도한 횟수는"+count+"입니다.");
	    			 run = false;
	    		     break;
	    		}
	      } while(run); 
	    
	      if (count<=3) {
	    	  System.out.println("통과입니다");
	    	  System.out.println();
	      }else {
	    	  System.out.println("벌칙입니다");
	    	  System.out.println("벌칙은 뿅망치 입니다.");
	      }
	 }
}


