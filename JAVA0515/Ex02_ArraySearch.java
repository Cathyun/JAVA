/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 배열찾기 
  Version : 1.1   
*/
package JAVA0515;

import java.util.Scanner;

public class Ex02_ArraySearch {

	public static void main(String[] args) {
		int num[] = {8, 2, 6, 1, 9, 3, 4, 10, 7, 5};
		//배열은 설정한다.
		
		int value;
	    int index = 0;
	    Scanner sc = new Scanner(System.in);
	    //입력할 스케너를 작성한다.
	    
	    System.out.println("1~10사이 숫자 입력 >>");//맨처음에 나올 print를 작성
	    value = sc.nextInt();//숫자 작성을 value값
	    
	    for (int i=0; i<num.length; i++) {
	    	if(value==num[i]) {//value으로 저장한 값이 num[i]이 같다면 
	    		index = i+1;//index값에 +1을 해준다.
	    	}
	    }
	    System.out.println(value + "는" + index + "번째 있다");
		
	}

}
