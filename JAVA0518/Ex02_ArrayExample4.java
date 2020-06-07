/* 
  Date : 2020.05.18
  Author : 	youhyunseo
  Description : 배열 구구단
  Version : 1.1   

*/
package JAVA0518;

public class Ex02_ArrayExample4 {
       public static void main(String[]args) {
    	                                       //1. multi[10][10]
    	   int multi [][]  = new int [8][9];  //2.구구단 [행][열] multi[8][9]
    	   System.out.println(multi.length);    //원래 필요한 행열을 사용하여 
    	                                        //필요하지 않은 행열을 사용하지 않는 방법
    	   //i와 j값이 0이 되어 구구단은 처음 시작은 2이고 1이 처음 곱해지므로 ex)2x1
    	   //i에는 2를 j에는 1을 곱해준다.
           
    	   for(int i=0; i<multi.length;i++) {
    		   for(int j=0; j<=multi.length;j++) {
    			   //multi[9][8]
    			   //multi.length = 9
    			   //multi[i].length = 8
    			   multi[i][j] = (i+2)*(j+1);
    			   
    			   System.out.print((i+2) + " x "+ (j+1) + " = " + multi[i][j]+"\t");
    			   
    			   
    		 }System.out.println(); 	
    		 
    			  
    	}
    	 System.out.println(multi[0][0]);
    }
	
	
}
