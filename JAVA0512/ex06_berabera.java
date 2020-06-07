/*
  date : 2020.05.11
  Author : 이재홍 , 서재언 , 유현서 , 오형록 , 서민재
  Descriptin : bera bera
  Version : 6_1.0
*/
package JAVA0512;

import java.util.Scanner;

public class ex06_berabera {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int num;
		int price = 0;
		String menu = "";
		String flavor = "";
		
		System.out.println("베스킨라빈스에 오신 것을 환영합니다.");
		System.out.println("주문을 도와드리겠습니다.");

		System.out.println("1. 파인트 \t\t 2. 쿼터");
		System.out.println("3. 패밀리 \t\t 4. 하프갤런");
		System.out.println("사이즈를 선택해주세요.");
		num = sc.nextInt();

		System.out.println("종류를 선택해주세요.");
		System.out.println("1.슈팅스타 \t\t 2.엄마는 외계인");
		System.out.println("3.바람과 함께 사라지다\t4.뉴욕치즈케잌\t5.레인보우샤벳트");
		
		sc.nextLine();//앞뒤공백없이 입력값을 출력함.
		flavor = sc.nextLine();
		
		
		switch (num) {
		case 1:
			menu = "파인트";
			price = 8200;
			break;
		case 2:
			menu = "쿼터";
			price = 15500;
			break;
		case 3:
			menu = "패밀리";
			price = 22000;
			break;
		case 4:
			menu = "하프갤런";
			price = 26500;
			break;
		default:
			System.out.println("해당 메뉴는 없습니다.");
			break;
		}

		if (num >= 1 && num <= 4) {
			System.out.println("\n주문하신 메뉴는 " + menu + " 입니다.");
			System.out.println("가격은" + price + "원 입니다.");
		}
		System.out.println("주문하신 맛은");
		System.out.println(flavor);
		System.out.println("입니다");	
		System.out.println("감사합니다!!");
	}

}
