package JAVA0528_05;

public class RemoteMain {

	public static void main(String[] args) {
		
		 System.out.println("첫번째");
		  Television tv = new Television();
		  tv.turnOn();
		  tv.setVolume(50);
		  tv.setMute(true);
		  tv.turnOff();
   
		  //인터페이스 변수 선언
		  RemoteControl rc = null;
		  //Audio객체를 인터 페이스 타입에 대입
		  System.out.println();
		  System.out.println("두번째");
		  rc = new Audio();
		  rc.turnOn();
		  rc.setVolume(11);
		  rc.setMute(true);
		  rc.turnOff();
		  
		  //다형성
		  System.out.println();
		  System.out.println("세번째");
		  SmartTVInfo sin = new SmartTVInfo();
		  sin.SmartTVInfo(tv, 6, false);
		  sin.SmartTVInfo(new Audio(), -1, true);
		  System.out.println();
		  System.out.println("스마트TV정보");
		  SmartTV smartTv = new SmartTV();
		  sin.Info(smartTv, smartTv,"NAVER", false,8);
		  
		  
		  
		  
	}

}
