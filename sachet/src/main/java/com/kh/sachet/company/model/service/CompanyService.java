package com.kh.sachet.company.model.service;

import java.util.ArrayList;

import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.company.model.vo.Sales;

public interface CompanyService {

	Company loginMember(Company c);
	
	int idCheck(String checkId);
	
	int insertCompanyUser(Company c);
	
	int updateCompanyUser(Company c);

	ArrayList<Sales> selectProductSales(int comNo);
}
