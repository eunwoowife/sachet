package com.kh.sachet.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.member.model.service.MemberService;
@Controller
public class MyorderController {

	
	
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("myorder.me")
	
	public String myorder() {
		return "member/myOrder";
	}
}

