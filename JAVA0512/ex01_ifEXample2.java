/* 
  Date : 2020.05.12
  Author : 	youhyunseo
  Description : 조건문 연습문제2
  Version : 1.0   
*/



package JAVA0512;

import java.util.Scanner;

public class ex01_ifEXample2 {
     public static void main (String[]arge) {
    	 // 스캐너를 사용해서 국어 영어 수학 점수를 입력받아서 총점 평균을 구하시오.
    	 //평균점수를 이용하여
    	 //A+,A,B+,B,C+,C,D+,D,F
    	 //프로그램을 만들어 보시오
    	 //총점과 평균을 실수형
    	 
    	 //1.Scanner 입력
    	 //2. import java.util.Scanner; 입력 클래스
    	 
    	 Scanner sc = new Scanner(System.in);
    	 int kor; //int kor, eng, mat; 변수 선언해도 된다.
    	 int eng;
    	 int mat;
    	 String grade;
    	 double result; //실수형으로 점수가 나오며 ex)100.0으로 나온다. 
    	 
    	 System.out.println("국어 점수를 입력하세요.");
    	 kor = sc. nextInt();
    	 
    	 System.out.println("영어점수를 입력하세요.");
    	 eng = sc.nextInt();
    	 
    	 System.out.println("수학점수를 입력하세요.");
    	 mat = sc.nextInt();
    	 
    	 result = (double)kor + eng + mat ;
    	 System.out.println("총점은 : "+ result);
    	 
    	 result = (double)(kor + eng + mat)/3;
    	 //총점과 평균 모두 result라고 해두 되고 다른 변수로 만들어도 된다.
    	 System.out.println("평균은 :"+ result);
    	 //총점과 평균은 print로 총점과 평균을 입력할 값 아래에 둔다.
    	 
    	 
    	 if(result<=100) {
    		 if(result>=90) {//90~100
    			if(result>=95) {//95~100
    			   grade = "A+";
    			} else {
    				grade = "A";
    			}
    			 
    		 }else if (result>=80) {//80~89
    			 if(result>=85) {//85~89
    				 grade = "B+"; 
    			 } else {
    				 grade = "B";
    			 }
    	    }else if (result>=70) {//70~79
    	    	if (result >=75) {//75~79
    	    		grade = "C+";
    	    	} else {//60~64
    	    	    grade = "C";
    	    	}
    	    }else if (result>=60) {//60~69
    	    	if (result>=65) {//65~69
    	    		grade = "D+";
    	    	} else {	//60~64    		
    	    		grade = "D";
    	    	}
    	    }else {
    	    	grade = "F";//60미만
    	    }
    		System.out.println("당신의 학점은 :"+grade+"입니다"); 
    		 
       }else {
    		 System.out.println("입력범위를 초과를 했습니다.");
       }		 
   }
}
