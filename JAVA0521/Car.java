/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : Car
  Version : 1.1   
*/
package JAVA0521;

public class Car {
     //필드
	 //색상(color), 최고 속도(speed), 연료타입(type),모델명(model)
     
	String color;
	int speed;
	String type;
	String model;
	String company = "테슬라";
    
	
	//생성자
	//기본생성자
	Car(){
		
	}
	//매개 변수가 같은 //생성자가 있으면 오류가 생긴다.
//	Car(String company,int speed){
//		this.company = company;
//		this.speed = speed;
//	}
	//매개변수 : speed,  color 
	//->> 매개 변수의 순서가 바뀌어되 된다.
	Car(int speed, String color){
		this.speed = speed;
		this.color = color;
	}
	//매개변수 : color, speed
	Car(String color, int speed){
		this.color = color;
		this.speed = speed;
	}
	//매개변수 : color, company
	Car(String color,String company){
		this.color = color;
		this.company = company;
	}
	//매개변수 : color, speed,type, model company
	Car(String color,int speed,String type, String model, String company){
		this.color = color;
		this.speed = speed;
		this.type = type;
		this.model = model;
		this.company = company;
	}
	
	
	//메소드
	//SHOWINFO와 같이 한번에 메소드를 만드는 방법
	//Car클래스에서 마우스 오른쪽 - source - Generate to String - 누르고 필드 보두 체크 후  Geneate
	//오버라이드 : 상속에서 사용
	//부모 기능 재정의 
	
	@Override 
	public String toString() {
		return "Car [color=" + color + ", speed=" + speed + ", type=" + type + ", model=" + model + ", company="
				+ company + "]";
	}
	
	//오후 가스 잔량==================================================================================================
	
	//필드 추가 
	int gas;
	
	//메소드 추가
	void setGas(int gas) {
		this.gas = gas;
	}
	boolean isLeftGas() {
		 if(gas==0) {
			System.out.println("gas가 없습니다");
			return false; //조건문일 때는 retrun을 사용해도된다.
		} else {
			System.out.println("gas가 있습니다.");
			return true;
		}
	    
	}
	void run() {
		while(true) {
			if(gas>0) {
				System.out.println("달립니다.(gas 잔량 : "+ gas + ")");
				gas--;		
			}else {
				System.out.println("멈춥니다.(gas 잔량 : " + gas + ")");
				return;//메소드 종료
			}
		}
	}
    
}
