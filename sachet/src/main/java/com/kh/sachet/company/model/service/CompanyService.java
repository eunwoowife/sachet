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

	ArrayList<Sales> selectExperienceSales(int comNo);

	ArrayList<Integer> selectProductPayList(int comNo);

	ArrayList<Integer> selectExperiencePayList(int comNo);

	int changeStatusYes(Integer integer);

	int changeStatusNo(Integer integer);

	int checkBooth(int comNo);

	int withdrawalCompany(int comNo);

	int selectBalance(int comNo);
}
