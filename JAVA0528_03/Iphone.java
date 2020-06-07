package JAVA0528_03;

public class Iphone extends SmartPhone {

	@Override //재정의
	String getPrice() {
		String price = "180만원";
		return price;//리턴 값에는 선언해주었던 
		//변수 명을 적어주는 것이 좋다.
	}

	@Override
	String getBrand() {
		String brand = "apple";
		return brand;
	}

	@Override
	String getName() {
		String name = "아이폰20a";
		return name;
	}
      
}
