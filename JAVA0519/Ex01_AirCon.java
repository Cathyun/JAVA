/* 
  Date : 2020.05.19
  Author : 	youhyunseo
  Description : AirCon
  Version : 1.1   

*/
package JAVA0519;

public class Ex01_AirCon {
       
	//변수 정의 
	//필드(특성, 상태, 속성)
	
	String company; //필드에서는 1. 데이터 타입을 지정해줌!!
	String color;
	int price;
	int size;
	int temp;
	
	//메소드(기능, 동작, 행동)
	/*
	 *    리턴타입 메소드 명() {
	 *       실행내용
	 *    }
	 */
	//int 타입의 데이터를 반환 -> int 메소드명 () { }
	
	//1
	void onPower() {
		System.out.println("power on!");
	}
	//2
	void offPower() {
		 System.out.println("power off");
	}
	//3
	void upTemp() {
		temp++;
		System.out.println();
	}
	//4
	void downTemp() {
		temp--;
	}
	
	int addTemp() {
		temp = 0;
		return temp;
		
	}
	//데이터 타입이  void인 경우 
	//리턴받을 데이터가 없을 경우
	
	
}
