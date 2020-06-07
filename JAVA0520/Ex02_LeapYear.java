/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : LeapYear
  Version : 1.1   
*/
package JAVA0520;

public class Ex02_LeapYear {

	public static void main(String[] args) {
		
		//조건문 if로 윤년구하기
//		int year = Integer.parseInt(args[0]);
		// args[0]은 String타입
		// args[0] 대신에 String타입 숫자 데이터 입력
		
		int year = Integer.parseInt("2021");
		// int year = Integer.parseInt("2020"); 이렇게 할 경우 =>> year을 숫자로 바꿔주는 것을 뜻함!!
		
		System.out.println("Integer.parseInt  :" + year);
		boolean leapYear = false;
		
		leapYear = (year % 4 == 0 && year % 100 != 0 || year % 400 == 0); //윤년구하는 공식
		
		if(leapYear) {
			System.out.println(year + "년은 윤년 입니다.");
		}else {
			System.out.println(year + "년은 윤년이 아닙니다.");
		}

	}

}
