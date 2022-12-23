package com.kh.sachet.ticketing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sachet.ticketing.model.vo.Ticket;
import com.kh.sachet.ticketing.model.vo.TicketInfo;

@Controller
public class TicketingController {
	
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
		
//		int userNo = ();
		
		int userNo = 1003;
		int ticketAdult = Integer.parseInt(adultCount);
		int ticketKid = Integer.parseInt(kidsCount);
		int ticketFree = Integer.parseInt(freeCount);
		String ticketDate = bookDate;
		System.out.println(bookingtime);
		
		//유저넘버 가지고 폰넘버와 이메일 가져오기
		
		String phone = "010-1111-2222";
		String email = "example@ex.com";
		
		int totalPrice = (ticketAdult*20000)+(ticketKid*8000);
		int totalPeople = ticketAdult+ticketKid+ticketFree;
		
		
		TicketInfo t = new TicketInfo ();
		
		t.setTicketDate(ticketDate);
		t.setPhone(phone);
		t.setEmail(email);
		t.setTotalPrice(totalPrice);
		t.setTotalPeople(totalPeople);
		t.setBookingtime(bookingtime);
		t.setTicketAdult(ticketAdult);
		t.setTicketKid(ticketKid);
		t.setTicketFree(ticketFree);
		
		
		mv.addObject("t", t);
		
		mv.setViewName("ticketing/ticketBook2");
		
		return mv;
	}
	
	@RequestMapping("ticketBook3.ti")
	public String ticketBook3View () {
		return "ticketing/ticketBook3";
	}
	
	
	@ResponseBody
	@RequestMapping(value="ticketPayment.ti",  produces="application/json; charset=UTF-8")
	public void ajaxMethod2(String imp_uid, String merchant_uid) {
		
		System.out.println("imp:"+imp_uid);
		System.out.println("mer"+merchant_uid);
		
		
	}
	
	
	

}
