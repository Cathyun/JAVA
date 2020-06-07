/* 
  Date : 2020.05.20
  Author : 	youhyunseo
  Description : Ex00_Question
  Version : 1.1   
*/
package JAVA0521;

public class Ex00_Question {
       //필드
	   String company;
	   //생성자
	   Ex00_Question(){
		   
	   }
	   //메소드
       void showInfo(){
    	   System.out.println("정보출력");
    	   return;//void에는 리턴 값이 없어서 리턴을 써도되지만 
    	         //리턴하지 않기 때문에 사용하지 않아도 된다.
       }
       
       int add(int x,int y){
    	   return x+y;
       }
       
       //메인
        public static void main(String[]args) {
        	
        Ex00_Question yh = new Ex00_Question();
        	
       //초기화
       	yh.company = "ICIA";
       	System.out.println(yh.company);
       	
       	//호출
       	yh.showInfo();
        
       	//return값 확인
       	yh.add(10,5);
       	System.out.println(yh.add(10,5));
       	
       	
       	
       	
       	
       	
       	
       	
       	
        	
        	
        	
        }

}   
