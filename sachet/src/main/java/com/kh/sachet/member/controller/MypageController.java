package com.kh.sachet.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.company.model.service.CompanyService;
import com.kh.sachet.member.model.service.MemberService;

@Controller

public class MypageController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private CompanyService companyService;
	
	
	@RequestMapping("myPage.me")
	public String mypageForm() {
		return "member/myPage";
	}
	
	
}
