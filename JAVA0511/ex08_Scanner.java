/* 
  Date : 2020.05.11
  Author : 	youhyunseo
  Description : 입력 (Scanner)
  Version : 1.2   
*/

package JAVA0511;

import java.util.Scanner;
//2.두번째 
//scanner 클래스는 java.utill 패키지에 있는 입력 클래스
public class ex08_Scanner {

	public static void main(String[] args) {
		//1.첫번째
		// 스캐너를 사용하기 위한 스캐너 객체 선언
				
		Scanner sc = new Scanner(System.in);
		                               //in = 입력할 때
		Scanner scan = new Scanner(System.in);
		//sc도 scan도 사용할 수 있음.
		
		String name;
		int age;
		String Address;
		
		
		System.out.println("println");//ln은 줄바꿈
		System.out.print("print");
		System.out.println("두 개 차이점 확인하기");
		
		
        System.out.println("이름을 입력하세요.");
        name =sc.next();//sc = 변수에 입력한 값을 대입한다는 뜻임.
        //3.세번째
        //변수에 입력한 값을 담는다.
        
        System.out.println("나이를 입력하세요.");
        age = sc.nextInt();
        sc.nextLine().trim();
        //trim() : 앞뒤 공백을 제거한다.
        
        System.out.println("주소를 입력하세요.");
        Address = sc.nextLine(); 
        
        
        System.out.println();
        System.out.println("=======출력내용======");
        System.out.println("입력한 이름 : " + name);
        System.out.println("입력한 나이 : " + age);
        System.out.println("입력한 주소 : " + Address);
        //띄워쓰기 단위로 입력을 하기 때문에 띄워쓰고 난 다음에는 입력이 되지 않는다.
        //입력창에 띄워쓰기를 하지 않거나 sc.nextLine();을 입력한다.
        
        
	}

}
