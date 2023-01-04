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

}
