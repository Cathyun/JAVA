/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 2차원 배열Array
  Version : 1.1   

*/

package JAVA0515;

import java.util.Scanner;

public class Ex06_Array {

	public static void main(String[] args) {
		//2차원 배열 
		//타입 [][] 배열명 = new[i][j];
		int [][] num1 = new int [2][3];//[3]이 두 개 있다.
		int [][] num2 = new int [3][3];
		
		num1[0][0] = 1;
		num1[0][1] = 2;
		num1[0][2] = 3;
		num1[1][0] = 4;
		num1[1][1] = 5;
		num1[1][2] = 6;
		
		
		for(int i=0; i<num1.length;i++) {
			for(int j=0; j<num1[i].length;j++) {
				System.out.println("num["+i+"]["+j+"] ="+ num1[i][j]);
			}
		}
	
		System.out.println(num1.length);
		System.out.println(num1[0].length);
		System.out.println(num1[1].length);
		
//		Scanner sc =new Scanner(System.in);
//		
//		String[][]words = {
//				{"chair","의자"},//[0][0]/[0][1]
//				{"desk","책상"},//[1][0]/[1][1]
//				{"coffee","커피"},//[2][0]/[2][1]
//				{"pen","볼펜"},//[3][0]/[3][1]
//				{"computer","컴퓨터"}//[4][0]/[4][1]
//		};
//		
//		for(int i =0; i<words.length;i++) {
//			for(int j=0; j<words[i].length; j++) {
//				System.out.println("words["+i+"]["+j+"] = "+ words[i][j]);
//			}
//			
//		}
//		for(int i =0; i<words.length;i++) {
//				System.out.println("문제"+(i+1)+words[i][0]+"의뜻은 무엇인가요");
//				String answer = sc.next();
//				
//				if(answer.contentEquals(words[i][1])) {
//					System.out.println("정답입니다");	
//				}else {
//					System.out.println("틀렸습니다.");
//					System.out.println(" 정답은 "+words[i][0]+"입니다");
//				}
//			
//		}
		//타입 배열명[]
	}

}
