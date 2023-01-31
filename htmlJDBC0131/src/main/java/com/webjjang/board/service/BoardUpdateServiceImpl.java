package com.webjjang.board.service;

import com.webjjang.board.dao.BoardDAO;
import com.webjjang.board.dao.BoardDAOImpl;
import com.webjjang.board.vo.BoardVO;
import com.webjjang.main.ServiceInterface;

public class BoardUpdateServiceImpl implements ServiceInterface {

	@Override
	public Object service(Object obj) throws Exception{
		System.out.println("BoardUpdateServiceImple");
		// 생성 - 호출
		BoardDAO dao = new BoardDAOImpl();
		return dao.update((BoardVO)obj);
	}
	
}
