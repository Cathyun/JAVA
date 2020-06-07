/* 
  Date : 2020.05.28
  Author : 	youhyunseo
  Description : 추상클래스2
  Version : 1.1   
*/
package JAVA0528_01;

public class Dog extends Animal{
             //Dog extends Animal(추상클래스 - Animal)을 작성하면 오류발생  
	         //-> 오버라이드로 재정의하여 오류해결
	
	@Override //재정의
	void sound() {
		System.out.println("멍멍");
		
	}
            
}
