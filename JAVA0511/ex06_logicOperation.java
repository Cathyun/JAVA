/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 논리연산자 (logicOperation)
  Version : 1.2   
*/
package JAVA0511;

public class ex06_logicOperation {

	public static void main(String[] args) {
		// 논리 연산자---AND연산,OR연산,NOT연산
		
		//AND연산 :&&
		//A && B 일 때 A,B,모두 TURE여야 결과가 TURE
		//A,B 중에 하나라도 FALSE가 있으면 결과는 FALSE
		
		boolean result;
		result = true && true; //true
	    System.out.println("true && ture : "+ result);
		
	    result = true && false; //false
	    System.out.println("true && false : " + result );
	    
	    result = false && false ; //false
	    System.out.println("false && false : " + result );
	    
		//OR연산: || --->>>SHIFT + 백스페이스 옆
		//A||B일 때 A,B하나리도  TURE가 있으면  TURE
		//A,B모두  FALSE여야 결과가  FALSE
	  
	    
	    result = true||true; //true
	    System.out.println("true||true:"+result);
	    result = false || true; //true
	    System.out.println("false||true:"+result);
	    result = false || false; //false
	    System.out.println("false||false:"+result);
	    
		//NOT연산:!
		//boolean변수 앞에 사용하면 ture가  FALSE로 
		// FALSE가 ture로 바뀜
		
	    result = true;
	    result = !result;//false
	    System.out.println("!result : " + result);
	  
	    result = !result;//true
	    System.out.println("!!result : " + result);
	   
	    result = !false; //true
	    System.out.println("!false : " + result);
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    

	}

}
