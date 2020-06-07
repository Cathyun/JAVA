/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : whileEx2
  Version : 1.1   
*/
package JAVA0514;

import java.util.Scanner;

public class EX01_whileEx2 {
	public static void main(String[] agrs) {

		// int account;
		// int balance;
		// boolean run = true;
		//

		// while 사용
		Scanner sc = new Scanner(System.in);//Scanner입력
		int account = 0; //통장만들기 통장에는 0원
		

		boolean run = true;//whlie사용하기 위해서 run(조건변수)선언, true 초기화
		int menu;

		while (run) {
			System.out.println("while문시작");
			System.out.println("----------------------------");
			System.out.println("1.예금 | 2. 출금 |3. 잔고|4. 종료");
			System.out.println("----------------------------");
			
			System.out.println("선택>>");
			menu = sc.nextInt();

			// switch-case사용
			switch (menu) {
			case 1://2.
				System.out.println("1.예금액>>");
				
				account += sc.nextInt();//예금액 입력
				break; //1번을 누를 경우 수행 후 switch문 탈출

			case 2:
				System.out.println("2.출금액>>");
				
				account -= sc.nextInt();
				break;

			case 3:
				System.out.println("3.잔고:" + account);
				// int c = sc.nextInt();
				break;

			case 4:
				System.out.println("4.종료");
				run = false;
				break;

			default:
				System.out.println("다시 입력해주세요 \n");
				
			}//switch문 종료
		   System.out.println("\n switch문 종료");	
		} // while문 종료
		System.out.println("프로그램을 종료합니다.");
	}
}
