/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 배열 예제(ArrayExample)
  Version : 1.1   
*/

package JAVA0514;

import java.util.Scanner;

public class Ex05_ArrayExample {
	public static void main(String[]args) {
		//3열 1차원 배열을 선언하고 3개의 값을 입력 받아서 
		//입력 받은 값의 총합, 평균을 구하시오
		
		Scanner sc=new Scanner(System.in);
		
		int arr[]= new int[3]; 
		System.out.println("정수"+arr.length+"개 를 입력하시오");
		
		
		int sum = 0;
		
		for(int i=0; i<arr.length; i++) {
			System.out.println(i+1 +"번째 정수를 입력하세요.");
			arr[i] = sc.nextInt();
			//arr[0]<<=입력
			//arr[1]<<=입력
			//arr[2]<<=입력
			
			sum +=arr[i];
			//arr[0]일 때 sum = 입력값1 //
			//arr[1]일 때 sum = 입력값1 + 입력값2
			//arr[2]일 때 sum = 입력값1 + 입력값2+입력값3
			
		}
		System.out.println("첫번째 정수는 : "+arr[0]);
		System.out.println("두번째 정수는 : "+arr[1]);
		System.out.println("세번째 정수는 : "+arr[2]);
		
		double avg = (double)sum/arr.length;
		//sum/arr.length; 
		//int 타입(정수로 나옴) >>>여기에 double를 추가하여 int를 int로 나누도록 함.
		System.out.println("입력한 점수의 총점은"+sum);
		System.out.println("입력한 정수의 평균은"+avg);			
		
		
	}

}
