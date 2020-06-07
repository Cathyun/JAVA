/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 배열찾기 
  Version : 1.1   

*/
package JAVA0515;

import java.util.Scanner;

public class Ex04_ArrayMax {

	public static void main(String[] args) {
		//5열짜리 1차원 배열을 선언
		//스캐너를 이용하여 값 5개를 입력
		//입력값 중 가장 큰 값을 구하는 문제
		
		
		int []arr = new int[5];//0~4까지 arr[]배열 안에 있는 것임.
		
		Scanner sc = new Scanner(System.in);
		
		int max = 0;//max값을 0으로 초기값을 만들어준다.
		int num;//정수를 적을 변수 입력
		
	    System.out.print("정수"+arr.length+"개를 입력해주세요.");
	    
	    
	    for(int i=0; i<arr.length; i++) {
	    	num=sc.nextInt();
	    	arr[i] = num;//배열의 수가 num이 일치한다면 i값을 하나 더 올려준다.
	    	
	    	System.out.println("입력받은 정수는 arr["+i+"] : "+arr[i]+"입니다");
	    	
	    	//if조건문으로 max값을 정할 수 있다.
	    	if(arr[i]>max) { //max=0이 arr[i]보다 작으면 max는 arr[i]가 되어
	    		max = arr[i];//arr[i]값을 넣어준다.
	    	
	    	//삼항연산자 -->> 삼항 연산자로도 max값을 정할 수 있다.
	    		//max = (arr[i] > max) ? arr[i] : max;
	    		                     //? 참일 경우 : 거짓일경우  
	    		//arr[i]가 크면 max = arr[i];
	    		//max가 크면 max = max;
	    		
	    	
	    	}
	    	
	    	
	    	
	    	
	    }
	    System.out.println("가장큰 수는"+max+"입니다");    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
		
		
		
		
		

	}

}
