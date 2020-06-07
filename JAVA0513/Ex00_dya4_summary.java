/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 4일차 정리
  Version : 1.1   
*/
package JAVA0513;

public class Ex00_dya4_summary {

	public static void main(String[] args) {
		// 1. 반복문for문
		/*
		      for(초기화식;조건식;증감식;){
		                 수행할 반복문 내용
		       }
		 
		 1.초기화식 int i=1
		 
		 //아래 내용이 반복되어진다.
		 2. 조건식 i<=10
		 3. (참일경우)수행할 반복문 내용
		    (거짓일경우)반복문종료  
		 4. 증감식
         5. 조건식
		 */
		
		  //2.중첩for문 구구단
		/*
		  for(초기화식;조건식;증감식){
		      for(초기화식;조건식;증감식){
		        //외부 for문 반복내용
		       //(외부 for문*내부 for문)횟수
		   }
		   //내부 for반복내용
		   //내부 for문 횟수
		  }
		 */
		 //3.continue문
		//반복문과 함께 사용
		//continue가 실행되면 이후 반복문 내용은 실행x
		//다시 증감식으로 
		
		/*for(초기화식;조건식;증감식){
		  
		   수행할 반복문 내용1;
		   continue
		    수행할 반복문 내용2;
		    수행할 반복문 내용3;  
		   
		 */
		
		//4.별찍기 예제
		//한줄씩 이해하면서 주석달기!
		
		//5.while
		//(1)for비슷하게 사용
		
		/*
		   초기화식
		   while(조건식)
		       반복할내용
		       증감식
		 */
		int i =0; //초기화식
		while (i<=10) { //조건식
			System.out.print(+i+" ");//반복할내용
			i++;//증감식
		}
		System.out.println();
		System.out.println("while이후 값:"+ i); 
        //(2)반복횟수를 정하지 않고 사용하는 방법
	    /*
	     boolean 조건변수 = true;
	     
	     while(조건변수){
	                      반복할 내용
	                      
	           //반복문 종료
	                        
	           1) 조건변수를 false로 만들기
	           2) break;           
	     }
	     
	     
	     
	     */
	
	
	
	}

}
