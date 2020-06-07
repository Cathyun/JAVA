package JAVA0508;

public class ex02_char {

	public static void main(String[] args) {
		// 문자형 변수타입 char(2byte)
		char ch1;
		ch1 = 'A';//65 '문자를 표시할 때는 작은 띠옴표''를 사용한다.'
       
		System.out.println("A");
		System.out.println(ch1);
		System.out.println((int) ch1);

		char ch2 ='B';//66
		System.out.println((int)ch2);
		
		char ch3 = 'a';//97
		char ch4 = 'b'; //98
		System.out.println((int)ch3);
		System.out.println((int)ch4);
		
        //아스키코드표
		int num1=65;
		System.out.println((char)num1);
		//숫자를 문자형으로 바꿀 때 변수명 앞에 (char)
		
		char ch5 = '유';
		System.out.println((int)ch5);
		
		char ch6 = '현';
		System.out.println((int)ch6);
		
		char ch7 = '서';
		System.out.println((int)ch7);
		
		
		int num2 = 50976;
		int num3 = 54788;
		int num4 = 49436;
		// int에서 수식으로 나타낼 때 '따옴표'가 없어도 된다.
		System.out.println((char)num2);
		System.out.println((char)num3);
		System.out.println((char)num4);
	
		char ch8 = 'D';
		System.out.println((int)ch8);
		
		int num8 = 68;
		System.out.println((char)num8);
		
		
		
		
	}

}
