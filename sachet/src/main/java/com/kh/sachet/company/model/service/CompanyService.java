package com.kh.sachet.company.model.service;

import com.kh.sachet.company.model.vo.Company;

public interface CompanyService {

	Company loginMember(Company c);
	
	int idCheck(String checkId);
	
	int insertCompanyUser(Company c);
	
	int updateCompanyUser(Company c);
}
