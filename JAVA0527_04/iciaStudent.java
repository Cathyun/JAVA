package JAVA0527_04;

public class iciaStudent extends iciaPerson{
   String classroom;
   int grade;
   
   @Override //재정의한다.
   //상속받은 iciaPerson이 아니라 자신의 출력문(iciaStudent)이 나오게 된다.
   public void finish() {
	   System.out.println("교육생은 4시 50분에 퇴실한다.");
   }
}
