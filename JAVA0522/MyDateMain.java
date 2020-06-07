/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : 자동설정을 이용한 MyDateMain
  Version : 1.1   
*/
package JAVA0522;

import java.util.Scanner;

public class MyDateMain {

	public static void main(String[] args) {
		
		
		
		MyDate yhs = new MyDate();
		
		Scanner sc = new Scanner(System.in);
        System.out.println("년도 입력>>");
        int year=sc.nextInt();
        yhs.setYear(year);
        
        System.out.println("월 입력>>");
        int month= sc.nextInt();
        yhs.setMonth(month);
        
        System.out.println("일 입력>>");
        
        int day= sc. nextInt();
        yhs.setDay(day);
        
        System.out.println("##확인 중 ## \n" + yhs.toString());
        System.out.println(yhs.getYear()+"년"+yhs.getMonth()+"월"+yhs.getDay()+"일  입니다.");
        System.out.println(yhs.isVaild());
        
        
        
        
	}

}
