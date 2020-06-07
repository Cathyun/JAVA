/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 동전 바꾸기
  Version : 1.1   
*/
package JAVA0515;

import java.util.Scanner;

public class Ex01_CoinChange {

	public static void main(String[] args) {
		// 동전 갯수를 구하는 예제
		//어떤 금액을 입력하게 되면 각 동전이 몇개 씩 필요한지 출력하는 문제
		
		
		//ex)2680원
		//500월 : 5개
		//100원 : 1개
		//50원 :  1개
		//10원 :  3개
		
		//배열을 이용해 해결 / for문
		Scanner sc = new Scanner(System.in);
		
		System.out.println("입력할 금액>>");
		int money = sc.nextInt();
		
		int []coin = {500,100,50,10};
		
		int i;
		          //i<=coin.length-1
		for(i=0; i<coin.length; i++) {
			 //배열의 처음   //4
			int cCount = money/coin[i];
			System.out.println(coin[i] + "원 : " + cCount+ "개 입니다");
			
			//2680-2500(500*5)
			money -= coin[i]*cCount;//money가 나머지 값으로 다시 계산된다.
	
			  
		}
		  
	}

}
