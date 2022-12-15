package com.kh.sachet.ticket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ticketController {
	
	@RequestMapping("ticketInfo.ti")
	public String ticketInfo() {
		return "ticketing/ticketInfo";
	}
	
	
	@RequestMapping("ticketing.ti")
	public String ticketin() {
		return "ticketing/book";
	}
	
	

}
