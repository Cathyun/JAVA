/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : A
  Version : 1.1   
*/
package JAVA0522;

public class A {
	
     //접근제한자(Access Modifier)
	 /* 1. public(모두)
	  * -적용대상 : 클래스 ,필드, 생성자, 메소드
	  * -모든 클래스에서 접근가능
	  * 
	  * 2. protected(패키지)
	  * - 적용대상: 필드, 생성자,메소드
	  * - 지식클래스가 아닌 다른 패키지에 소속되어 있으면 접근
	  * 
	  * 3. default(상속 클래스)
	  * - 적용대상 : 클랫,. 필드, 생성자, 메소드
	  * - 다른 패키지에 소속된 클래스는 접근 불가능
	  * 
	  * 4. private(본인 클래스)
	  *  - 작용대상 : 필드, 생성자, 메소드
	  *  - 자신이 아닌 다른 클래스에서는 불가능
	  */
	 //필드
	 public int pubilc1;
	 protected int potected1;
	 int default1;
	 private int private1;
	 
	 //메소드
	 public void pubilc2() {
		 
	 }
	 
	 protected void potected2(){
		 
	 }
	 
	 void default2() {
		 
	 }
     
	 private void private2() {
		 
	 }
	 
	 public static void main(String[] args) {
			
	        A a = new A();
			
			a.pubilc1 = 10;
			a.potected1 = 10;
			a.default1 = 10;
			a.private1 = 10;
			
			a.pubilc2();
			a.potected2();
			a.default2();
			a.private2();
		}
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
