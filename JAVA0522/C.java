/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : C
  Version : 1.1   
*/
package JAVA0522;

public class C extends A {
         //C가 A에게 상속 받을 것이다.
	public static void main(String[] args) {
		
        A a = new A();
		
		a.pubilc1 = 10;
		a.potected1 = 10;
		a.default1 = 10;
//		a.private2 = 10;
		
		a.pubilc2();
		a.potected2();
		a.default2();
//		a.private2();
	}

}
