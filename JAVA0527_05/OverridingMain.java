/* 
  Date : 2020.05.27
  Author : 	youhyunseo
  Description : 상속main
  Version : 1.1   
*/
package JAVA0527_05;

public class OverridingMain {

	public static void main(String[] args) {
		OverridingChild yh = new OverridingChild();
		System.out.println("size는 17이 출력될까?(parent)");
		System.out.println("아니면 20평이 출력될까?(Child)");
		System.out.println("결과>>"+ yh.size);
		//Child타입으로 바뀌어서 출력된다.

		yh.size = "30평";
		System.out.println("결과는>>" + yh.size);
		System.out.println();
		
		System.out.println("오버라이딩 메소드 확인!");
		System.out.println(yh.parentMethod());
		yh.pM();
		
	}

}
