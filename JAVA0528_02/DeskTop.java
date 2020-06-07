package JAVA0528_02;

public class DeskTop extends Computer {

	
	//추상 메소드를 선언한 것을 재정의된다.
	@Override
	public void display() {
		System.out.println("DeskTop display()");
		
	}

	@Override
	public void typing() {
		System.out.println("DeskTop typing()");
		
	}
	
	     //Computer 상속
	     
	
	
	
        //display()
	    //sysout => "DeskTop display()"
	
	
	    //typing()
	    //sysout => "DeskTop typing()"
	
	}
