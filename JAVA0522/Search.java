/* 
  Date : 2020.05.22
  Author : 	youhyunseo
  Description : Search
  Version : 1.1   
*/
package JAVA0522;

public class Search {
       Member[]members = new Member[4];
       public Search() {
          members[0] = new Member("유현서",26,164,"경기도 시흥시");
          members[1] = new Member("꼬북이",5,135,"인천시 게양구");
          members[2] = new Member("이재홍",29,178,"인천시 기장동");
          members[3] = new Member("이상해씨",10,140,"서울시 신도림동");
     
  }
  
  
 
  boolean searchMember(String name) {
	  boolean boolResult = false;
	  for(int i = 0; i< members.length;i++) {
		  if(members[i].getName().equals(name)) {
			  printInfo(members[i]);
			  boolResult = true;
		  }
	  }
	   return boolResult;
  }


    private void printInfo(Member member) {
	  System.out.println(member.getName() + "으로 찾은 결과");
	  System.out.println("이름 : " + member.getName());
	  System.out.println("나이 : " + member.getAge());
	  System.out.println("키 : "+ member.getHeight());
	  System.out.println("주소 : " + member.getAddr());
	
}
}
