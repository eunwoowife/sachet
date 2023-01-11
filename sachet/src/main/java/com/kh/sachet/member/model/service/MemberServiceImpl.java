package com.kh.sachet.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.member.model.dao.MemberDao;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.OrderDetail;
import com.kh.sachet.ticketing.model.vo.Ticket;

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

	@Override
	public int idCheck(String checkId) {
		int count = memberDao.idCheck(sqlSession, checkId);
		return count;
	}

	@Override
	public ArrayList<OrderDetail> selectOrderList(int userNo) {
		ArrayList<OrderDetail> orderMyList=memberDao.selectOrderList(sqlSession,userNo);
		return orderMyList;
	}

	@Override
	public ArrayList<Ticket> myticketList(int userNo) {
		ArrayList<Ticket> myticketList=memberDao.myticketList(sqlSession,userNo);
		return myticketList;
	}

	@Override
	public int updateMember(Member m) {
		return memberDao.updateMember(sqlSession,m);
	}

	@Override
	public Member loginMember(String userId) {
		return memberDao.loginMember(sqlSession, userId);
	}

	@Override
	public int deleteMember(Member m) {
		return memberDao.deleteMember(sqlSession,m);
	}

	@Override
	public int insertMember(Member m) {
		int result = memberDao.insertMember(sqlSession,m);
		
		return result;
	}

}
