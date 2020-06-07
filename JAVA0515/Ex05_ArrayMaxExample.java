/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : ArrayMaxExample
  Version : 1.1   

*/
package JAVA0515;

import java.util.Scanner;

public class Ex05_ArrayMaxExample {

	public static void main(String[] args) {
		
		int [] scores = null;
		
        Scanner sc = new Scanner(System.in);
		//학생수는 while문 안에서 
        //학생 수를 받아 
        //scores = new int[stuNum];
        
        boolean run = true;
        int menu;
        int i =0;
        int sum=0;
        int stuNum=0;
        
		while (run) {
			
	    System.out.println("---------------------------------------------");
		System.out.println("1. 학생수| 2. 점수 입력| 3.점수리스트|4. 분석|5. 종료");
		System.out.println("---------------------------------------------");
		
		System.out.println("선택>>");
        menu = sc.nextInt();
        
		switch(menu){
	    case 1: //학생수 입력
	    	System.out.print("학생수 >> ");
	    	stuNum = sc.nextInt();
	    	break;
	    	
	    case 2://점수 입력             //stuNum -->>변수 선언 후 값을 0으로 만들어줌.
	    	scores = new int [stuNum];//scores는 stuNum과 같은 수로 점수를 써야한다.
	    	//stuNum == scores.length 
	    	for(i = 0; i<scores.length;i++) { //학생수를 구할 때는 for문을 이용하여 
	    		System.out.println((i+1)+"번째 학생 점수 :");//여기서 scores.length는
	    		                                         //위에stuNum과 같다. 
	    	     scores[i] = sc.nextInt();
	    	}
	        break;  
	        
	    case 3: //점수리스트
	    	for( i=0; i<scores.length;i++) {
	    	System.out.println((i+1) +"번째 학생 점수 : "+ scores[i]);
	    	}
	        break;
	        
	    case 4://분석
	        double avg = 0;
	        int max = 0;
	                   //등록되어 있는 학생점수로 max값을 구한다.
	        for(i=0; i<scores.length; i++) {
	        	//최댓값 구하는  방법1.
	        	
	        	if(scores[i] > max) //반복문을 완성 후 if문으로 조건식을 만들어 max값을 
	        	   max = scores[i]; //구한다. 
	        	
	        	 //최댓값 구하는 방법 2. 삼항 연산자 (조건식)? 참일 때 : 거짓일 때 ;
		         //max = (score[i] > max) ? score[i] : max ;
	        	
	        	 //총점 
	        	sum +=scores[i];//평균에는 총점이 필요하기 때문에 sum(총점을 구해준다.)
	        }
	        System.out.println("최고점수" + max);
	        
	        avg = (double)sum/scores.length;
	        System.out.println("평균"+avg); 
	        //System.out.println("평균"+ (double)sum / scores.length); 
	        break;                       //평균을 구할 때는 위와 같이 써도 된다.
	        
	    case 5://종료
	    	System.out.println("5.종료");
	    	run=false;
	        break;
	        
		default:
			System.out.println("잘못 선택하였습니다.");
		}
	
	   } System.out.println("프로그램을 종료합니다.");

	}

}
