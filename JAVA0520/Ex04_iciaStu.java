/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : Ex04_iciaStu
  Version : 1.1   
*/
package JAVA0520;

public class Ex04_iciaStu {
        //ICIA교육원에 다니는 js반 훈련생에 대한 클래스 만들고
	    //메인 클래스에서 각자 같은 조원들에 개한  객체를 각각 선언해서 출력
	
	    //이름, 나이, 취미, 주소, 생년월일
	
	    //그사람 정보들 모두 출력하는 메소드 생성
	    //호출시 나이를 한살 추가하도록 하는 메소드 생성
	
	    String name;
	    int age;
	    String hobby;
	    String add;
	    String bith;
	    
	    
	    Ex04_iciaStu(String name,int age,String hobby, String add, String bith){
	    	this.name = name;
	    	this.age = age;
	    	this.hobby = hobby;
	    	this.add = add;
	    	this.bith = bith;
	    }
	    
	    
	    void showInfo() {
	    	System.out.println("\nname : "+name+"\nage : "+age+"\nhobby : "+hobby+"\nadd : "+add+
	    			          "\nbith : "+bith);	
	    }
	    
	    //나이를 빼주는 값
	    //int로 메소드를 만들기 때문에 리턴값을 정해주어야한다.
	    int downAge() {
	    	return age--;
	    }
	
	
}
