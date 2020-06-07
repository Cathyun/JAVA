/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : Ex04_iciaMain
  Version : 1.1   
*/
package JAVA0520;

public class Ex04_iciaMain {

	public static void main(String[] args) {
		Ex04_iciaStu ljh = new Ex04_iciaStu("이재홍",29,"게임","기장동","92.02.11");
		ljh.showInfo();
		
		ljh.downAge();
		ljh.showInfo();
		
		Ex04_iciaStu ohr = new Ex04_iciaStu("오형록",26,"게임","용현동","95.04.22");
		ohr.downAge();
		ohr.showInfo();
		
		Ex04_iciaStu smj = new Ex04_iciaStu("서민재",24,"게임","구월동","97.01.28");
		smj.downAge();
		smj.showInfo();
		

	}

}
