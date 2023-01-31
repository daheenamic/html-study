package com.webjjang.member.dao;

import com.webjjang.member.vo.LoginVO;

public interface MemberDAO {
	
	public LoginVO login(LoginVO vo) throws Exception;
}
