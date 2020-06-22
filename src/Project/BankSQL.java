package Project;

import java.sql.*;

public class BankSQL {
	// DB 접속을 위한 변수 선언
	Connection con = null;

	// 쿼리문 전송을 위한 변수 선언
	// Statement stmt = null;
	// PreparedStatement : ? 를 문자로 인식
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;

	// 조회(Select) 결과를 저장하기 위한 변수
	ResultSet rs = null;

	public void DBConnect() {
		con = DBC.DBConnect();
	}

	public void conClose() {

		try {
			con.close();
			System.out.println("DB접속 해지!");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public int checkAccount(String accountNumber, int accountpassword) {
		String sql1 = "INSERT INTO BANK VALUES('임시계좌',?,?,1000000)";
		String sql = "SELECT BALANCE FROM BANK WHERE  ACCOUNTNUMBER = ? AND ACCOUNTPASSWORD = ?";
		
		int balance = 0;
		
		try {
			pstmt1 = con.prepareStatement(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, accountNumber);
			pstmt.setInt(2, accountpassword);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				balance = rs.getInt("BALANCE");
			} else {
				System.out.println("잘못입력하셨습니다.");
			}
		} catch (SQLException se) {

			se.printStackTrace();
		}
		return balance;
	}

	public void withdraw1(int sum, String accountNumber, int wBalance) {
		String sql = "UPDATE BANK SET BALANCE = BALANCE-? WHERE ACCOUNTNUMBER = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sum);
			pstmt.setString(2, accountNumber);
			int count = pstmt.executeUpdate();

			if (count > 0) {
				System.out.println("결제 성공");
			} else {
				System.out.println("결제 실패");
			}
		} catch (SQLException se) {

			se.printStackTrace();
		}

	}

	public void withdraw(int sum, String id1, int pw2) {
		// 서브쿼리 사용
		String sql = "UPDATE BANK SET BALANCE = BALANCE-? WHERE ACCOUNTNUMBER = (SELECT ACCOUNTNUMBER FROM C_MEMBER WHERE ID = ? AND PW = ?)";
		try {										// BANK 테이블에 저장된 계좌번호 = 회원가입할때 입력한 계좌번호  
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sum);	// 상품 총 가격
			pstmt.setString(2, id1); // 현재 사용하고 있는 회원 ID
			pstmt.setInt(3, pw2); // 입력받은 PW
			int count = pstmt.executeUpdate();
			if (count > 0) {
				System.out.println("결제가 완료되었습니다!");
				System.out.println("회원가입 시 등록된 주소로 상품이 배송됩니다.");
			} else {

			}
		} catch (SQLException se) {

			se.printStackTrace();
		}

	}

	public int checkBalnce(String id1, int pw2) {
		int balance = 0;
		// 서브쿼리를 이용 								
		String sql = "SELECT BALANCE FROM BANK WHERE ACCOUNTNUMBER = (SELECT ACCOUNTNUMBER FROM C_MEMBER WHERE ID = ? AND PW = ?)";
											// BANK 테이블에 저장된 계좌번호 = 회원가입할때 입력한 계좌번호 
		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, id1); // 첫 번째 물음표 : 현재 사용하고 있는 회원 ID
			pstmt.setInt(2, pw2); // 두 번째 물음표 : 입력받은 PW

			rs = pstmt.executeQuery();
			if (rs.next()) {
				balance = rs.getInt("BALANCE");
			}
			
		} catch (SQLException se) {
			se.printStackTrace();
		}

		return balance;
	}

	public void modify_ac(String ac, String id1) {
		String sql = "UPDATE BANK SET ACCOUNTNUMBER = ? WHERE ID = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, ac);
			pstmt.setString(2, id1);
			pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

}
