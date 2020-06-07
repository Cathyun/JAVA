package JAVA0601;

public class StringMethodMain {

	public static void main(String[] args) {
		//String메소드
		String str = "자바는 재밌다.";
		System.out.println(str);
		
		//String 변수 글자수 확인
		System.out.println("str글자 수  : " + str.length());
		
		//일부 문자 교재 메소드
		String newStr = str.replace("자바", "JAVA");
		System.out.println("교체전 : " + str);
		System.out.println("교체후 : "+ newStr);
		
		//글자 잘라내기
		String str1 = str.substring(2,5);//(0,1) =>자 , (1,2)=>바 (시작하는 인덱스번호,끝나는 인덱스번호) 
		System.out.println(" str1 : " + str1); 

		String str2 = str.substring(0);
		System.out.println(" str2 : " + str2);
		
		//영어 대소문자 변경
		String str3 = "abcdEFGHijkLMN";
		String str3Lower = str3.toLowerCase();
		System.out.println("str3 : " + str3);
		System.out.println("소문자 변경 : " + str3Lower );
		
		String str3Upper = str3.toUpperCase();
		System.out.println("대문자 변경 : " + str3Upper);
		
		
		//공백제거 =>>trim()
		String str4 = "       자바";
		String str5 = "JAVA      ";
		String str6 = "  이클립스       ";
		
		String str7 = str4 + str5 + str6;
		System.out.println("str7 : " + str7);
		
		String str8 = str4.trim() + str5.trim() + str6.trim(); 
		//공백제거시에는 변수 하나하나 trim()을  선언해주어야함!!
		System.out.println("str8 : " + str8);
		
		System.out.println("str7.trim() : " + str7.trim());//=>공백이 완벽하게 제거 되지 않는다!!
		
		//parseInt => String타입도 더할 수 있도록 함!!
		String str9 = "1111";
		System.out.println("str9+1 : " + str9+2);//변수에 덧셈을 해주면 ex)11112로 뎃셈이 되지 않는다!!
		                                         //String 타입이므로!!  
		
		int num = Integer.parseInt(str9); //=> String타입으로도 덧셈을 할 수 있음!! 
		System.out.println(num+2);
		
		
	}

}
