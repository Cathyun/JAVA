/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : 설정
  Version : 1.1   
*/
package JAVA0522;

public class AirCon {
       /*
        *    1. get, set 설정 - 오늘쪽 마우스 - source - get,set 생성
        *    2. 기본 생성자 - 오늘쪽 마우스 - source - using field - 체크 풀고 Generate 누르면 기본 생성자 만듦
        *    3. 매개 변수 생성자  - 오늘쪽 마우스 - source - using field - 매개 변수 생성자 설정
        *    4. toString() - 오늘쪽 마우스 - source - toString()
        */
	    
	
	 //필드
	 String company;
	 int size;
	 String color;
	 int price;
	 int temp;
	   
	   //기본생성자
	 public AirCon() {
		   
	   }
	    
	 //매개 변수 생성자
	 public AirCon(String company, int size, String color, int price, int temp) {
     super();
	 this.company = company;
	 this.size = size;
	 this.color = color;
	 this.price = price;
	 this.temp = temp;
	    }

	   
	   
	              //입력될 값을 출력한다.
	public String getCompany() {
		return company;
	}
	                      //매개  변수에 적은 것을 넣겠다.
	public void setCompany(String company) {
		this.company = company;
	}
	           
	public int getSize() {
		return size;
	}
	
	public void setSize(int size) {
		this.size = size;
	}
	
	public String getColor() {
		return color;
	}
	
	public void setColor(String color) {
		this.color = color;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getTemp() {
		return temp;
	}
	
	public void setTemp(int temp) {
		this.temp = temp;
	}
	   
	   
	  
	//toString(){}
	 @Override
		public String toString() {
			return "AirCon [company=" + company + ", size=" + size + ", color=" + color + ", price=" + price + ", temp="
					+ temp + "]";
		}
	
	
	
	
}
