/* 
  Date : 2020.05.18
  Author : 	youhyunseo
  Description : 배열 Lotto
  Version : 1.1   

*/
package JAVA0518;


public class Ex03_Lotto {
     public static void main(String[]args) {
    	 
    	 
    	 int[]lotto = new int[7];
    	 System.out.println(lotto.length);
    	 System.out.print("이번주 당첨번호는");
    	 
    	 for(int i=0; i< lotto.length; i++) {
    		lotto[i] = (int)(Math.random()*45)+1;
    		 
    		
    	for(int j=0; j<i; j++) {
    		if (lotto[i] == lotto[j]) {
    			i--;
    			break;    			
    		}//중복값 제거를 위한 반복문
    	  }	
    	} 
    	 for(int k=0; k< lotto.length; k++) {
     		lotto[k] = (int)(Math.random()*45)+1;
     		 
     		if (k<lotto.length-1) {
     			System.out.print(lotto[k] + " ");
     		}else {
     			System.out.println("보너스 번호" + lotto[k] +" 입니다 ");
     		}
     	 } 
        System.out.println( );
     }
}
