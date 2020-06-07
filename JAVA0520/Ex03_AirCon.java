/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : Ex03_AirCon
  Version : 1.1   
*/
package JAVA0520;

public class Ex03_AirCon {
	
	//여기서부터 필드
	String company; 
	String color;
	int price;
	int size;
	int temp;
	//여기까지 필드!!
	
	//여기서부터 생성자
	Ex03_AirCon() {
    } //=>>기본생성자 
    Ex03_AirCon(int size) {
		this.size = size; //=>>객체 생성
     } //=>>매개 변수 ints   
    
    //매개 변수(String company,String color)
    Ex03_AirCon(String color,String company) {
    	this.company = company;
        this.color = color ;
    }
    //매개변수 순서만 바꿔 사용할 수 없다.
    
    
    
    
//    Ex03_AirCon(모든 필드 값을 매개변수로 작성){
//    	,,,,,,,,,,,,,,,,,
//     ,,,,,,,,,,,,,,,,,,,,
//    ,,,,,,,,,,,,,,,,,,,,,,
//    ,,,,,,,,,,,,,,,,,,,,,,
//       }
//    
    Ex03_AirCon(String company,String color, int price, int size, int temp){
    	this.company = company ;
    	this.color = color;
    	this.price = price;
    	this.size = size;
    	this.temp = temp;
    
    }
    // 생성자 "오버로딩" : 각각 다른 매개 변수로 생성자를 여러 개 만드는 것
    
	//여기까지 생성자!!
	
    //여기서부터 메소드 
    
     void showInfo() { //main함수에 저장값을 넣을 수 있다!
        System.out.println("\ncompany : " + company + "\ncolor : " + color + "\nsize : " +
	    size + " \nprice : " + price + "\ntemp : " + temp ); 	
     }
   
    //1
	void onPower() {
		System.out.println("power on!");
	}
	//2
	void offPower() {
		 System.out.println("power off");
	}
	//3
	void upTemp() {
		temp++;
	}
	
	//4
	void downTemp() {
		temp--;
	}
	
	//여기까지 메소드
  }  	
	
	
	

