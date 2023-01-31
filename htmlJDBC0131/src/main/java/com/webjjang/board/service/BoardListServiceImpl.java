package com.webjjang.board.service;

import com.webjjang.board.dao.BoardDAO;
import com.webjjang.board.dao.BoardDAOImpl;
import com.webjjang.main.ServiceInterface;

// 데이터 처리를 위한 클래스
public class BoardListServiceImpl implements ServiceInterface {

	@Override
	public Object service(Object obj) throws Exception{
		System.out.println("BoardListServiceImpl.service()");
		// DB가 필요 - DAO : 생성 - 호출
		BoardDAO dao = new BoardDAOImpl();
		return dao.list();
	}
	
}
