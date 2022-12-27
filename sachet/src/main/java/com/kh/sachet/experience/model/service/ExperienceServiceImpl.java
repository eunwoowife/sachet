package com.kh.sachet.experience.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.experience.model.dao.ExperienceDao;
import com.kh.sachet.experience.model.vo.Experience;

@Service
public class ExperienceServiceImpl implements ExperienceService{

	@Autowired
	private ExperienceDao experienceDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		int listCount = experienceDao.selectListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<Experience> selectExperienceList(PageInfo pi) {
		ArrayList<Experience> eList = experienceDao.selectExperienceList(sqlSession, pi);
		return eList;
	}

	@Override
	public Experience selectExperienceList(int eno) {
		Experience e = experienceDao.selectExperience(sqlSession, eno);
		return e;
	}
	
	
}
