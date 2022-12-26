package com.kh.sachet.ticketing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.ticketing.model.service.TicketingService;
import com.kh.sachet.ticketing.model.vo.Ticket;
import com.kh.sachet.ticketing.model.vo.TicketInfo;

@Controller
public class TicketingController {
	
	@Autowired
	private TicketingService ticketService;
	
	
	
	@RequestMapping("ticketInfo.ti")
	public String ticketInfoView () {
		return "ticketing/ticketInfo";
	}
	

	
	@RequestMapping("ticketBook1.ti")
	public String ticketBook1View () {
		return "ticketing/ticketbook1";
	}
	
	@RequestMapping("ticketBook2.ti")
	public ModelAndView ticketBook2View
	(HttpSession session,ModelAndView mv, String bookDate, String adultCount, String kidsCount, String freeCount, String bookingtime) {
		
		//임의 유저번호
		int userNo = 1003;
		int ticketAdult = Integer.parseInt(adultCount);
		int ticketKid = Integer.parseInt(kidsCount);
		int ticketFree = Integer.parseInt(freeCount);
		String ticketDate = bookDate;
		System.out.println(bookingtime);
		
		//유저넘버 가지고 유저이름과 폰넘버와 이메일 가져오기
		Member m = ticketService.selectUserInfo(userNo);
		
		
		int totalPrice = (ticketAdult*20000)+(ticketKid*8000);
		int totalPeople = ticketAdult+ticketKid+ticketFree;
		
		
		TicketInfo t = new TicketInfo ();
		
		
		t.setTicketDate(ticketDate);
		t.setPhone(m.getPhone());
		t.setEmail(m.getEmail());
		t.setTotalPrice(totalPrice);
		t.setTotalPeople(totalPeople);
		t.setUserName(m.getUserName());
		t.setTicketAdult(ticketAdult);
		t.setTicketKid(ticketKid);
		t.setTicketFree(ticketFree);

		//티켓 insert
		//int result = ticketService.insertTicket(t);
		
		//정상적으로 insert되었을 경우 insert한 거 select 해서 결과값 가지고 가기
		
			mv.addObject("t",t);
			mv.setViewName("ticketing/ticketBook2");

		
		return mv;
	}
	
	@RequestMapping("ticketBook3.ti")
	public String ticketBook3View () {
		return "ticketing/ticketBook3";
	}
	
	
	@ResponseBody
	@RequestMapping(value="ticketPayment.ti",produces="text/html; charset=UTF-8")
	public void insertTicket(TicketInfo t) {
		
		Ticket insertT = new Ticket ();
		
		int userNo = 1003;
		insertT.setUserNo(userNo);
		insertT.setTicketDate(t.getTicketDate());
		insertT.setTicketAdult(t.getTicketAdult());
		insertT.setTicketKid(t.getTicketKid());
		insertT.setTicketFree(t.getTotalPeople());
		
		
		int result1 = ticketService.insertTicket(insertT);
		
		
		int result2 = ticketService.insertOrder(t);
		
		int orderNo = ticketService.selectOrderNo(userNo);
		
		//int result3 = ticketService.insertOrderDetail(t);

		
		//하 인절트 몇개해야하냐 일단 티켓 / 오더 / 오더 디테일? ㅇㅋ // 페이먼트도...
		
		
		//티켓 테이블 insert 여부
		if (result1>0) {
			
		}
		
		
		
	}
	
	
	

}
