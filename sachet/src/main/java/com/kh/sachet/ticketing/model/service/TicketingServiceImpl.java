package com.kh.sachet.ticketing.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.ticketing.model.dao.TicketDao;
import com.kh.sachet.ticketing.model.vo.Ticket;
import com.kh.sachet.ticketing.model.vo.TicketInfo;


@Service
public class TicketingServiceImpl implements TicketingService {

	@Autowired
	private TicketDao ticketDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//예매확인창에 유저 정보 띄워오는 select문
	public Member selectUserInfo(int userNo) {
		Member m = ticketDao.selectUserInfo(sqlSession, userNo);
		return m;
	}


	@Override
	public int insertTicket(Ticket t) {
		int result = ticketDao.insertTicket(sqlSession, t);
		return result;
	}


	@Override
	public int insertOrder(TicketInfo t) {
		int result = ticketDao.insertOrder(sqlSession, t);
		return result;
	}


	@Override
	public int selectOrderNo(int userNo) {
		int orderNo = ticketDao.selectOrderNo(sqlSession, userNo);
		return orderNo;
	}

	
	
	
}
