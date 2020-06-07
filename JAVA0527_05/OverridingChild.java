/* 
  Date : 2020.05.27
  Author : 	youhyunseo
  Description : 상속2
  Version : 1.1   
*/
package JAVA0527_05;

public class OverridingChild extends OverridingParent{
     
	 //필드
	 String size = "20평";
	 
	 
	//메소드
	 String parentMethod() {
		 return "오버라이딩으로 자식메소드 재정의"; //int타입으로 했더니 오류가 난다.
	 }//String타입으로 바꿔준다. 필드를 String로 했기 때문!
	//부모 메소드를 자신 메소드에 호출해준다!
	 
	 
	 void pM() {
		 System.out.println("pM()상속후 호출");
	 }
	//Child에서 상속한 parent를 가지고 호출되어진다.
}
