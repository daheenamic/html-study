package com.webjjang.member.service;

import com.webjjang.main.ServiceInterface;
import com.webjjang.member.dao.MemberDAO;
import com.webjjang.member.dao.MemberDAOImpl;
import com.webjjang.member.vo.LoginVO;

public class MemberLoginServiceImpl implements ServiceInterface {

	@Override
	// 넘어오는 데이터 obj -> LoginVO -> 형변환해서 리턴해야한다.
	public Object service(Object obj) throws Exception {
		System.out.println("MemberLoginServiceImpl.service()");
		MemberDAO dao = new MemberDAOImpl();
		return dao.login((LoginVO)obj);
	}
}
