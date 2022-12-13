package com.kh.sachet.company.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.company.model.dao.CompanyDao;
import com.kh.sachet.company.model.vo.Company;

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
	
	
}
