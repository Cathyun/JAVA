package JAVA0528_02;

public abstract class NoteBook extends Computer{
	
          //Computer 상속
	      //display()만 재정의 =>> NoteBook도 추상 클래스로 만들어줌
	
	@Override
	public void display() {
		System.out.println("NoteBook의 display()재정의");
		
	}

	
	} 
      

