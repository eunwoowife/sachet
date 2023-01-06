package com.kh.sachet.company.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.company.model.dao.CompanyDao;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.company.model.vo.Sales;
import com.kh.sachet.member.model.dao.MemberDao;

@Service
public class CompanyServiceImpl implements CompanyService{
	
	@Autowired
	private CompanyDao companyDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Company loginMember(Company c) {
		Company loginUser2 = companyDao.loginMember(sqlSession, c);
		return loginUser2;
	}

	//아이디 중복체크
	@Override
	public int idCheck(String checkId) {
		int count = companyDao.idCheck(sqlSession, checkId);
		return count;
	}

	//기업회원 가입
	@Override
	public int insertCompanyUser(Company c) {
		int result = companyDao.insertCompanyUser(sqlSession, c);
		return result;
	}

	@Override
	public int updateCompanyUser(Company c) {
		int result = companyDao.updateCompanyUser(sqlSession, c);
		return result;
	}

	@Override
	public ArrayList<Sales> selectProductSales(int comNo) {
		ArrayList<Sales> sList = companyDao.selectProductSales(sqlSession, comNo);
		return sList;
	}

	@Override
	public ArrayList<Sales> selectExperienceSales(int comNo) {
		ArrayList<Sales> sList = companyDao.selectExperienceSales(sqlSession, comNo);
		return sList;
	}

	
	
}
