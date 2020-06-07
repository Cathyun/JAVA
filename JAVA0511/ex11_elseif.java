/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 조건문(elseIf)
  Version : 1.2   
*/

package JAVA0511;

public class ex11_elseif {

	public static void main(String[] args) {
		int num1 = 5;
		int num2 = 5;
		
//		if (num1>num2) {
//			
//			System.out.println("num1이 크다");
//		} else {
//			System.out.println("num2가 크다");
//		} 
        
		if (num1>num2) {
			
			System.out.println("num1이 크다");
		} else if(num1<num2) {
			System.out.println("num2가 크다");
	    } else{
	    	System.out.println("num1과 num2가 같다.");
	    }
	   	/* 
	   	   if(조건식1){
	   	            조건식1이참일 때 실행
	   	   }else if(조건식2){
	   	           조건식2가 참일 대 실행      
	   	   } else {
                         조건식1과 조건식2이 모두 거짓일 때 실행 	   	   
 	   	   }
	   	 */
		
		
	}

}
