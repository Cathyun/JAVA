/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : s부터n까지구하기
  Version : 1.1   
*/
package JAVA0513;

import java.util.Scanner;

public class ex02_forSnumToLnum {
     public static void main(String[]args) {
    	//for문을 사용해서 두개의 정수 (시작값, 끝나는 값)를 입력(Scanner)받아서
    	//총합을 구하는 프로그램을 만들어보시오.
    	//교수님과 함께
    	//Scanner sc = new Scanner(System.in);
    	//int sNum=0;
    	 //int lNum=0;
    	 //int sum =0;
    	 
    	 //System.out.println("시작값>>");
    	 //sNum = sc.nextInt();
    	 //System.out.println("끝나는값>>");
    	 //lnum = sc.nextInt();
    	 //for (i = sNum; i<= lnum; i++) {
         //    sum += i; 
         // System.out.print("i값:"+i+ "\t=>");
         // System.out.println("\t sum:"+sum);
         // 	}   
         // System.out.println(sNum + "부터" + lNum +"까지의 합은 :" + sum);
         // System.out.println("반복문 이후 i값:"+i); 
         // 	 
         //  }
    
    	int i;
    	int num1 = 0;//초기값설정 "변수=0"
    	int num2 = 0;
    	int sum=0;
    	
    	
    	Scanner sc = new Scanner(System.in);
    	
    	System.out.println("첫번째 숫자");
    	num1 = sc.nextInt();
    	System.out.println("두번째숫자");
    	num2 = sc.nextInt();
    	
    	for (i = num1; i<= num2; i++) {
    		sum += i; 
//    		System.out.print(i);
//    		if(i<num2) {
//    		System.out.print(" + ");
//    		} else {
//    			
//    			System.out.print(" = ");
//    		}
    	    System.out.print("i값:"+i+ "\t=>");
    		System.out.println("\t sum:"+sum);
    		
    		// 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 55
    	}
    	System.out.println(sum);
    		
    	
    	System.out.println(num1 + "부터" + num2 +"까지의 합은 :" + sum + "입니다.");
     }

     
}
