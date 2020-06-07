/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : 에어컨클래스
  Version : 1.1   

*/
package JAVA0520;

public class Ex00_AirCon {
       
	//변수 정의 
	//필드(특성, 상태, 속성)
	
	String company; //필드에서는 1. 데이터 타입을 지정해줌!! ex) String
	String color;
	int price;//클래스에 값을 지정하고 AirConMain에 압축하여 호출할 수 있다.
	int size;
	int temp;
	
	//생성자
	/*
	 *     클래스(매개변수){
	 * 
	 *     }
	 * 
	 */
	 // 생성자 예제
	 // 리턴타입을 쓰지 않는다.
	 // 기본생성자 : Java 컴파일러가 기본적으로
	 // 생성자 메소드가 없으면 하나를 자동으로 만들어준다.
	 // 매개변수를 써도되고 안써도 된다.(기본생성자) 
	 
	 //생성자 형태1 =>> 다른 생성자가 없을 경우
	 Ex00_AirCon() {
		 
	 } //생성자를  이렇게 만들어도 작용할 수 있다.
     //생성자 형태2
      Ex00_AirCon(String company) {
		this. company = company; 
		//변수 값을 지정할 때 생성자의 들어간 매개 변수와 내용에 들어간 변수를 구분하는 방법
		 //1)위 필드에서 가지고 온 매개 변수를 생성자에 넣고
		//같은 단어의 변수를 넣었다면, 변수 값 앞에 this.을 넣어 
		//company에 뒤에 company를 대입한다라는 뜻임.
		//2)앞뒤 company를 구분하기 위해서는 pCompany라고 p를 붙여줌.
		
		//Ex00_AirCon(String c) {
		// this. company = c; 
		 //Ex00_AirCon 안에 있는 매개 변수(String, int 등등)를
		 //company를 c로 바꿔주라는 뜻임!	
		 //이것을 main함수가 있는 클래스로 가지고 가서
		 //Ex00_AirCon airCon = new Ex00_AirCon("제조사");이러한 형태로
		 //만들고 company를 제조사로 쓰겠다는 것임!! "제조사" 말고 null을 넣어도된다.
	 }
	
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
		//-->> 추가 설명 :----------- 메소드를 int로 바꾸려면 리턴으로 돌려줘야한다.
		//그러므로 return temp;를 주어야한다.
	}
	//4
	void downTemp() {
		temp--;
	}
	//5 --> 추가 설명
	void addUser() {
		 System.out.println("유저추가");
//		 return 0;
		//void가 아니면 리턴값을 주어야 한다.
	}
	//데이터 타입이  void인 경우 
	//리턴받을 데이터가 없을 경우
	
	
}
