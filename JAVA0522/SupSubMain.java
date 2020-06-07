/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : SupSubMain
  Version : 1.1   
*/
package JAVA0522;

public class SupSubMain {

	public static void main(String[] args) {
		
		SubSub ss = new SubSub();
        System.out.println("ss.x : "+ss.x);
        System.out.println("ss.y : "+ss.y);
        System.out.println("ss.z : "+ss.z); 
        
        ss.supMethod();
        ss.subSubMethod();
        ss.subMethod();
        
	}

}
