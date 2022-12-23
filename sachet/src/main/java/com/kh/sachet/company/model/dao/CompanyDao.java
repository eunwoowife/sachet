package com.kh.sachet.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.company.model.vo.Company;

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

}
