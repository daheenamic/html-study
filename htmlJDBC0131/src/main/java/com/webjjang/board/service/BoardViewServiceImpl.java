package com.webjjang.board.service;

import com.webjjang.board.dao.BoardDAO;
import com.webjjang.board.dao.BoardDAOImpl;
import com.webjjang.main.ServiceInterface;

public class BoardViewServiceImpl implements ServiceInterface {

	@Override
	// obj - 글번호(0), 증가여부(1) : Object[]
	public Object service(Object obj) throws Exception{
		System.out.println("BoardViewServiceImpl.service()");
		Object[] objs = (Object[]) obj;
		// 글번호
		long no = (long) objs[0];
		// 증가 여부
		int inc = (int) objs[1];
		// 생성 - 호출
		BoardDAO dao = new BoardDAOImpl();
		// 조회수 1 증가 여부 - 변수(inc)가 필요.
		if(inc == 1) dao.increase(no);
		return dao.view(no);
	}
	
}
