/* 
  Date : 2020.05.18
  Author : 	youhyunseo
  Description : ArrayExample3
  Version : 1.1   

*/

package JAVA0518;

import java.util.Scanner;

public class Ex01_ArrayExample3 {
        public static void main(String[]args) {
        	//String[][]words;
        	//words[5][2];
        	//배열[행][열];
        	//배열의 크기를 넣을 때는 index의 갯수대로 넣어준다.
        	
        	Scanner sc =new Scanner(System.in);
    		
    		String[][]words = {
    				{"chair","의자"},//[0][0]/[0][1]
    				{"desk","책상"},//[1][0]/[1][1]
    				{"coffee","커피"},//[2][0]/[2][1]
    				{"pen","볼펜"},//[3][0]/[3][1]
    				{"computer","컴퓨터"}//[4][0]/[4][1]
    				//5행 2열
    		}; //배열 후 ;를 찍어준다.
    		
    		int score = 0;
    		
    		System.out.println("words.length : " + words.length);
    		
    		for(int i =0; i<words.length;i++) {
    			System.out.println("문제"+(i+1)+"."+ words[i][0]+"의뜻은 무엇인가요");
    			                              //words[i][0] = 단어
    			                              //words[i][1] = 뜻
    			String answer = sc.next();
    			
    			if (answer.equals(words[i][1])) {
    				System.out.println("정답입니다.");
    				score++;
    			} else {
    				System.out.println("틀렸습니다.");
                    System.out.println("정답은"+words[i][1]+"입니다.");    				
    			}  			
    			 			
    		}
    		System.out.println();
    		System.out.println("총"+score+"개 맞췄습니다.");
    		double percent = 100*((double)score/words.length);
    		System.out.println("정답률은"+percent+"입니다");
        }
}
