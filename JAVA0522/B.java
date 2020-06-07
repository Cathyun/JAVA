/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : B
  Version : 1.1   
*/
package JAVA0522;

public class B {

	public static void main(String[] args) {
		A a = new A();
		
		a.pubilc1 = 10;
		a.potected1 = 10;
		a.default1 = 10;
//		a.private2 = 10;
		//private은 자기 클래스 에서만 사용가능 하므로 오류가 난다.
		
		a.pubilc2();
		a.potected2();
		a.default2();
//		a.private2();
		
	}

}
