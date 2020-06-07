/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : do-while문
  Version : 1.1   
*/
package JAVA0514;

public class Ex02_Dowhile {

	public static void main(String[] args) {
		//do - while
		/*
		 
		 do{
		 
		       반복할 내용
		       증감식   
		 } whil(조건식);
		 
		 
		 */
		//do-while
		
		
		//while과 do-while의 차이점
		//while은 반복문을 실행하기 전에 조건식 검사
		//do-while은 반복문 실행 후 조건식 검사
		//do-while은 무조건 반복문 한번은 실행
		
		int i=1;
		int sum=0;
		do { 
			System.out.println("do-while에서 i값:"+i);
			i++;
		    
		} while (i<=10);		     
		   
//		while (i<=10) {
//			System.out.println("while에서 i값 :"+i);
//			i++;
//		}
       
	} 

}















