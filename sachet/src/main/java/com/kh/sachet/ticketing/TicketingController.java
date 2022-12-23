package com.kh.sachet.ticketing;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String ticketBook2View () {
		return "ticketing/ticketBook2";
	}
	
	@RequestMapping("ticketBook3.ti")
	public String ticketBook3View () {
		return "ticketing/ticketBook3";
	}

}
