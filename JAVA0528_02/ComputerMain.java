package JAVA0528_02;

public class ComputerMain {

	public static void main(String[] args) {
		/* 1. 추상클래스는 객체(인스턴스)를 생성하지 못한다.
		 * 2. 추상클래스는 단수히 상속만을 하기 위해 만든 클래스다.
		 * 3. 하위 클래스가 어떤 클래스냐에 따라 구현 코드를 다르게 한다.  
		 */
		
		//Computer, DeskTop,NoteBook, MyNoteBook
        
		 //Computer computer = new Computer(); =>추상클래스
		 DeskTop desktop = new DeskTop();
		 //NoteBook notebook = new NoteBook(); = >추상클래스
		 MyNoteBook mynote = new MyNoteBook();
		 
		 
		//첫번째: 객체 생성
		 desktop.display();
		 desktop.typing();
		 mynote.display();
		 mynote.typing();
		 
		 //두번째 : 자동 타입 변환
		 System.out.println();
		 
		 Computer computer = null;
		 computer = new DeskTop();
		 computer.display();
		 computer.typing();
		 
		 System.out.println();
		 
		 computer = new MyNoteBook();
		 computer.display();
		 computer.typing();
		 
		 
		 //세번째: 다형성 : 유틸 클래스
		 System.out.println();
		 
		 ComputerInfo comdisplay = new ComputerInfo();
		 comdisplay.com(desktop);
		 comdisplay.com(mynote);
		 
		 
		 
		 
		
		
	}

}
