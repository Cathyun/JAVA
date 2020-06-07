/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : 자동설정을 이용한 MyDate
  Version : 1.1   
*/
package JAVA0522;

public class MyDate {
      /*
       * 1. MyDate , MyDateMain 클래스 생성
       * 2. day,month,year변수는 private으로 선언
       * 3. 각 변수의 get,set 메소드를 public으로 생성
       * 4. MyDate(int day, int month,int year)생성자 만들기
       * 5. public String  isVaild() 메소드로 날짜가 유효한지 확인 >0 유효하다
       * 6. MyDateMain 클래스에서 생성한 MyDate날짜가 유효한지 확인  
       */
	//2. 필드
	private int day;
	private int month;
	private int year;
	private boolean isVaild = true;   
	
	
	
	//3. get,set 메소드 
	public int getDay() {
		System.out.println("getDay : "+ day);
		System.out.println("getDay isVaild :"+ isVaild );
		return day;

	}
	public void setDay(int day) {
		
		switch(month){
		case 1: case 3: case 5: case 7: case 8: case 10:  case 12:
			if(day > 0 && day <=31) {
				this.day = day;
			}else {
				isVaild = false;
			}
			break;
			
		case 4: case 6:	case 9: case 11:
			if(day > 0 && day <=30) {
				this.day = day;
			}else {
				isVaild = false;
			}
			break;
			
		case 2:	
			if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
				if(day > 0 && day <=29) {
					this.day = day;
				}else {
					isVaild = false;
				}
			}
		    else {
		    	if(day>0&&day<=28) {
		    		this.day=day;
		    	}else {
		    		isVaild = false;
		    	}
			}
			break;
		default:
			isVaild = false;
			break;
    
		}
		this.day = day;
     }

	public int getMonth() {
		
		System.out.println("getMonth : "+ month);
		System.out.println("getMonth isVaild :"+ isVaild );
		return month;
	}

	public void setMonth(int month) {
		 if (month>0 && month<=12) {
		 this.month = month;
        } else {
    	 isVaild = false;
	  }
		
	}
	
	public int getYear() {
		System.out.println("getyear : "+ year);
		System.out.println("getyear isVaild :"+ isVaild );
		return year;
	}

	public void setYear(int year) {
		if(year>0) {
			this.year = year;
		}else {
			isVaild = false;
	}
		
}
	//5. public String  isVaild() 
	public String  isVaild() {
    	if(isVaild) {
    		return "유효한 날짜 입니다.";	
    	}else {
    		return "유효하지 않은 날짜 입니다.";
    	}
    }
	
	//4. 생성자
	public MyDate(int day, int month, int year, boolean isVaild) {
		super();
		this.day = day;
		this.month = month;
		this.year = year;
		this.isVaild = isVaild;
		
	}
    //기본생성자
	public MyDate() {
		
	}
	@Override
	public String toString() {
		return "MyDate [day=" + day + ", month=" + month + ", year=" + year + ", isVaild=" + isVaild + 
				 "]";
	}


    
 }	
	  

	
	
	
	

