/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : FieldIntitValueMain
  Version : 1.1   
*/
package JAVA0520;

public class Ex01_FieldIntitValueMain {

	public static void main(String[] args) {
		
		EX01_FieldIntitValue yhs = new EX01_FieldIntitValue(); //새로운 필드를 선언해준다.
		                    //정하고 싶은 변수를 사용한다.
		
		//EX01_FieldIntitValue에 있는 필드를 정의한 값을
		//압축하여 Ex01_FieldIntitValueMain 클래스로 가지고 온다.
		
		//정수형 초기값 확인
		System.out.println("\n정수형 초기값확인");
		System.out.println("byteField :"+ yhs.byteField);
		System.out.println("shortField : "+ yhs.shortField);
		System.out.println("intField : "+ yhs.intField);
		System.out.println("longField : "+ yhs.longField);
		
		//실수형 초기값 확인
		System.out.println("\n실수형 초기값확인");
		System.out.println("floatField : "+ yhs.floatField);
		System.out.println("doubleField : "+ yhs.doubleField);
		
		//문자형 초기값 확인
		System.out.println("\n문자형 초기값확인");
		System.out.println("charField : "+ yhs.charField);
		
		//논리형 초기값 확인
		System.out.println("\n논리형 초기값확인");
		System.out.println("booleanField : "+ yhs.booleanField);
		
		//참조형 초기값 확인 배열초기값 확인
		System.out.println("\n참조형 초기값확인");
		System.out.println("arrField : "+ yhs.arrField); 
		System.out.println("referenceField : "+ yhs.referenceField); 
	}

}
