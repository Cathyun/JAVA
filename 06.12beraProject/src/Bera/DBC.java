package Bera;

import java.sql.Connection;
import java.sql.DriverManager; // ojdbc 설정하기위한 드라이브 관리하는 클래스 같은것
import java.sql.SQLException;  // SQL문을 실행했을때 발생하는 에러를 처리하기 위한 예외처리문

public class DBC {	//  어제만든 DBConnection 과 같은 역할

//	public String str() { String 의 리턴값은 문자 int의 리턴값은 숫자
//		
//	}
	
	
	
	public static Connection DBConnect() {		// ★★★★이 메소드의 전체 값은 return값인 con이 되는것임★★★★ 	
		// DB에 접속정보 저장을 위한 Connection 변수 con 선언
		Connection con = null;
		try {
			// 1. ojdbc6 없이 실행 해보기 ("DB접속 실패 : 드라이버 로딩 실패" 문구 뜸)
			Class.forName("oracle.jdbc.driver.OracleDriver");	// ojdbc6 파일을 현재 소스에 적용
			
			// 접속할 DB의 주소 정보
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			// 접속할 DB의 계정정보
			String user = "JH2000LEE";
			String password = "1111";
			// 2. url, user, password 틀리고 실행 해보기 ("DB접속 실패 : url, user, password 확인" 문구 뜸)
			con = DriverManager.getConnection(url, user, password);	// con : 실제로 DB와 Java와 연결해주는 역할을 함
			System.out.println("DB접속 성공!"); // 위의 작업이 잘 되었는지 확인하는 출력문
		}catch(ClassNotFoundException cne) {	// ojdbc가 잘 깔렸는지 확인 하는 catch문
			cne.printStackTrace(); 
			// printStackTrace() : 에러 발생 시 경로를 찾아준다.
			System.out.println("DB접속 실패 : 드라이버 로딩 실패");
		}catch(SQLException se) {				// url , user, password 확인하는 catch문							
			se.printStackTrace();
			System.out.println("DB접속 실패 : url, user, password 확인");
		}
	
		return con;	// null 을 넣지말고 con을 넣어서 명령을 실행시켜줘야한다.
					// DB접속이 정상적으로 되면 접속상태를 리턴
		
	}
	
	
	
	
	
	
	
	
}
