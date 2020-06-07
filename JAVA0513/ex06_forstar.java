/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 별찍기
  Version : 1.1   
*/



package JAVA0513;

public class ex06_forstar {

	public static void main(String[] args) {
		
		for(int i=1; i<=5;i++) {
			//i = 1에서 *1개 //*=j
			//i = 2에서 *2개
			//
			//i = 2에서 *5개
			for(int j=1; j<=i; j++) {
		   System.out.print("*");
		  }
		  System.out.println();
		}
       
	}

}
