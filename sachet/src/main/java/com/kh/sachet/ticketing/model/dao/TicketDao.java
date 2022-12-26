package com.kh.sachet.ticketing.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.ticketing.model.vo.Ticket;
import com.kh.sachet.ticketing.model.vo.TicketInfo;

@Repository
public class TicketDao {

	public Member selectUserInfo(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("ticketMapper.selectUserInfo", userNo);
	}

	public int insertTicket(SqlSessionTemplate sqlSession, Ticket t) {
		return sqlSession.insert("ticketMapper.insertTicket", t);
	}

	public int insertOrder(SqlSessionTemplate sqlSession, TicketInfo t) {
		return sqlSession.insert("OrderMapper.insertOrder", t);
	}

	public int selectOrderNo(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("OrderMapper.selectOrderNo", userNo);
	}

}
