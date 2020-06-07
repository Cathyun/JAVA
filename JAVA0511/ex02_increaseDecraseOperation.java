/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 증감연산자 (increaseDecraseOperation)
  Version : 1.0   
*/

package JAVA0511;

public class ex02_increaseDecraseOperation {

	public static void main(String[] args) {
		// 단항연산자
		//증가와 감소 연산자 (++,--)
		
		// ++num : num이 가지고 있는 값에
		//1을 증가한 뒤에 연산이 적용
		//num++ : num이 가지고 있는 값을 연산에 적용한 뒤 1을 증가
		
		int num = 5;
		System.out.println("num값:" + num);
		
		++num;
		System.out.println("++num값:"+ num);//6
		
		num++; //결과
		System.out.println("num++값:"+ num);//7
		
		
		int num1 = 5;
		int result1;
		
		result1 = ++num1;//6
		System.out.println("++num result1 : " + result1);
		//result1 = ++num1;
		//num1 = num1+1;
		//result1 = num1;
				
				
				
		result1= num1++;
		System.out.println("num1++ result:"+ result1);
		//result1 = num1++;
		//result1 = num1;
		//num1 = num1+1 //결과 : 7
		 
		 
		
		
		//example
		
		int num2 = 10;
		--num2;
		System.out.println(num2); //9 
		//num2 = num2 -1 ;
		//num2 =10-1;
		//num2 =9;
		
		int result2;
		result2 = --num2;
		System.out.println(result2); // 8 
		//result2 = --num2;
		//num2 = num-1;
		//num2 =9-1
		//result = num2;
		//result2 = 8
		
		result2 = num2--;
		System.out.println(result2); //8
		//result2 = num2--
		//result2 = num2;
		//result2 = 8;
		//num2 = num2-1;
		//num2=8-1;//7
		
		
		//ex
		
		int result3;
		System.out.println("num1:"+ num1 + ",num2:"+ num2);
		//7,7
		result3 = ++num1 + ++num2; //16
		// num1  = num1 + 1 
		// + 
		// num2  = num2 + 1
		// = 
		// result3
		System.out.println("num1:"+num1);//8
		System.out.println("num2:"+num2);//8
		System.out.println("result3:"+ result3);//16
		
		result3 = num1++ + num2++;//
		// num1 
		// + 
		// num2
		// = 
		// result
		// num1 = num1 + 1;
		// num2 = num2 + 1;
		
		
		System.out.println(num1);//9
		System.out.println(num2);//9
		System.out.println(result3);//16 
		
		
		result3 = num1++ + ++num2;//9+10
		// num1 
		// +
		// num2 = num2 + 1 // 10
		// = 
		// result //19
		// num1 = num1 + 1 //10
		
		System.out.println(num1);//10
		System.out.println(num2);//10
		System.out.println(result3);//19
		
		result3 = ++num1 + num2++;//11+10
		
		System.out.println(num1);//11
		System.out.println(num2);//11
		System.out.println(result3);//21
		
		
		int num3 =5;
		int num4 =11;
		int result4;
		
		result4 = ++num3 + --num4;
		//num3 = num3 +1 //6
		//+
		//num4 = num4 -1//10
		//=
		//result //16
		System.out.println(num3);//6
		System.out.println(num4);//10
		System.out.println(result4);//16
				
		result4 = num4++ - num3--;
		//num4 //10
		//-
		//num3 //6
		//=
		//result //4
		//num4 = num4 + 1 //11
		//num3 = num3 - 1//5
		System.out.println(num4);//11
		System.out.println(num3);//5
		System.out.println(result4);//4
	
		result4 = num3++ - ++num4;
		//5-12
		//-7
		//num3=6
		//num4=12
		System.out.println(num3);//6
		System.out.println(num4);//12
		System.out.println(result4);//-7
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
