package com.kh.sachet.ticketing.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.ticketing.model.dao.TicketDao;


@Service
public class TicketingServiceImpl implements TicketingService {

	@Autowired
	private TicketDao ticketDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	
}
