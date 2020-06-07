/* 
  Date : 2020.05.14
  Author : 	youhyunseo
  Description : 배열복사 
  Version : 1.1   
*/
package JAVA0515;

public class Ex03_ArrayCopy {
          public static void main(String[]args) {
        	  String [] str1 = {"이재홍","유현서","서재언","오형록","서민재"};
        	  String [] str2 = new String [5];
        	  //String [] str2 = {"i0","i1","i2","i3","i4"}
        	  
        	  //str1 = 人 人 人
        	  //str2 = ㅁㅁㅁ
        	  
//        	 for(int i=0; i<str1.length; i++) {
//        		 str2[i] = str1[i];
//        		 //num2=num1;
//        	     System.out.print("str1["+i+"]="+str1[i]);
//        	     System.out.println("\t str2["+i+"]="+str2[i]);
//        	 }
        	  System.arraycopy(str1,1,str2,0,str1.length-1);
        	  //유현서 - str2[0] - 갯수는 4(5-1)
        	  System.arraycopy(str1,0,str2,4,str1.length-4);
        	  //이재홍 -str2[4] - 객수는 1(5-4)
        	  //System.arraycopy(str1,0,str2,1,str1.length);
        	  //System.arraycopy(str1,0,str2,4,str1.length-4);값이 없을 때는 
        	  //str2[4]=null이 나오기 때문에 새로운 arraycopy만들어줘야한다.
        	  
        	  //복사할 배열명, 복사 시작 할 인덱스번호
        	  //붙여 넣을 배열명, 붙여넣기 시작할 인덱스 번호, 복사 배열크기 (배열의 갯수)
        	  for(int i=0; i<str1.length; i++) {
        		 System.out.print("str1["+i+"]="+str1[i]);
         	     System.out.println("\t str2["+i+"]="+str2[i]);
        	  }
        	 
        	  
        	  
        	   
        	  
        	  
          }
}
