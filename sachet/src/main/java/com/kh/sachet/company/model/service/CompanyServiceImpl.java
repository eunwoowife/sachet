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

	@Override
	public ArrayList<Integer> selectProductPayList(int comNo) {
		ArrayList<Integer> payList = companyDao.selectProductPayList(sqlSession, comNo);
		return payList;
	}

	@Override
	public ArrayList<Integer> selectExperiencePayList(int comNo) {
		ArrayList<Integer> payList = companyDao.selectExperiencePayList(sqlSession, comNo);
		return payList;
	}

	@Override
	public int changeStatusYes(Integer integer) {
		int result = companyDao.changeStatusYes(sqlSession, integer);
		return result;
	}

	@Override
	public int changeStatusNo(Integer integer) {
		int result = companyDao.changeStatusNo(sqlSession, integer);
		return result;
	}

	@Override
	public int checkBooth(int comNo) {
		return companyDao.checkBooth(sqlSession, comNo);
	}

	@Override
	public int withdrawalCompany(int comNo) {
		return companyDao.withdrawalCompany(sqlSession, comNo);
	}

	@Override
	public int selectBalance(int comNo) {
		return companyDao.selectBalance(sqlSession, comNo);
	}

	
	
}
