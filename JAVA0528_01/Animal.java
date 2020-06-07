/* 
  Date : 2020.05.28
  Author : 	youhyunseo
  Description : 추상클래스1
  Version : 1.1   
*/
package JAVA0528_01;

public abstract class Animal {
	   //클래스가 추상 클래스가 되었다!!
    /*
     * 추상클래스(abstract class)
     * - 구체적이지 않은 클래스
     * - 추상 메소드를 꼭 포함해야 한다.
     * - 추상 메소드 재정의(자식 클래스에서 반드시 재정의 해야함)
     * - 자식 클래스(실제 클래스)의 규격을 정의
     *  : 메소드를 어떻게 구체화를 할지 틀을 제공
     *  ex)동물은 소리를 낸다. 
     */
	//메소드
	void breath() {
		System.out.println("숨을 쉽니다");
	}
	//추상메소드
	abstract void sound();
	         //메소드 void sound만 있을 경우 오류가 난다.(구현부가 없어서) //abstract을 붙여야함!!
	
	//{구현부} 없이 이름만 선언하는 메소드
	//메소드 맨 앞에 abstract를 붙인다.
	//    -> 접근제한자 뒤, 클래스 앞에도 abstract를 선언해야 오류해결
	
	
	
}
