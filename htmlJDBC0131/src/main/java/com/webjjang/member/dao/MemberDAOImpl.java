package com.webjjang.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.webjjang.member.vo.LoginVO;

public class MemberDAOImpl implements MemberDAO{

	@Override
	public LoginVO login(LoginVO vo) throws Exception {
		
		// 필요한 객체 선언
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// DB 연결 정보
		final String DRIVER = "oracle.jdbc.driver.OracleDriver";
		final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
		final String ID = "java";
		final String PW = "java";
		
		// 리턴 데이터
		LoginVO loginVo = null;
		
		try {
		// 1. 확인
		Class.forName(DRIVER);
		System.out.println("1. 드라이버 확인");
		
		// 2. 접속
		con = DriverManager.getConnection(URL, ID, PW);
		System.out.println("2. 접속 성공");
		
		// 3. sql
		String sql = " select m.id, m.name, m.email, m.gradeNo, g.gradeName "
				+ " from member m, grade g "
				+ " where (m.id =? and m.pw =?) and (m.gradeNo = g.gradeNo) ";
		System.out.println("3. sql - " + sql);
		
		// 4. 실행 객체 & 데이터 담기
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPw());
		System.out.println("4. 실행객체 & 데이터 담기 완료");
		
		// 5. 실행
		rs = pstmt.executeQuery();
		System.out.println("5. 실행 완료");
		
		// 6. 데이터 저장 또는 표시
		// 조인을 잘 했으면 가져오는 데이터 1개, 조인을 안 했으면 가져오는 데이터 2개
		if (rs != null && rs.next()) {
			loginVo = new LoginVO();
			loginVo.setId(rs.getString("id"));
			loginVo.setName(rs.getString("name"));
			loginVo.setEmail(rs.getString("email"));
			loginVo.setGradeNo(rs.getInt("gradeNo"));
			loginVo.setGradeName(rs.getString("gradeName"));
			} 
		System.out.println("6. 저장 - loginVO : " + loginVo);
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				// 7. 닫기
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				if (rs != null) rs.close();
				System.out.println("7. 객체 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
			} // end of try~catch
		} // end of finally
		
		return loginVo;
		
	} // end of login()
} // end of class
