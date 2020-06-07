package JAVA0528_03;

public class Galaxy extends SmartPhone{

	@Override
	String getPrice() {
		String price = "30만원";
		return price;
	}

	@Override
	String getBrand() {
		String brand = "삼성";
		return brand;
	}

	@Override
	String getName() {
		String name ="갤럭시 럭셔리";
		return name;
	}

}
