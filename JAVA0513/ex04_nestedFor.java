/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 중첩 for문
  Version : 1.1   
*/


package JAVA0513;

public class ex04_nestedFor {
        public static void main(String[]args) {
        	/*
  		  for(초기화식;조건식;증감식){
  		      
  		       for(초기화식;조건식;증감식){
  		                      반복할 수행문 
  		       }
  		  }
  		     
  		 */
  	      for (int i=1; i<=2; i++) {
  	    	  //2번 반복
  	    	  for(int j=1; j<=3;j++) {
  	    		  //3번 반복 총5번 반복
  	    		  //실행할 반복문
                   System.out.print("i값:"+i);
                   System.out.println("j값:"+ j);
  	    	  }
  	    	  System.out.println("=====================");
  	      }
  	      
        }
}
