package com.kh.sachet.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.member.model.dao.MemberDao;
import com.kh.sachet.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
//		System.out.println("service:"+m);
		Member loginUser = memberDao.loginMember(sqlSession, m);
//		System.out.println("service:"+loginUser);
		return loginUser;
	}

}
