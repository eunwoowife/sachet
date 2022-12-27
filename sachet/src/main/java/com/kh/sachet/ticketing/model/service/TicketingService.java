package com.kh.sachet.ticketing.model.service;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.ticketing.model.vo.Ticket;
import com.kh.sachet.ticketing.model.vo.TicketInfo;

public interface TicketingService {

	Member selectUserInfo(int userNo);

	int insertTicket(Ticket t);

	int insertOrder(TicketInfo t);

	int selectOrderNo(int userNo);

	int insertOrderDetail(TicketInfo t);

	int selectTicketNo(int userNo);



}
