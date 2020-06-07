/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : 날짜 구하기
  Version : 1.1   
*/
package JAVA0522;

import java.util.Calendar;

public class ExDate {

	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		//날짜구하기
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
	    int month1 = cal.get(Calendar.MONTH);
       	int day = cal.get(Calendar.DAY_OF_MONTH);
       	
       	System.out.println(year + " 년 "+ month1 + " 월 "+ day +" 일 " +" 입니다 ");
       	
       	//시간 구하기
       	int hour = cal.get(Calendar.HOUR_OF_DAY);
       	int minute = cal.get(Calendar.MINUTE);
       	int second =cal.get(Calendar.SECOND);
       	
       	System.out.println(" 지금 시간은 " + hour + " 시 " + minute + " 분 " + second + " 초 " + " 입니다 ");
       	
       	//요일 구하기
       	
       	String [] DAY = {"일","월","화","수","목","금","토"};
       	
       	String today = DAY [cal.get(Calendar.DAY_OF_WEEK)-1];
       	System.out.println(" 오늘은 "+today+" 요일 입니다 ");
       	
       	//특정 날짜 설정하기
       	System.out.println("특정날짜 설정하기");
       	Calendar cal2 = Calendar.getInstance();
       	cal2.set(2020,9,21,16,50);
       	System.out.println(cal2.getTime());
       	
       	//날짜 변경하기
       	System.out.println("===============7일==================");
       	cal2.add(Calendar.DATE,7);
       	System.out.println(cal2.getTime());
       	
    	System.out.println("===============6달 전일==================");
    	cal2.add(Calendar.MONTH,-5);
    	cal2.add(Calendar.DATE,-27);
       	System.out.println(cal2.getTime());
       	
       	//본인 생일 출력
       	Calendar yhs = Calendar.getInstance();
       	System.out.println("============내생일===========");
       	yhs.set(1994,12,11);
       	System.out.println(yhs.getTime());
       	
     
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
	}

}
