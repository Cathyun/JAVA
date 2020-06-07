




package JAVA0508;

public class ex02_String {

	public static void main(String[] args) {
		String str1 = "자바공부는"; //String = 배열을 할 때 사용
		String str2 = "재미있어";
		String str3 = "너무 어려워";
		
		String result; //변수 선언
		result = str1+ str2;//변수 초기화
		System.out.println(result);
		//자바공부는 재미있어

		result = str1+ str3;//변수 초기화
		System.out.println(result);
		//자바공부는 너무 어려워
		
		
        result = str1 + 8.0;
        System.out.println(result);
        //자바공부는 8.0
       
        System.out.println(str1+" "+ "완전"+ " "+ str2);//자바공부는 완전 재미있어
	}

}
