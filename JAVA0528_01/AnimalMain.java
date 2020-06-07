/* 
  Date : 2020.05.28
  Author : 	youhyunseo
  Description : 추상클래스 메인
  Version : 1.1   
*/
package JAVA0528_01;

public class AnimalMain {

	public static void main(String[] args) {
	    
		//Animal, Dag,Cat객체 생성
		
		//추상메소드는 객체를 생성할 수 없다
		//Animal sc = new Animal();
		
		Dog dog = new Dog();
		Cat cat = new Cat();
	    
		//추상메소드 재정의가 잘되었는지 확인하는 방법
		System.out.println("첫번째 : 객체생성");
		dog.breath();
		dog.sound();
		cat.breath();
		cat.sound();
		
		System.out.println("두번째 : 자동 타입 변환");
		Animal animal = null;
		
		animal = new Dog();
		animal.sound();
		
		animal = new Cat();
		animal.sound();
		
		System.out.println("세번째 : 다형성(유틸클래스)");
		
		AnimalInfo aninfo = new AnimalInfo();
		aninfo.animalSound(dog); // dog => new Dog가 된다.
		aninfo.animalSound(cat);
		//객체 생성 이후 사용가능
		//ex)Dog dog = new Dog();
		
		
		
		
		
		
		
		
		

	}

}
