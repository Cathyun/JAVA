/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : AirConMain
  Version : 1.1   
*/
package JAVA0520;

import java.util.Scanner;

import JAVA0519_1.Ex01_AirCon1;
//import 패키지 명. 클래스명;
//같은 패키지일 경우 따로 import 하지 않아도 된다.
public class Ex00_AirConMain {
//클래스는 한 파일에 두 개 이상도 선언이 가능
	//파일당 하나의 클래스만 선언
	public static void main(String[] args) {
//		int num;
//		num = 10;
//		Ex01_AirCon airCon;       //필드 선언
//		airCon = new Ex01_AirCon(); //객체생성
	
	    //int num=10;
//		Ex00_AirCon airCon = new Ex00_AirCon();
		//-->>추가설명
		//클래스명        객체명     = new 클래스명();
		//다른 클래스를 여기 클래스에서 가지고와서 사용할 수 있다.
		
		//20.05.20
		Ex00_AirCon airCon = new Ex00_AirCon("제조사");
		                         //생성자!! 
		
		//-->> Ex00_AirCon에서 String를 필드 선언한 것을 압축해서
		//company를 c로 지정했기때문에  = new Ex00_AirCon("제조사");에 적혀 있는 "제조사"로 
		//company값이 나온다.
		
		
		//20.05.20!!
		
	    Scanner sc = new Scanner(System.in);
	    
	    Ex01_AirCon1 airCon1 = new Ex01_AirCon1();
	    
	    //변수 초기화
	    //객체의 멤버(필드)에 접근 방법 : .(도트연산자) --->> 앞서 다른 Class에 있는 필드를 압축해서 가지고 온다는 뜻임.
	    
//	    airCon.color = "Gray"; // Ex01_AirCon에 지정해두면 메소드를 호출할 수 있다.
//	    airCon.temp = 20;
//	    airCon.price = 100;
	    System.out.println("airCon.size : " + airCon.size);
	    System.out.println("airCon.company : " + airCon.company);
	    System.out.println("airCon.color : " + airCon.color );
	    System.out.println("airCon.temp : " + airCon.temp);
	    System.out.println("airCon.price :" + airCon.price);
	    System.out.println();
	    
	    airCon.downTemp();{
	        System.out.println(airCon.temp);
	    }
	    airCon.upTemp();{
	    	System.out.println(airCon.temp);
	    }
	    
	    //메소드 호출 : on,off,up,down
	    //객체의 멤버(메소드)에 접근방법: .(도트연산자)사용
	    
	    airCon.onPower();
	    airCon.offPower();
	    System.out.println("==============");
	    airCon.downTemp();
	    System.out.println("현재온도(down) : "+ airCon.temp);
	    airCon.upTemp();
	    System.out.println("현재온도(up) : "+ airCon.temp);
	    
	    System.out.println("");
	}

}


