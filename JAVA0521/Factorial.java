/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : Factorial
  Version : 1.1   
*/
package JAVA0521;

public class Factorial {
       //메소드
	
	//1.int getFactorial(intNum) //5인 경우 5*4*3*2*1
	//매개 변수로 전송된 숫자의 팩토리얼 값을 구해서 리턴함.
//	int getFactorial(int num){
//		int fact = 1;
//       for(int i=num; i>0;i--) {
//    	   //fact = fact * 1;
//    	   fact *=1;
//    	   System.out.println("fact:" + fact);
//    	   System.out.println("i :" + i);
//    	   System.out.println("num :"+ num);
//    	   System.out.println();
//    	   
//	}
//	   return fact; 
//	}

	
//	2. int getPower(int num)
//	매개 변수로 전송된 값까지의 제곱의 합을 구해 리턴
//    3인 경우 1*1 + 2*2 +3*3
	int getpower(int num) {
		int power = 0;
		for(int i = 1;i<=num;i++) {
			power +=i*i;
			
			System.out.println("i : " + i);
			System.out.println("i*i : " + i*i);
			System.out.println("power : " + power);
			System.out.println();
			
     }
	    return power;	
	
	}
	
   
	
	
	
	
	
	
	
	
	
	
	
}
