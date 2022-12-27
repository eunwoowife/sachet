package com.kh.sachet.ticketing.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.Order;
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
	
	public int selectTicketNo(SqlSessionTemplate sqlSession, int userNo) {
		 Ticket t = sqlSession.selectOne("ticketMapper.selectTicketNo", userNo);
		 int result = t.getTicketNo();
		 return result;
	}

	public int insertOrder(SqlSessionTemplate sqlSession, TicketInfo t) {
		return sqlSession.insert("OrderMapper.insertOrder", t);
	}

	public int selectOrderNo(SqlSessionTemplate sqlSession, int userNo) {
		 Order o = sqlSession.selectOne("OrderMapper.selectOrderNo", userNo);
		 int result = o.getOrderNo();
		 return result;
	}




	public int insertOrderDetail(SqlSessionTemplate sqlSession, TicketInfo t) {
		int result= sqlSession.insert("OrderMapper.insertOrderDetail", t);
		return 1;
	}
	
	
	
	
}
