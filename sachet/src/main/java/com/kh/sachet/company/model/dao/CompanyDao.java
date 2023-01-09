package com.kh.sachet.company.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.company.model.vo.Sales;

@Repository
public class CompanyDao {

	public Company loginMember(SqlSessionTemplate sqlSession, Company c) {
		return sqlSession.selectOne("companyMapper.loginMember", c);
	}

	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("companyMapper.idCheck", checkId);
	}

	public int insertCompanyUser(SqlSessionTemplate sqlSession, Company c) {
		return sqlSession.insert("companyMapper.insertCompanyUser", c);
	}

	public int updateCompanyUser(SqlSessionTemplate sqlSession, Company c) {
		return sqlSession.update("companyMapper.updateCompanyUser", c);
	}

	public ArrayList<Sales> selectProductSales(SqlSessionTemplate sqlSession, int comNo) {
		ArrayList<Sales> sList = (ArrayList)sqlSession.selectList("salesMapper.selectProductSales", comNo);
		return sList;
	}

	public ArrayList<Sales> selectExperienceSales(SqlSessionTemplate sqlSession, int comNo) {
		ArrayList<Sales> sList = (ArrayList)sqlSession.selectList("salesMapper.selectExperienceSales", comNo);
		return sList;
	}

	public ArrayList<Integer> selectProductPayList(SqlSessionTemplate sqlSession, int comNo) {
		ArrayList<Integer> payList = (ArrayList)sqlSession.selectList("OrderMapper.selectProductPayList", comNo);
		return payList;
	}

	public ArrayList<Integer> selectExperiencePayList(SqlSessionTemplate sqlSession, int comNo) {
		ArrayList<Integer> payList = (ArrayList)sqlSession.selectList("OrderMapper.selectExperiencePayList", comNo);
		return payList;
	}

	public int changeStatusYes(SqlSessionTemplate sqlSession, Integer integer) {
		return sqlSession.update("salesMapper.changeStatusYes", integer);
	}

	public int changeStatusNo(SqlSessionTemplate sqlSession, Integer integer) {
		return sqlSession.update("salesMapper.changeStatusNo", integer);
	}

	public int checkBooth(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.selectOne("boothMapper.checkBooth", comNo);
	}

	public int withdrawalCompany(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.update("companyMapper.withdrawalCompany", comNo);
	}

	public int selectBalance(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.selectOne("companyMapper.selectBalance", comNo);
	}

}
