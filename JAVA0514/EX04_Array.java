/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 배열Array
  Version : 1.1   
*/
package JAVA0514;

public class EX04_Array {

	public static void main(String[] args) {
		// 배열(Array) : 같은(변수) 타입에 데이터를 하나의 변수에 
		// 변수에 저장하는 구조
		
		//배열 선언
		//(1)타입[] 배열이름;
		       int[] num1;
		//(2)타입 배열이름[]'
		       int num2[];
		
		//변수 선언
		//int i = 0;
		//(변수 타입)(변수명);
		       
		//배열 초기화
		num1 = new int[]{10,20};
		System.out.println("첫번째 집 : "+ num1[0]);
		System.out.println("두번째 집 : "+ num1[1]);
		      
		//변수 초기화
		//i = 0;
		//변수명 = 변수값;
		
		//배열 초기화
		int num3[]= {10,11,12,13};
		System.out.println("첫번째 집 : "+ num3[0]);
		System.out.println("두번째 집 : "+ num3[1]);
		System.out.println("세번째 집 : "+ num3[2]);
		System.out.println("네번째 집 : "+ num3[3]);
		
		//System.out.println("다섯번째 집 : "+ num3[3]);
		//배열에 입력되지 않기 때문에 오류가 나온다.
		
		//변수 선언 초기화
		//int j=0;

		//int k=0;//변수 값에 0을 넣어줘야함.
		//System.out.println(k);
		
		//char= '';
		//String str = " ";
		
		
		//초기화
		int[] a = null;
		int b[] = {};
		
		//배열값 입력시 타입을 맞춰서 입력!
		char[]ch1= {'훈','짱'};//문자로 넣어야 함.작은 따옴표''
		String[] str1 = {"인덱스0","인덱스1","인덱스2"};//String배열은 더블퀘터 
		
		System.out.println("String타입에서 2번째 저장된 값 :" + str1[1]);
		
		// length : 배열의 길이를 나타낸다.
		
		int lNum3 = num3.length;
		System.out.println("num3[]의 길이 :" + lNum3);
		
		
		
		//for문을 사용해서 num3배열의 저장된 값을 모두 출력
		
		int i;    //수식을 <=이 하면 오류가 나기 때문에 
		for(i=0; i<num3.length;i++) {
			System.out.println("num3["+i+"]="+num3[i]);	
		}
		//국어, 영어, 수학 점수를 저장하고 배열 변수에 저장된 모든 값과 총점과 평균을 구하시오
		int []numbers = {90,80,85};
		int sum=0;
		     //i가 배열 순서 
		for (i=0;i<numbers.length;i++) {
		     
			System.out.println("numbers["+i+"]:"+ numbers[i]);
			sum +=numbers[i];
		          
		} 
		double avg=(double)sum/numbers.length; //평균은 실수니까 double를 사용
		System.out.println("numbers[]총점은 "+sum);
		System.out.println("numbers[]평균은 "+avg);
		
		
	}

}
