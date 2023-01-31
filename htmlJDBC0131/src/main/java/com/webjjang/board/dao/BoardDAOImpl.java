package com.webjjang.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.webjjang.board.vo.BoardVO;

public class BoardDAOImpl implements BoardDAO {

	// 필요한 객체 선언
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 메서드가 아니라 sys 사용 불가능...!

	// DB 정보 - 나중에 클래스를 따로 만들거임(공지사항, 게시판, 주문정보 등에 다 쓰니까)
	// 지금은 계속 갖다 쓰는것 이기 때문에 바깥쪽에 선언 해 놓는다.
	// 중요한 정보라서 private로 선언해서 다른곳에서 갖다 쓰지 못하게 한다.
	// 변경 할 수 없게 상수(final)로 선언한다.
	private final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	// localhost 대신에 본인 아이피 넣기
	private final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	// DB에 프로젝트 프로젝트 이름이나 팀이름으로 계정을 따로 만든다. - DBA
	private final String ID = "java";
	private final String PW = "java";

	// 1. 리스트 - 전달 데이터 없음. 결과 VO(no, title, writer, writeDate, hit) 여러개 -> List<VO>
	// select no, title, writer, writeDate, hit from board order by no desc
	public List<BoardVO> list() throws Exception {
		System.out.println("BoardDAOImpl.list()");
		// 결과 변수
		List<BoardVO> list = null;
		try {
			// 1. 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");

			// 2. 접속
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 연결 성공");

			// 3. sql - 변경 데이터는 '?'로 대체 해 넣는다.
			// sql문장도 변하지 않는 코드기 때문에 외부에서 public static final 변수로 선언해서 꺼내와도 된다.
			String sql = "select no, title, writer, to_char(writeDate, 'yyyy-mm-dd') writeDate, hit from board order by no desc";
			System.out.println("3. sql - " + sql);

			// 4. 실행객체 & 데이터세팅
			pstmt = con.prepareStatement(sql);
			System.out.println("4. 실행 객체 성공");

			// 5. 실행 - select : executeQuery() -> ResultSet
			// 리턴 타입이 Resultset이라서 executeQuery()가 자동으로 나온다.
			rs = pstmt.executeQuery();
			System.out.println("5. 실행 - rs : " + rs);
			// rs 출력값 -> oracle.jdbc.driver.OracleResultSetImpl@1efee8e7
			// 해시코드가 나옴 -> Null 값이 아닌 데이터가 들어갔음.

			// 6. 데이터 저장 -> rs에 있는 데이터를 -> vo로 꺼내고 -> list로 리턴한다
			// rs가 null이면 안된다. 데이터가 있는 만큼 반복 처리. 데이터가 몇개 있는지 모르니까 for문 말고 while문으로 만들기.
			// rs의 첫번째 포지션은 0. 그다음 re.next()로 계속 다음 데이터 이동.
			if (rs != null) {
				while (rs.next()) {
					// list 생성 - null 인 경우 한번만 생성해서 만들어 둔다.
					// if문장을 붙이지 않게 되면 한바퀴 돌고 list를 또 생성하고 반복문 돌 때 마다 list를 생성하므로 조건 걸어 줘야 함.
					// 한바퀴 돌면 list가 null이 아니므로 새로 생성하지 않는다.
					if (list == null) list = new ArrayList<>();

					// rs -> vo
					BoardVO vo = new BoardVO();
					vo.setNo(rs.getLong("no"));
					vo.setTitle(rs.getString("title"));
					vo.setWriter(rs.getString("writer"));
					vo.setWriteDate(rs.getString("writeDate"));
					vo.setHit(rs.getLong("hit"));

					// vo -> list
					list.add(vo);
				} // end of while
			} // end of if

			System.out.println("6. 데이터 담기 - list : " + list);

			// 데이터 리턴
			return list;

		} catch (Exception e) {
			// 개발자를 위한 코드. 나중에 주석처리 한다.
			e.printStackTrace();
			// 사용자를 위한 예외처리
			// 예외처리는 BoardController에 넘긴다.
			throw new Exception("게시판 리스트 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				// 7. 객체 닫기
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				if (rs != null) rs.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				// 개발자를 위한 코드. 나중에 주석처리 한다.
				e.printStackTrace();
				// 사용자를 위한 예외처리
				// 예외처리는 BoardController에 넘긴다.
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	} // end of list()

	// 2. 글보기 - 전달 : no, 결과:VO(no, title, content, writer, writeDate, hit) 한개
	// select no, title, content, writer, writeDate, hit from board where no = [2]
	public BoardVO view(long no) throws Exception {
		System.out.println("BoardDAOImpl.view()");
		try {
			// print() 메서드에서 vo가 null일때 데이터가 없습니다. 라고 출력 하기 때문에 여기서 객체를 생성 해 주면 안된다.
			// 여기서 객체를 미리 생성 해 주면 null값이 아니기 때문에 데이터가 정상적으로 들어가지 않더라도 데이터가 없다는 문구가 출력되지 않는다.
			// 그래서 6번에 if문 안에 vo를 세팅 하기 바로 전에 vo 객체를 생성 해 줘야 한다.
			BoardVO viewVo = null;
			
			// 1. 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");
			
			// 2. 연결
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 접속");
			
			// 3. sql
			String sql = " select no, title, content, writer, "
					// to_char(writeDate, 'yyyy-mm-dd') 
					// -> writeDate가 시분초까지 나와서 년월일만 나오게 형식을 정해 준다.
					+ " to_char(writeDate, 'yyyy-mm-dd') writeDate, hit from board where no = ? ";
			System.out.println("3. sql - " + sql);
			
			// 4. 실행 객체 & 데이터 세팅
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, no);
			System.out.println("4. 실행 객체 & 데이터 세팅");
			
			// 5. 실행
			rs = pstmt.executeQuery();
			System.out.println("5. 실행 완료");
			
			// 6. 저장 : rs -> vo
			if (rs != null && rs.next()) {
				// vo 생성
				viewVo = new BoardVO();
				// 데이터 세팅 rs -> vo
				viewVo.setNo(rs.getLong("no")); // 
				viewVo.setTitle(rs.getString("title"));
				viewVo.setContent(rs.getString("content"));
				viewVo.setWriter(rs.getString("writer"));
				viewVo.setWriteDate(rs.getString("writeDate"));
				viewVo.setHit(rs.getLong("hit"));
				
			} // end of if
			
			System.out.println("6. 저장 - vo : " + viewVo);
			
			return viewVo;
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시판 보기 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				// 7. 닫기
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				if (rs != null) rs.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	}

	// 2-1. 조회수 1 증가
	// update board set hit = hit + 1 where no = [2]
	public Integer increase(long no) throws Exception {
		System.out.println("BoardDAOImpl.increase()");
		try {
			Integer result = 0;
			
			// 1. 드라이버 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");
			
			// 2. 접속
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 접속 성공");
			
			// 3. sql
			String sql = "update board set hit = hit + 1 where no = ?";
			System.out.println("3. sql - " + sql);
			
			// 4. 실행 객체 & 데이터 세팅
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, no);
			System.out.println("4. 실행 객체 생성");
			
			// 5. 실행 update : executeUpdate()
			result = pstmt.executeUpdate();
			System.out.println("5. 실행 완료");
			
			// 6. 데이터 표시 - list나 view에서 조회수 1 잘 증가 되었나 확인 하면 됨.
			if(result == 1) System.out.println("6. 표시 - 조회수 1 증가 : " + result + "행이 수정되었습니다.");
			else System.out.println("6. 표시 - 글 번호를 확인 해 주세요.");
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시판 조회수 1증가 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	}

	// 3. 쓰기 - 전달 : VO(title, content, writer, pw), 결과 : Integer
	// insert into board(no, title, content, writer, pw)
	// values(board_seq.nextval, '[title]', '[content]', '[writer]', '1111')
	public Integer write(BoardVO vo) throws Exception {
		System.out.println("BoardDAOImpl.write()");	
		try {
			Integer result = 0;
			
			// DB에 글 등록하는 처리
			// 1. 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");
			
			// 2. 접속
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 연결");
			
			// 3. sql
			String sql = " insert into board(no, title, content, writer, pw) "
					+ " values(board_seq.nextval, ?, ?, ?, ?) ";
			System.out.println("3. sql - " + sql);
			
			// 4. 실행 객체 & 데이터 세팅
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getWriter());
			pstmt.setString(4, vo.getPw());
			System.out.println("4. 실행 객체 완성");
			
			// 5. 실행
			result = pstmt.executeUpdate();
			System.out.println("5. 실행 완료.");
			
			// 6. 데이터 처리 내용 표시
			// result == 1이아니면 예외처리 했기 때문에 if문 안써도 됨.
			System.out.println("6. 등록 완료");
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시판 글쓰기 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	}

	// 4. 수정 - 전달 : VO(title, content, writer, no), 결과 Integer
	// update set title = '수정', content = '수정내용', writer = '홍길동'
	// where no = 2 and pw = '1111'
	public Integer update(BoardVO vo) throws Exception {
		System.out.println("BoardDAOImpl.update()");
		try {
			Integer result = 0;
			
			// 1. 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");
			
			// 2. 접속
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 접속 성공");
			
			// 3. sql
			String sql = "update board set title=?, content=?, writer=? where no = ? and pw = ?";
			System.out.println("3. sql - " + sql);
			
			// 4. 실행 객체 & 데이터 세팅
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getWriter());
			pstmt.setLong(4, vo.getNo());
			pstmt.setString(5, vo.getPw());
			System.out.println("4. 실행객체 + 데이터 세팅");
			
			// 5. 실행
			result = pstmt.executeUpdate();
			System.out.println("5. 실행 완료");
			
			// 6. 데이터 표시
			if(result == 1) System.out.println("6. 수정 완료");
			else System.out.println("6. 수정 실패");
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시판 글수정 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				// 7. 닫기
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	}

	// 5. 삭제 - 전달 : VO(no, pw), 결과 : Integer
	// delete from board where no = 2 and pw = '1111'
	public Integer delete(BoardVO vo) throws Exception {
		System.out.println("BoardDAOImpl.delete()");
		try {
			Integer result = 0;
			
			// 1. 확인
			Class.forName(DRIVER);
			System.out.println("1. 드라이버 확인");
			
			// 2. 접속
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("2. 접속 완료");
			
			// 3. sql
			String sql = "delete from board where no = ? and pw = ?";
			System.out.println("3. sql - " + sql);
			
			// 4. 실행 객체 & 데이터세팅
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, vo.getNo());
			pstmt.setString(2, vo.getPw());
			System.out.println("4. 실행객체");
			
			// 5. 실행
			result = pstmt.executeUpdate();
			System.out.println("5. 실행 완료");
			
			// 6. 데이터 표시
			if (result == 1) System.out.println("6. 삭제완료");
			else System.out.println("6. 삭제 실패 - no, pw 확인하세요");

			return result;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시판 글삭제 DB 처리 중 오류가 발생되었습니다.");
		} finally {
			try {
				if (con != null) con.close();
				if (pstmt != null) pstmt.close();
				System.out.println("7. 닫기 성공");
			} catch (Exception e) {
				e.printStackTrace();
				throw new Exception("게시판 리스트 객체 닫기 처리 중 오류가 발생되었습니다.");
			}
		}
	}

}
