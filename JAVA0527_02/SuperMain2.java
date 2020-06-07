package JAVA0527_02;

public class SuperMain2 {

	public static void main(String[] args) {
		Salesman2 sales2 = new Salesman2("유현서","웹개발팀",350,150);
        
		System.out.println("getEmloyeeInfo()");
		System.out.println(sales2.getEmployeeInfo());
		
		System.out.println("getSalesmanInfo()");
		System.out.println(sales2.getSalesmanInfo());
	}

}
