package Project;

public class Client {
	private String  seller;
	private String  s_name;
	private int  s_price;
	private int  s_run;
	private int  s_date;
	private String  s_oil;
	private int  s_cc;
	private String  s_color;
	private String	s_number;
	private String s_phone;
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public int getS_run() {
		return s_run;
	}
	public void setS_run(int s_run) {
		this.s_run = s_run;
	}
	public int getS_date() {
		return s_date;
	}
	public void setS_date(int s_date) {
		this.s_date = s_date;
	}
	public String getS_oil() {
		return s_oil;
	}
	public void setS_oil(String s_oil) {
		this.s_oil = s_oil;
	}
	public int getS_cc() {
		return s_cc;
	}
	public void setS_cc(int s_cc) {
		this.s_cc = s_cc;
	}
	public String getS_color() {
		return s_color;
	}
	public void setS_color(String s_color) {
		this.s_color = s_color;
	}
	public String getS_number() {
		return s_number;
	}
	public void setS_number(String s_number) {
		this.s_number = s_number;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public Client() {
	}
	public Client(String seller, String s_name, int s_price, int s_run, int s_date, String s_oil, int s_cc,
			String s_color, String s_number, String s_phone) {
		this.seller = seller;
		this.s_name = s_name;
		this.s_price = s_price;
		this.s_run = s_run;
		this.s_date = s_date;
		this.s_oil = s_oil;
		this.s_cc = s_cc;
		this.s_color = s_color;
		this.s_number = s_number;
		this.s_phone = s_phone;
	}
}
