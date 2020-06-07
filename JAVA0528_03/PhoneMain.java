package JAVA0528_03;

public class PhoneMain {

	public static void main(String[] args) {
		Iphone iphone = new Iphone();
		Galaxy galaxy = new Galaxy();

		//1. 객체 생성
		System.out.println("첫번째");
		System.out.println("아이폰");
		System.out.println(iphone.getPrice());
		System.out.println(iphone.getBrand());
		System.out.println(iphone.getName());
		
		System.out.println();
		System.out.println("갤럭시");
		System.out.println(galaxy.getPrice());
		System.out.println(galaxy.getBrand());
		System.out.println(galaxy.getName());
		
		//2. 타입 변환
		System.out.println();
		System.out.println("두번째");
		SmartPhone sphone = null;
		
		sphone = new Iphone();
		System.out.println("아이폰");
		System.out.println(sphone.getPrice());
		System.out.println(sphone.getBrand());
		System.out.println(sphone.getName());
		System.out.println();
		
		System.out.println("갤럭시");
		sphone = new Galaxy();
		System.out.println(sphone.getPrice());
		System.out.println(sphone.getBrand());
		System.out.println(sphone.getName());
		
		//3. 유틸 클래스 
		System.out.println();
		System.out.println("세번째");
		PhoneInfo phoinfo = new PhoneInfo();
		
		System.out.println("아이폰");
		phoinfo.phoneInfo(iphone);
		System.out.println();
		System.out.println("갤럭시");
		phoinfo.phoneInfo(new Galaxy());
		
		
		
		
		
		
 		
		
	}

}
