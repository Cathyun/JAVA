/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : iciaCafe
  Version : 1.0   
*/
package JAVA0512;

import java.util.Scanner;

public class ex06_iciaCafe {
	public static void main(String[] args) {
		// 키오스크 : 무인결제 시스템
		// 아메리카노(4,000원)
		// 바닐라라떼(4,500원)
		// 자몽허니레몬티(5,000원)
		// 바닐라초코라떼(5,500원)
		Scanner sc = new Scanner(System.in);
		int num = 0;
        int price = 0;
        String menu="";
        		
		System.out.println("ICIA cafe에 오신것을 환영합니다.");
        System.out.println("주문을 도와드리겠습니다.");
        //\n : 한줄띄우기
        //\t : 공백을 만듦
        System.out.println("1. 아메리카노 \t\t2.바닐라라떼");
        //[\]>>백스페이스 옆 원화 표시 
        System.out.println("3. 자몽 허니 블랙티 \t\t4. 바닐라 초코칩모카");
        System.out.println("메뉴를 선택해주세요.");
        
        num = sc.nextInt(); 
       
        switch(num) {
        case 1:
        	menu = "아메리카노";
        	price = 4000;
        	break;
        case 2:
        	menu = "바닐라라뗴";
        	price = 4500;
        	break;
        case 3:
        	menu = "자몽 허니 블랙티";
        	price = 5000;
        	break;
        case 4:
        	menu = "바닐라라떼";
        	price = 5500;
        	break;
        default:
			System.out.println("해당메뉴는 없습니다.");
			break;
        }
         if (num >= 1 && num <=4) {
        	 System.out.println("\n주문하신 메뉴는"+ menu);
        	 System.out.println("가격은 "+ price +"원 입니다.");
         }
         System.out.println("이용해주셔서 감사합니다.");
	}   
}
