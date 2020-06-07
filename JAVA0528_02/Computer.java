package JAVA0528_02;

public abstract class Computer {
        //추상 메소드
	    //display(),typing()
         	     
	    public abstract void display();
	    public abstract void typing();
	
	   //메소드 
	   //turnOn() , turnOff()
       
	   public void turnOn() {
		   System.out.println("전원을 켭니다.");
	   }
	   
	   public void turnOff() {
		   System.out.println("전원을 끕니다.");
	   }
	    
	   //public,void
 	
}
