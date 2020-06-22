package Project;

import java.sql.*;

public class CarSQL {

	// DB 접속을 위한 변수 선언
	Connection con = null;

	// 쿼리문 전송을 위한 변수 선언
	// Statement stmt = null;
	// PreparedStatement : ? 를 문자로 인식
	PreparedStatement pstmt = null;

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

	public void memberJoin(C_Member member) {
		String sql = "INSERT INTO C_MEMBER VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, member.getID());
			pstmt.setInt(2, member.getPW());
			pstmt.setString(3, member.getNAME());
			pstmt.setInt(4, member.getAGE());
			pstmt.setString(5, member.getPHONE());
			pstmt.setString(6, member.getADR());
			pstmt.setString(7, member.getE_MAIL());
			pstmt.setString(8, member.getACOUNTNUMBER());

			int count1 = pstmt.executeUpdate();

			if (count1 > 0) {
				System.out.println();
				System.out.println("회원가입에 성공하였습니다!");
				System.out.println();
			} else {
				System.out.println();
				System.out.println("회원가입에 실패하였습니다 TnT");
				System.out.println();
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public boolean idCheck(String id1, int pw1) {
		boolean checkResult = false;

		String sql = "SELECT ID FROM C_MEMBER WHERE ID = ? AND PW = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, id1);
			pstmt.setInt(2, pw1);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				checkResult = true;
			} else {
				checkResult = false;
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		return checkResult;
	}

	public void carJoin(Client client) {

		String sql = "INSERT INTO C_SELLER VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, client.getSeller());
			pstmt.setString(2, client.getS_name());
			pstmt.setInt(3, client.getS_price());
			pstmt.setInt(4, client.getS_run());
			pstmt.setInt(5, client.getS_date());
			pstmt.setString(6, client.getS_oil());
			pstmt.setInt(7, client.getS_cc());
			pstmt.setString(8, client.getS_color());
			pstmt.setString(9, client.getS_number());
			pstmt.setString(10, client.getS_phone());

			int count = pstmt.executeUpdate();

			if (count > 0) {
				System.out.println("차량 등록 성공 0o0!");
			} else {
				System.out.println("차량 등록 실패 TnT");
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void checkInfo(Client client) {
		String sql = "SELECT * FROM C_SELLER WHERE SELLER = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, client.getSeller());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println();
				System.out.println("판매자 이름 : " + rs.getString(1));
				System.out.println("모델명 : " + rs.getString(2));
				System.out.println("가격 : " + rs.getInt(3) + "만원");
				System.out.println("주행거리 : " + rs.getInt(4) + "km");
				System.out.println("연식 : " + rs.getInt(5) + "년식");
				System.out.println("유종, 변속기 타입: " + rs.getString(6));
				System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
				System.out.println("색상 : " + rs.getString(8));
				System.out.println("차량번호 : " + rs.getString(9));
				System.out.println("판매자 전화번호 : " + rs.getString(10));
				System.out.println();

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void nameSearch(String s_name) {

		String sql = "SELECT * FROM C_SELLER WHERE S_NAME LIKE ?";
	
		try {
			

			String name = "%" + s_name + "%";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
					while (rs.next()) {
						System.out.println();
						System.out.println("판매자 이름 : " + rs.getString(1));
						System.out.println("모델명 : " + rs.getString(2));
						System.out.println("가격 : " + rs.getInt(3) + "만원");
						System.out.println("주행거리 : " + rs.getInt(4) + "km");
						System.out.println("연식 : " + rs.getInt(5) + "년식");
						System.out.println("유종, 변속기 타입: " + rs.getString(6));
						System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
						System.out.println("색상 : " + rs.getString(8));
						System.out.println("차량번호 : " + rs.getString(9));
						System.out.println("판매자 전화번호 : " + rs.getString(10));
						System.out.println();
					}
				
			
			

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}
		

	

	public void dateSearch(int s_date) {
		String sql = "SELECT * FROM C_SELLER WHERE S_DATE = ?";
		
		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, s_date);
			rs = pstmt.executeQuery();
		
					
					while (rs.next()) {
						System.out.println();
						System.out.println("판매자 이름 : " + rs.getString(1));
						System.out.println("모델명 : " + rs.getString(2));
						System.out.println("가격 : " + rs.getInt(3) + "만원");
						System.out.println("주행거리 : " + rs.getInt(4) + "km");
						System.out.println("연식 : " + rs.getInt(5) + "년식");
						System.out.println("유종, 변속기 타입: " + rs.getString(6));
						System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
						System.out.println("색상 : " + rs.getString(8));
						System.out.println("차량번호 : " + rs.getString(9));
						System.out.println("판매자 전화번호 : " + rs.getString(10));
						System.out.println();
					}
			
			
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

	public void priceSearch(int s_price, int s_price1) {
		String sql = "SELECT * FROM C_SELLER WHERE S_PRICE BETWEEN ? AND ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, s_price);
			pstmt.setInt(2, s_price1);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.println();
				System.out.println("판매자 이름 : " + rs.getString(1));
				System.out.println("모델명 : " + rs.getString(2));
				System.out.println("가격 : " + rs.getInt(3) + "만원");
				System.out.println("주행거리 : " + rs.getInt(4) + "km");
				System.out.println("연식 : " + rs.getInt(5) + "년식");
				System.out.println("유종, 변속기 타입: " + rs.getString(6));
				System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
				System.out.println("색상 : " + rs.getString(8));
				System.out.println("차량번호 : " + rs.getString(9));
				System.out.println("판매자 전화번호 : " + rs.getString(10));
				System.out.println();
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void ccSearch(int s_cc, int s_cc1) {
		String sql = "SELECT * FROM C_SELLER WHERE S_CC BETWEEN ? AND ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, s_cc);
			pstmt.setInt(2, s_cc1);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.println();
				System.out.println("판매자 이름 : " + rs.getString(1));
				System.out.println("모델명 : " + rs.getString(2));
				System.out.println("가격 : " + rs.getInt(3) + "만원");
				System.out.println("주행거리 : " + rs.getInt(4) + "km");
				System.out.println("연식 : " + rs.getInt(5) + "년식");
				System.out.println("유종, 변속기 타입: " + rs.getString(6));
				System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
				System.out.println("색상 : " + rs.getString(8));
				System.out.println("차량번호 : " + rs.getString(9));
				System.out.println("판매자 전화번호 : " + rs.getString(10));
				System.out.println();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void runSearch(int a, int b) {
		DBConnect();

		String sql = "SELECT * FROM C_SELLER WHERE S_RUN BETWEEN ? AND ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, a);
			pstmt.setInt(2, b);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println();
				System.out.println("판매자 이름 : " + rs.getString(1));
				System.out.println("모델명 : " + rs.getString(2));
				System.out.println("가격 : " + rs.getInt(3) + "만원");
				System.out.println("주행거리 : " + rs.getInt(4) + "km");
				System.out.println("연식 : " + rs.getInt(5) + "년식");
				System.out.println("유종, 변속기 타입: " + rs.getString(6));
				System.out.println("배기량(cc) : " + rs.getInt(7) + "cc");
				System.out.println("색상 : " + rs.getString(8));
				System.out.println("차량번호 : " + rs.getString(9));
				System.out.println("판매자 전화번호 : " + rs.getString(10));
				System.out.println();
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void modify_ph(String phone, String id1) {
		String sql = "UPDATE C_MEMBER SET PHONE = ? WHERE ID = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, phone);
			pstmt.setString(2, id1);
			pstmt.executeUpdate();
			System.out.println();
			System.out.println("전화번호 수정 성공!");
			System.out.println();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void modify_ad(String adr, String id1) {
		String sql = "UPDATE C_MEMBER SET ADR = ? WHERE ID = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, adr);
			pstmt.setString(2, id1);
			pstmt.executeUpdate();
			System.out.println();
			System.out.println("주소 수정 성공!");
			System.out.println();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	public void modify_ac(String ac, String id1) {
		String sql = "UPDATE C_MEMBER SET ACCOUNTNUMBER = ? WHERE ID = ?";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, ac);
			pstmt.setString(2, id1);
			pstmt.executeUpdate();
			System.out.println();
			System.out.println("계좌번호 수정 성공!");
			System.out.println();

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

}
