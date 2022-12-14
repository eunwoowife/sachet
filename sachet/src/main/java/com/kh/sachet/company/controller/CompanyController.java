package com.kh.sachet.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.company.model.service.CompanyService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;

	@RequestMapping("joinCompanyForm.co")
	public String joinCompanyForm() {
		return "company/joinCompanyForm";
	}
	
	
	
}
