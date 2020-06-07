/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : Carmain
  Version : 1.1   
*/
package JAVA0521;

public class Carmain {

	public static void main(String[] args) {
//		Car yh_car = new Car();
//		Car hs_car = new Car();
//		Car yj_car = new Car();
//		Car ic_car = new Car();
//		
		//Car ic_car = null;
		//ic_car = new Car();
		
		//yh car 색상 검정
		//제조사 bmw
		//최고속도 :200
//		yh_car.color = "Black";
//		yh_car.company = "BMW";
//		yh_car.speed = 200;
//		System.out.println("yh_car.color : " + yh_car.color);
//		System.out.println("yh_car.company : " + yh_car.company);
//		System.out.println("yh_car.speed : " + yh_car.speed);
//        
//		System.out.println(yh_car.toString());
//		
		//hs_car 색상 : 하늘색(매개변수)
		//ha_car 속도 : 250 (매개변수)
		//hs_car 타입 : 수소차
		//hs_car 모델 : RB 
		//hs_car 제조사 : 아우디
		Car hs_car = new Car("하늘색",250);
		hs_car.type = "수소차";
		hs_car.model = "RB";
		hs_car.company = "아우디";
		System.out.print("hs_car");
		System.out.println(hs_car.toString());
		
	    // yj_car 색상 : 흰색(매개변수)
	    // yj_car 속도 : 210
		// yj_car 타입= 가솔린
		// yj_car 모델 : K5
	    // yj_car 제조사 : 기아(매개변수)
		Car yj_car = new Car("white","기아");
		 yj_car.type = "가솔린";
		 yj_car.speed = 210;
		 yj_car.model = "K5";
		 System.out.print("yj_car");
		 System.out.println(yj_car.toString());
		 
	    // ic_car 색상 : 회색(매개변수)
	    // ic_car 속도 : 300(매개변수)
		// ic_car 타입 : 전기차(매개변수)
	    // ic_car 모델 : SJ5(매개변수)
	    // ic_car 제조사 : 테슬라(매개변수)			
				
		Car ic_car = new Car("Gray",300,"전기차","SJ5","테슬라");
		System.out.print("ic_car");
		System.out.println(ic_car.toString());
		
		Car yhs_car = new Car(300,"빨강색");
		yhs_car.type = "휘발유";
		yhs_car.model = "벤츠";
		yhs_car.company = "테슬라";
		System.out.print("yhs_car");
		System.out.println(yhs_car.toString());
		
		//오후 가스 잔량==========================================================
		
	    System.out.println("gas : "+hs_car.gas); //초기값이 없으므로 0으로 나옴
	    hs_car.setGas(10); //10을 추가하여 gas의 잔량을 넣어주면 
	    System.out.println("gas충전 : "+hs_car.gas); //10으로 gas값이 나옴
				
		boolean gasState = hs_car.isLeftGas();//가스가 지금 잔량에서 없을 때까지 하려면 boolean을 사용한다.
		if(gasState) {
			System.out.println("================================");
			System.out.println("출발");
			hs_car.run();
		}
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
		
	}

}
