package JAVA0527_04;

public class iciaTeacher extends iciaPerson{
     String subject;
     int commussion;
     
     @Override 
     public void finish() {
  	   System.out.println("교수님들은 5시 20분에 퇴근한다.");
     }
}
