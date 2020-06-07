package JAVA0508;

public class ex02_변수 {

	public static void main(String[] args) {
		//변수:프로그램 실행에 필요한 데이터를 저장하기 
		//위해 메모리 공간을 할당하고, 이름을 부여한것
		
		//var num=0;
		//[변수타입] [변수명] = [변수값];
		
		int age= 35;
		int age1;//변수선언
		age1=35;//변수초기화		
		
		int age2=11, age3=12, age4=13;
		
		age1=10;
		//10을 age1에 대입한다.
		System.out.println("age1"+age1);
		
		
		//변수 타입에서는 ----->>갈수록 커진다.
		//int와 double이 가장 많이 쓴다.
		//변수타임        1byte     2byte      4byte     8byte
		//1.정수형         byte                 int       long       
		//2.실수형                                                  folat     double
		//3.문자형    (clear)
		//4.논리형   (boolean)
		
		
		
		
		
	    //8bit=1byte , 16bit=2byte, 24bit=3byte,32bit=4byte,64bit=8byte
		//8bit를 표시하면 0111111이며 앞에 있는 수는 '양수'를 나타내는 '0'에 해당함.
		//1이면 '음수'로 나타낸다.
		
		//8bit=1byte : -128~127(-2^7~(2^7-1))
		//4byte = 2^31~(2^31)-1
		
		//int : -2,147,483,648 ~ 2,147,483,647
		//long : 매우 큰 변수 타입
		
		//64bit=8byte
		
	  //정수형	
	   byte bNum1= -128;
	   byte bNum2= 127;
	   
	  // short
	   //2byte = 16bit
	   //2byte = -2^15 ~(2^31)-1
	   short sNum1 = -32768;
	   short sNum2 = 32767;
	   //short sNum3 = 32769;
	   short sNum4 = -32768;
	   
	   //System.out.println(sNum3);
	   System.out.println(sNum4);
	   
	   int bNum3= -129;
	   int bNum4= 128;
	   
	   int iNum1 = -2147483648;
	   int iNum2 = 2147483647;
	   
	   long iNum3 = -1322147000083648L;
	   //변수값에는 L을썼지만 출력은 되지 않는다.
	   long iNum4 = 21231000047483648L;//long는 뒤에 L을 추가해야함.
	   
	    //sysout입력한 후 [ctrl]+[space]
	    System.out.println(iNum3);
		System.out.println(iNum4);
		
		
		//실수형
		//float(4byte),double(8byte)
		//double > float
		
		//long은 L 추가 
		//float는 f추가
		float pi1 = 3.14f; //Float는 뒤에 소문자 f를 써줌.
		double pi2 = 3.14;
		
		float pi3 = -2147483649.121234567890123456789f;
		double pi4 = 3.1432147189704512345678132;
		
		 System.out.println(pi3);
	     System.out.println(pi4);
	     
		//long는 뒤에 L
	    //Float는 뒤에 소문자 f
	
		
	   
	}

}
