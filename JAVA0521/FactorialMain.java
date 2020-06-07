/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : FactorialMain
  Version : 1.1   
*/

package JAVA0521;

import java.util.Scanner;

public class FactorialMain {

	public static void main(String[] args) {
		//숫자를 입력받아서 
		//getFactorial함수 호출
		//get함수 호출
		
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자입력>>");
		int number = 0;
		number = sc.nextInt();
		
		Factorial ft = new Factorial();
//		int factorial = ft.getFactorial(number);
//		System.out.println("factorial : " + factorial);
		
        int power = ft.getpower(number);
        System.out.println("power : " + power);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
