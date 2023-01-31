package com.webjjang.board.dao;

import java.util.List;

import com.webjjang.board.vo.BoardVO;

public interface BoardDAO {
	// 1. 리스트 - 전달 데이터 없음. 결과 VO(no, title, writer, writeDate, hit) 여러개 -> List<VO>
	//   select no, title, writer, writeDate, hit from board order by no desc
	public List<BoardVO> list() throws Exception;
	// 2. 글보기 - 전달 : no, 결과:VO(no, title, content, writer, writeDate, hit) 한개
	//   select no, title, content, writer, writeDate, hit from board where no = [2]
	public BoardVO view(long no)  throws Exception;
	// 2-1. 1증가
	//   update board set hit = hit + 1 where no = [2]
	public Integer increase(long no)  throws Exception;
	// 3. 쓰기 - 전달 : VO(title, content, writer, pw), 결과 : Integer
	//   insert into board(no, title, content, writer, pw)
	//     values(board_seq.nextval, '[title]', '[content]', '[writer]', '1111')
	public Integer write(BoardVO vo)  throws Exception;
	// 4. 수정 - 전달 : VO(title, content, writer, no), 결과 Integer
	//   update set title = '수정', content = '수정내용', writer = '홍길동'
	//   where no = 2 and pw = '1111' 
	public Integer update(BoardVO vo)  throws Exception;
	// 5. 삭제 - 전달 : VO(no, pw), 결과 : Integer
	//   delete from board where no = 2 and pw = '1111'
	public Integer delete(BoardVO vo)  throws Exception;

}
