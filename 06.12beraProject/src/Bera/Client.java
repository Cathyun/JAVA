package Bera;

public class Client {

	private String beraSize;
	private String price;
	private String flavor;

	// getter , setter

	public String getBeraSize() {
		return beraSize;
	}

	public void setBeraSize(String beraSize) {
		this.beraSize = beraSize;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	// 기본생성자, 매개변수생성자
	public Client() {

	}

	public Client(String beraSize, String price, String flavor) {
		super();
		this.beraSize = beraSize;
		this.price = price;
		this.flavor = flavor;
	}

	// toString()

}
