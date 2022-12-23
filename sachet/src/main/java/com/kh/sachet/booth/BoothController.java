package com.kh.sachet.booth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoothController {
	
	@RequestMapping("boothListView.boo")
	public String boothListView () {
		
		return "booth/boothListView";
		
	}

}
