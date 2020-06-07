/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : PrChMain
  Version : 1.1   
*/
package JAVA0522;

public class PrChMain {

	public static void main(String[] args) {
		Child child = new Child();
		System.out.println(child.ParentVar);
		System.out.println(child.childVar);
		
		child.ParentMethod();
		child.childMethod();
		
	}

}

