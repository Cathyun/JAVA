/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : staticMethodMain
  Version : 1.1   
*/
package JAVA0521;

public class staticMethodMain {

	public static void main(String[] args) {
		// 메인 메소드
		//staticMethod.memMethod();
		staticMethod st = new staticMethod();
		
		st.memMethod1();//메소드
		st.memVar=0;//변수
		
		//static
		st.staticVar = 0;
		st.staticMethod1();
		
		staticMethod.staticVar = 0;
		
		staticMethod.staticMethod1();
		
		staticMethod.staticMethod2();
		
		
		//staticMethod2();
		//같은 클래스에서 바로 호출 가능
		//int iocal = staticMethod.staticVar;
		//int iocal = staticmemVar;
		//iocal = staticMethod.memVar;

	}

}
