package JAVA0528_03;

public class PhoneInfo {
   void phoneInfo(SmartPhone smtp) {
	   //리턴타입 클래스명(상속하는 클래스명  변수명)
	   System.out.println("이름 : " + smtp.getName());
	   System.out.println("제조사 : " + smtp.getBrand());
	   System.out.println("가격:" + smtp.getPrice());
   }
}
