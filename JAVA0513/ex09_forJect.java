/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 별찍기조별과제
  Version : 1.1   
*/
package JAVA0513;

public class ex09_forJect {

	public static void main(String[] args) {
		
		for(int i=1; i<=4; i++) {
			
			for(int j=1; j<=4-i; j++) {
				System.out.print("□");
			}
			for(int k=1; k<=2*i-1;k++) {
				System.out.print("■");
			}
			for(int j=1; j<=4-i; j++) {
				System.out.print("□");
			}
			 System.out.println(); 
		}
	}

}
