/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : switchCase2
  Version : 1.0   
*/
package JAVA0512;

import java.util.Scanner;

public class EX05_switchCase2 {

	public static void main(String[] args) {
		//switch- case문 사용해서
		//월별 계산하기
		
		int month;
		int day = 0 ;
		Scanner sc =new Scanner(System.in);
		
		System.out.println("월을 입력하세요>>");
		month = sc. nextInt();
		
		switch(month) {
		case 1: //가로로 나열해도됨!!!
		case 3: //변수 순서 상관없음!!!
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			day = 31;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			day = 30;
			break;
		case 2:
			day = 28;
			break;
		default:
			System.out.println("값을 잘못입력했습니다.");
			break;
			
		}
		                          // 지금상태로는 {}가 없어 밑에 있는
		// System.out.println("입력하신 "+ month +"월은 "+ day +"일까지 입니다. ");
		//로 나타남.
		 if (month>0 && month<=12) { // 0을 >=1로 해도 됨!!!
			 //if (month>=1 && month<=12)
			 //if (month>0 && month<13)
			 System.out.println("입력하신 "+ month +"월은 "+ day +"일까지 입니다. ");
		 } else {
			 System.out.println(); //else가 없어도됨!!.
		 }
	}//day : 오류가 나는 이유 마지막 day를 설정하지 않기 때문
	//마지막 부분에 day=0이라고 설정하거나 처음에 int day=0 오류가 나지 않는다.
}
