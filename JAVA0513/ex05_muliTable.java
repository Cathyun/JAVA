/* 
  Date : 2020.05.13
  Author : 	youhyunseo
  Description : 중첩 for문
  Version : 1.1   
*/

package JAVA0513;

public class ex05_muliTable {
       public static void main(String[]args) {
    	   //중첩for문을 이용하여
    	   //구구단을 작성
    	   //2단부터 9단!
    	   
    	  
//    	   for (int i=1; i<=9; i++) {
//    		  
//    		   for(int j=2; j<=9; j++) {
//    			   int num = i*j;
//    			   
//    			   System.out.print(j+"X"+i+"="+ num);
//    			   //앞에 j를 두고 뒤에 i를 두면
//    			   //j값을 i값으로 순서대로 옆으로 곱하게 된다.
//    			   //즉, 구구단이 2단부터 9단까지 가로로 보이게 된다.
//    			   System.out.print("\t");
//    			   //결과값에 띄어쓰기해서 나온다.
//    		   }
//    		   System.out.println(); 
//    	   }
    	   //구구단 홀수단 작성하기
    	 for(int i=1; i<=9; i++) {
    		 for(int j=2;j<=9;i++) {
    			  if(j%2==0) {
    				  continue;
    			  }	  
    				  int num = i*j;
    		    System.out.println(j+"X"+i+"="+num);
    		   }
    		  System.out.println();
    		 }
      }
  }

