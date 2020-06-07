/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : Ex03_AirConMain
  Version : 1.1   
*/
package JAVA0520;

public class Ex03_AirConMain {

	public static void main(String[] args) {
		
		Ex03_AirCon airCon = new Ex03_AirCon(); 
		//기본생성자    
		Ex03_AirCon ac = new Ex03_AirCon(17);
		//매개변수(int s)  //객체명은 원하는 것으로 바꿀 수 있다.
		//매개 변수에 값을 넣어준다!!
		//int s = 17; =>> size는 17로 인출되어진다.
		
		airCon.showInfo(); //Ex03_AirCon에 저장된 값을 도드연산자를 통하여 압축하여 가지고 온다!!
		ac.showInfo(); //ac로 등록된 매개변수가 저장된 생성자에서 size를 가지고 와서 출력한다.
		               //다른 값은 출려되지 않았기 때문에 나오지 않는다.
		
		Ex03_AirCon yhs = new Ex03_AirCon("삼성","white");
		
		//showInfo를 Ex03_AirCon클래스에 넣어주었기 때문에 
		//객체명.showInfo를 넣어주면 Ex03_AirCon yhs = new Ex03_AirCon("삼성","white");넣어준
		//값이 yhs.showInfo();를 치면 나올 수 있다.
 	    yhs.showInfo();
 	    
 	    Ex03_AirCon yh = new Ex03_AirCon("LG","BLUE",185,20,15);
 	    yh.showInfo();
		
 	   
		
	}

}
