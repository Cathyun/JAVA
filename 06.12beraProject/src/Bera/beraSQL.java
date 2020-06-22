package Bera;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class beraSQL {

	// DB 접속을 위한 변수 선언
	Connection con = null;

	// 쿼리문 전송을 위한 변수 선언
	Statement stmt = null;		// ? 없이 사용할때
//	PreparedStatement pstmt = null;	// ?에 문자를 저장 하는기능 (63 행참고) 

	// 조회 (Select) 결과를 저장하기 위한 변수 선언 
	ResultSet rs = null; //(count랑은 다른 개념 rs는 데이터 count는 갯수 라고 생각)

	// DB 접속
	public void connect() {
		con = DBC.DBConnect();
		// DBC.DBConnect() = DBC클래스 DBConnect 메소드의 con 값
	}

	// DB 접속 해제
	public void conColse() {

		try {
			con.close();
		} catch (SQLException se) {

			se.printStackTrace();
		}
	}
	
	// 메뉴조회 (SELECT)
	public void select() {

		try {
			stmt = con.createStatement();
			String sql = "SELECT * FROM BERA_SIZE";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) { // 레코드가 더이상 존재하지 않을때까지
				System.out.println("크기 : " + rs.getString(1));
				System.out.println("가격 : " + rs.getString(2));
				System.out.println("맛 : " + rs.getString(3));
				System.out.println();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} 
	}

	
	// 맛조회 (SELECT)
	public void fSelect() {

		try {
			stmt = con.createStatement();
			String sql = "SELECT * FROM BERA_FLAVOR";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) { // 레코드가 더이상 존재하지 않을때까지
				System.out.println(rs.getString(1));
				System.out.println();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} 
	}
	
	
	
	
	
	
	
	
	
	
}
