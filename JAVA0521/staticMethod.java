/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : staticMethod
  Version : 1.1   
*/
package JAVA0521;

public class staticMethod {
	
      //인스턴스 멤버 변수
       int memVar;	
       
	  //스테틱 멤버 변수
       static int staticVar;
       
	  //인스턴스 메소드
       void memMethod1() {
    	   int local = memVar; //멤버변수 
    	   local = staticVar;//static 변수 
    	   staticMethod1(); //static메소드
    	   memMethod2();//메소드 
    	   System.out.println("mamMethod1");
       }
       void memMethod2() {
    	   System.out.println("mamMethod2");
       }
       
      //static 메소드
       static void staticMethod1() {
    	   staticMethod st = new staticMethod();
    	   //멤버 변수과 메소드를 사용하기 위한 객체 생성
    	   
    	   int local1 = staticVar; //static변수
    	   staticMethod2(); //static메소드
    	   
    	   //int local = memVar; //멤버변수
    	   int local = st.memVar; 
    	   //memMethod2(); //메소드
    	   st.memMethod2();
    	   
    	   staticMethod2();
    	   System.out.println("staticMethod1");
    	  
       }
       static void staticMethod2() {
    	   System.out.println("staticMethod2");
       }
       



}
