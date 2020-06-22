package Bera;

import java.util.Scanner;

public class beraMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Client clent = new Client();
		beraSQL sql = new beraSQL();
		int num1 = 0;
		int num2 = 0;
		int num3 = 0;
		boolean run = true;

		int price = 0;
		int number = 0;
		String menu = "";

		sql.connect();
		System.out.println("베스킨라빈스에 오신 것을 환영합니다.");
		System.out.println("주문을 도와드리겠습니다.\n");

		System.out.println("1. 메뉴선택 \t\t 2. 주문취소");

		num1 = sc.nextInt();

		switch (num1) {
		case 1:
			// 메뉴 조회
			sql.select();
			System.out.println("사이즈를 선택해주세요");
			num2 = sc.nextInt();
			run = true;
			switch (num2) {
			case 1:
				menu = "파인트";
				price = 8200;
				number = 3;
				break;
			case 2:
				menu = "쿼터";
				price = 15500;
				number = 4;
				break;
			case 3:
				menu = "패밀리";
				price = 22000;
				number = 5;
				break;
			case 4:
				menu = "하프갤런";
				price = 26500;
				number = 6;
				break;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 선택해주세요1.");
				break;

			}

			break;
		case 2:
			System.out.println("주문을 취소하셨습니다. 다음에 다시 이용해주세요.");
			sql.conColse();
			run = false;
			break;

		default:
			System.out.println("다시 선택해주세요.\n");
			break;
		}

		if (num2 >= 1 && num2 <= 4) {
			System.out.println("\n주문하신 크기는 " + menu + " 입니다.");
			System.out.println("가격은" + price + "원 입니다.\n");
		}

		String flavor[] = { "슈팅스타", "엄마는 외계인", "바람과 함께사라지다", "뉴욕치즈케잌", "레인보우샤벳트", "민트초코" };

		if (run) {
			sql.fSelect();

			String[] xx = new String[6];

			for (int i = 0; i < number; i++) {

				System.out.println((i + 1) + "번째 메뉴를 선택해주세요 >>");
				num2 = sc.nextInt();
				System.out.println(flavor[num2 - 1] + "을(를) 선택하셨습니다.\n");
				xx[i] = flavor[num2 - 1];

			}

			System.out.print("주문하신 맛은 ");

			for (int i = 0; i < number; i++) {

				System.out.print(i + 1 + "." + xx[i] + " ");

			}

			System.out.println("입니다.");
			System.out.println("이용해 주셔서 감사합니다!!");

		}
	}

//			int cnt = 0;
//			String flavor[] = new String[cnt];
//
//			for (int j = 0; j < flavor.length; j++) {
//				System.out.println(j + 1 + "번째 맛을 선택해주세요.");
//				sql.fSelect();
//				// t[i]
//				sc.nextLine();
//
//				int v = sc.nextInt();
//				switch (v) {
//				case 1:
//					flavor[j] = "슈팅스타";
//					break;
//				case 2:
//					flavor[j] = "엄마는 외계인";
//					break;
//				case 3:
//					flavor[j] = "바람과 함께 사라지다";
//					break;
//				case 4:
//					flavor[j] = "뉴욕치즈케잌";
//					break;
//				case 5:
//					flavor[j] = "레인보우 샤벳트";
//					break;
//				case 6:
//					flavor[j] = "민트 초코";
//					break;
//				default:
//					System.out.println("해당 번호의 맛은 없습니다.");
//					break;
//
//				}
//
//			}
//			System.out.println("주문하신 맛은 ");
//			for (int s = 0; s < flavor.length; s++) {		// 위에 저장된 flavor를 그대로 사용하기 때문에 s로 변수를 다르게 해도 상관이없다.
//				if (s < flavor.length - 1) {				// if문에서 -1을 사용하는이유는 쉼표가 하나 더 붙기 때문
//					System.out.print(flavor[s] + ", ");
//				} else {
//					System.out.print(flavor[s]);			// 이 else문을 넣어준 이유는 마지막에 ,를 없애기 위함이다.
//				}
//			}
//			System.out.println(" 입니다.");

}
