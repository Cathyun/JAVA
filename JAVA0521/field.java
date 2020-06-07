/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : field
  Version : 1.1   
*/
package JAVA0521;

public class field {
      /*
       * 1. 멤버 변수(필드)
       *   : 객체가 생성될 때 각 객체별로 초기화
       *   : 선언시 초기화 하지 않으면 초기화값 설정
       *   
       * 2. static 변수
       *   : 객체를 생성하지 않아도 참조 가능
       *   
       * 3. 로컬변수
       *   : 클래스명이 아닌 부분에서 선언되는 변수
       *   : 메소드나 초기화 블록에 선언되는 변수
       * 
       * 
       */
	
	
	//멤버 변수
	int size = 18;
	
	
	int iNum = 1000; 
	short sNum = 100;
	byte bNum = 10;
	long lNum = 10;
	
	//static 변수
	static int price = 200;
	
	//기본생성자
	 field(){	
	 }
	
	//매개 변수 : size
//	field(int size){
//		this. size = size;
//	}
	 //메소드 오버로딩 할 때는 변수를 다 다르게 해야한다.
	//매개변수 : bNum
	 field(byte bNum){
		 this.bNum = bNum;
	 }
	//매개변수 : sNum
	 field(short sNum){
		 this.sNum = sNum;
	 }
	//매개변수 : iNum
	 field(int iNum){
		 this.iNum = iNum;
	 }
	 
	//매개변수 : lNum
		 field(long lNum){
			 this.lNum = lNum;
		 }
	 
	 void showInfo() {
		 System.out.println();
		 System.out.println("iNum : " + iNum);
		 System.out.println("bNum : " + bNum);
		 System.out.println("sNum : " + sNum);
		 System.out.println("lNum : " + lNum);
		 return;
	 }
		
}
