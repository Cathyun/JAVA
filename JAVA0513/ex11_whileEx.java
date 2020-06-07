/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 반복문(while)ex
  Version : 1.1   
*/

package JAVA0513;

public class ex11_whileEx {

	public static void main(String[] args) {
		// while문을 이용해서 주사위를 던졌을 때
		//5가 나오면 종료하는 프로그램을 만드시오(if)
		
		boolean run = true;
		//while(false)일 때 반복문 종료
	    int cnt = 0;
	    
		while (run) {
		int dice = (int)(Math.random()*6)+1;
		    cnt++;
	        System.out.println("주사위 값:"+ dice);
	        
		    if (dice==5) {
//		    	 run = false;
		    	break;
		    } 

		}
       System.out.println("\n던진횟수:"+cnt);
       System.out.println("프로그램을 종료합니다.");
	}
	
}
