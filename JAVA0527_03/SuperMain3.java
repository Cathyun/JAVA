package JAVA0527_03;

public class SuperMain3 {
	public static void main(String[] args) {
	Salesman3 salea3 = new Salesman3();
	
	System.out.println("local.name : " + salea3.getNameLocal() );
	System.out.println("this.name : " + salea3.getNameThis());
	System.out.println("super.name : "+ salea3.getNameSuper());
	
	}
}
