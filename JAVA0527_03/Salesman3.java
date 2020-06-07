package JAVA0527_03;

public class Salesman3 extends Employee3 {
	
	//필드
	String name = "이재홍";
	   
	
	//메소드
	String getNameLocal() {
	   String name = "현서짱"; //메소드 안에서 선언한 값을 출력 //현서짱
	   return name;
	}
	
	String getNameThis() {
		   return this.name;//this. : 클래스 자기 자신 //이재홍
		}
	String getNameSuper() {
		   return super.name; //super.: 부모 클래스 필드 선언한 값 //유현서
		}  
	   
}
