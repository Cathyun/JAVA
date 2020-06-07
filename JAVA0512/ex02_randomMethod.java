/* 
  Date : 2020.05.12
  Author : 	youhyunseo
  Description : 랜덤 숫자(randomMethod)
  Version : 1.0   
*/


package JAVA0512;

public class ex02_randomMethod {

	public static void main(String[] args) {
		//랜던 메소드
		//특정 범위내에서 숫자 하나를 출력해주는 메소드
		//Math,random()=>0 보다 크거나 같고, 1보다 작은 숫자를 무작위로 발생
        double ranNum = Math.random();
        System.out.println("ranNum :" + ranNum);
        //무작위로 숫자 발생 = Math.random();
        		
        ranNum=(int)(Math.random() * 10 ) +1 ;
        System.out.println("ranNum : " + (int)ranNum);
        //1부터 10사이 숫자 발생
        
        //(int)(Math.random() * N ) + S ;
        //S : 시작, N : 끝 
        
        
       int dice = (int)(Math.random() * 6 )+1;
       System.out.println(" 주사위 값이 " + dice +" 이(가) 나왔습니다. ");        
       
       int js = (int)(Math.random() * 28 )+1;
       System.out.println(" 오늘의 발표자는 " + js + " 번 입니다. ");  
       
       //로또 번호
       int lotto = (int)(Math.random() * 45)+1;
       System.out.println(" 오늘의 로또번호는 " + lotto + "입니다.");
       //한 숫자만 가능 //배열아님
       
       
       
	}

}
