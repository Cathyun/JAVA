/* 
  Date : 2020.05.21
  Author : 	youhyunseo
  Description : fieldmain
  Version : 1.1   
*/
package JAVA0521;

public class fieldmain {

	public static void main(String[] args) {
		  //로컬변수
		  int temp = 0;
		  
		  
		  //???
		  field fd = new field(); 
		  System.out.println("fd.size = " + fd.size);//18
		  
		  System.out.println("fd.price = " + fd.price);//200
		  System.out.println("field.price = " + field.price);//200//객체를 따로 생성하지 않아도 출력할 수 있다.
		  
		  
		  field fd2 = new field(99);
		  System.out.println("(1)new field() " + fd.size);//18
		  System.out.println("(2)new field(99) " + fd2.size);//99
		  
		  fd2.size = 13;
		  System.out.println("(3)fd2.size = 13 : " +fd2.size);//13
		  
		  //로컬변수 temp출력
		  System.out.println("temp : " + temp);
		  
		  field numbers = new field((byte) 15); //byte bNum
		  numbers.showInfo(); //byte bNum를 가져왔지만 iNum이 15로 바뀐다.
		                      //객체를 생성할 때 변수를 지정해주면 그 값에 대입하게 된다.
		                      //ex)객체생성을 할 때 괄호 안에 byte,int 등 변수를 넣어줌.
		  
		  

	}

}
