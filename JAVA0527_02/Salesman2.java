package JAVA0527_02;

public class Salesman2 extends Employee2 {
	//필드
    int commission;  //수당
    
	
    //직원정보 메소드
    String getEmployeeInfo() {
 	   return super.getEmployeeInfo()+ " , 수당 :" + commission;
 	   //super. : 상속 받은 클래스에서 가지고온 것이라는 뜻
    }
    
    String getSalesmanInfo() {
    	return "이름 : "+ name + " , 부서 : " + dept + ", 연봉 " + salary  + " , 수당 :" + commission; 
    }

    
    //기본생성자
//	public Salesman2() {
//		super();
//	}
    
	//매개 변수 생성자
    //상속 한 클래스에서 매개 변수 생성자를 생성하게 되면 상속 받은 매개변수와 상속 받은 클래스에 있는 
     //매개 변수에 함께 생성되어진다.  
    
	public Salesman2(String name, String dept, int salary, int commission) { 
		//Employee2에서 상속된 매개 변수도 가지고 온다.
		//(name, dept, salary) Employee2에서 가지고 온 매개 변수를 super()에 넣어준다.
		super(name, dept, salary);
    
		//super()은 상속받은 클래스에 생성자를 알수 있다.
		this.commission = commission;
		
	}
    
    
    
    
    
}
