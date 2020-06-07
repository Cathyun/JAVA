/* 
  Date : 2020.05.27
  Author : 	youhyunseo
  Description : 상속
  Version : 1.1   
*/
package JAVA0527_05;

public class OverridingParent {
    //필드
	String company;
    String color;
    int size = 17;
    int temop;
    
    
    //메소드
    String parentMethod() {
    	return "부모 메소드 호출!";
    }
    
    void pM() {
    	System.out.println("pM호출");
    }
}
