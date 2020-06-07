/* 
  Date : 2020.05.18
  Author : 	youhyunseo
  Description : ArrayExample5
  Version : 1.1   

*/
package JAVA0518;

import java.util.Scanner;

public class Ex04_ArrayExample5 {

	public static void main(String[] args) {
		//스캐너를 이용해서 고등학교 3학년의 학기별 점수를 입력하고 총점을 출력하세요!
		//고등학교 성적의 평균을 출력하세요
		
		Scanner sc = new Scanner(System.in);
		
		double scores [][] = new double [3][2];
		System.out.println(scores.length);
		
		int sum = 0;
		double avg = 0;
		
		for(int i=0; i<scores.length;i++) {//학년을 나타나기 위한 반복문
			//scores.length -->학년
			for(int j=0; j<scores[i].length; j++) { //학기를 나타나기 위한 반복문
					//scores[i].length -->>i대신0을 넣어도 된다.
		   System.out.println((i+1)+"학년"+(j+1)+"학기 점수를 입력하세요");
		   scores[i][j] = sc.nextDouble();
		   
	       sum += scores[i][j];
	      
			} 
		} 
		avg = (double)sum/(scores.length*scores[0].length);
		//평균은 전체 학기가 6이므로 scores.length(2) x scores[0].length(3)을
	    //곱하여준다.
		System.out.println(scores.length);
        System.out.println(scores[0].length);
        
		System.out.println("고등학교 성적 총점은" + sum);
		System.out.println("고등학교 학기 평균은" + avg);
	}

}
