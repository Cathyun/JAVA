package Java0512;

import java.util.Scanner;

public class bera형록 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		String size = null;
		int cnt = 0;

		int price = 0;

		System.out.println("베스킨라빈스에 오신 것을 환영합니다.");
		System.out.println("주문을 도와드리겠습니다.");

		System.out.println("1. 파인트 \t\t 2. 쿼터");
		System.out.println("3. 패밀리 \t\t 4. 하프갤런");
		System.out.println("사이즈를 선택해주세요.");
		int i = sc.nextInt();

		switch (i) {
		case 1:
			size = "파인트";
			price = 8200;
			cnt = 3;
			break;
		case 2:
			size = "쿼터";
			price = 15500;
			cnt = 4;
			break;
		case 3:
			size = "패밀리";
			price = 22000;
			cnt = 5;
			break;
		case 4:
			size = "하프갤런";
			price = 26500;
			cnt = 6;
			break;
		default:
			System.out.println("해당 사이즈는 없습니다.");
			break;
		}

		if (i >= 1 && i <= 4) {
			System.out.println("\n주문하신 메뉴는 " + size + " 입니다.");
			System.out.println("가격은" + price + "원 입니다.");
		}

		String flavor[] = new String[cnt];

		for (int j = 0; j < flavor.length; j++) {
			System.out.println(j + 1 + "번째 맛을 선택해주세요.");
			System.out.println("1.슈팅스타 \t\t 2.엄마는 외계인\t\t3.바람과 함께 사라지다");
			System.out.println("4.뉴욕치즈케잌\t\t5.레인보우샤벳트\t\t6.민트 초코");
			// t[i]
			sc.nextLine();

			int v = sc.nextInt();
			switch (v) {
			case 1:
				flavor[j] = "슈팅스타";
				break;
			case 2:
				flavor[j] = "엄마는 외계인";
				break;
			case 3:
				flavor[j] = "바람과 함께 사라지다";
				break;
			case 4:
				flavor[j] = "뉴욕치즈케잌";
				break;
			case 5:
				flavor[j] = "레인보우 샤벳트";
				break;
			case 6:
				flavor[j] = "민트 초코";
				break;
			default:
				System.out.println("해당 번호의 맛은 없습니다.");
				break;

			}

		}
		System.out.println("주문하신 맛은 ");
		for (int s = 0; s < flavor.length; s++) {		// 위에 저장된 flavor를 그대로 사용하기 때문에 s로 변수를 다르게 해도 상관이없다.
			if (s < flavor.length - 1) {				// if문에서 -1을 사용하는이유는 쉼표가 하나 더 붙기 때문
				System.out.print(flavor[s] + ", ");
			} else {
				System.out.print(flavor[s]);			// 이 else문을 넣어준 이유는 마지막에 ,를 없애기 위함이다.
			}
		}
		System.out.println(" 입니다.");
	}

}
