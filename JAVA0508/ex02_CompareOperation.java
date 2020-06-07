package JAVA0508;

public class ex02_CompareOperation {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        int num1 = 3;
        int num2 = 5;//변수 선언
     
        boolean result;
        
        result = num1 > num2;
        
        System.out.println("num1>num2:"+ result);
        System.out.println(num1+">"+num2+":"+ result);
        
        result = num1 < num2;
        System.out.println("num1<num2:"+ result);
        System.out.println(num1+"<"+ num2+":"+ result);
        
        //num1과 num2가 같다.
        //두개의 정수가 같다는 '=='와 같이 =이 두 개 여야한다.
        result = num1 == num2;
        System.out.println("num1=num2:"+result);
        
        //num1과 num2다르다
        //두개의 정수가 다르다는 '!='이다
        result = num1!=num2;
        System.out.println("num1과num2은 다르다"+result);
        System.out.println(num1+"!="+num2+"는"+result);
        
        
        
        //중욧!!!!!!!!!!1
        //문자열 같은지 비교
        //변수명1.equals(변수명2)
        
        String str1 = "Java";
        String str2 = "Java";
        String str3 = "자바";
        
        result = str1.equals(str2);
        System.out.println("str1과 str2의 문자비교"+result);
        
        result = str1.equals(str3);
        System.out.println("str1과 str2의 문자비교"+result);
        
        
        
        
        

        
	}

}
