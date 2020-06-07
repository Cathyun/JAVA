/* 
  Date : 2020.05.27
  Author : 	youhyunseo
  Description : Salesman1
  Version : 1.1   
*/
package JAVA0527_01;

public class Salesman1 extends Employee1{
	//필드
    int commission;  //수당
    int salary = 300; 
	
    //직원정보 메소드
    String getEmployeeInfo() {
 	   return super.getEmployeeInfo()+ " , 수당 :" + commission;
 	   //super. : 상속 받은 클래스에서 가지고온 것이라는 뜻
    }
    
    String getSalesmanInfo() {
    	return "이름 : "+ name + " , 부서 : " + dept + ", 연봉 " + salary  + " , 수당 :" + commission; 
    }
	
}
