/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : AirConMain2
  Version : 1.1   

*/
package JAVA0520;

public class Ex00_AirConMain2 {

	public static void main(String[] args) {
		Ex00_AirCon airCon1 = new Ex00_AirCon();
		Ex00_AirCon airCon2 = new Ex00_AirCon();
		
		airCon1.color = "Blue";
		airCon2.color ="white";
		System.out.println("airCon1.color : "+ airCon1.color);
		System.out.println("airCon2.color : " + airCon2.color );
		
		System.out.println("== 필드값 선언, 메소드 호출==");
		//airCon1 
		//필드값 초기화 (color,temp,company,price,size)
		airCon1.color ="Gray";
		airCon1.temp = 20;
		airCon1.company = "Samsung";
		airCon1.price = 200;
		airCon1.size = 20;
		
        //메소드 호출(on,off,up,down)
		airCon1.downTemp();{
			System.out.println(airCon1.temp);
		}
		airCon1.upTemp();{
			System.out.println(airCon1.temp);
		}
		airCon1.onPower();
		airCon1.offPower();
		System.out.println("=================");
		airCon1.downTemp();
//		airCon1.upTemp();

		
		//airCon2 필드값 초기화 + 메소드 호출
		//필드값 초기화
		airCon2.color ="white";
		airCon2.temp = 17;
		airCon2.company = "LG";
		airCon2.price = 180;
		airCon2.size = 20;
		//메소드 호출
		airCon2.downTemp();
		airCon2.upTemp();
		airCon2.onPower();
		airCon2.offPower();
		System.out.println("=================");
//		airCon2.downTemp();		
		airCon2.upTemp();
		
		System.out.println("==여기서부터 호출==");
		System.out.println("airCon1.color : "+ airCon1.color);
		System.out.println("airCon1.temp : "+ airCon1.temp);
		System.out.println("airCon1.company : "+ airCon1.company);
		System.out.println("airCon1.price : "+ airCon1.price);
		System.out.println("airCon1.size : "+ airCon1.size);
		
		
		airCon2 = airCon1;
		System.out.println();
		System.out.println("airCon2.color : "+ airCon2.color);
		System.out.println("airCon2.temp : "+ airCon2.temp);
		System.out.println("airCon2.company :"+airCon2.company);
		System.out.println("airCon2.price : "+ airCon2.price);
		System.out.println("airCon2.size :"+ airCon2.size);
		
		
		
		
		
		
	}

}
