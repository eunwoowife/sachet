package com.kh.sachet.experience.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.experience.model.vo.Experience;

@Repository
public class ExperienceDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("experienceMapper.selectListCount");
	}

	public ArrayList<Experience> selectExperienceList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1 * limit);
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		ArrayList<Experience> eList = (ArrayList)sqlSession.selectList("experienceMapper.selectExperienceList", null, rowBounds);
		return eList;
	}

	public Experience selectExperience(SqlSessionTemplate sqlSession, int eno) {
		return sqlSession.selectOne("experienceMapper.selectExperience", eno);
	}

	public ArrayList<Experience> selectCompanyExperienceList(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<Experience> eList = (ArrayList)sqlSession.selectList("experienceMapper.selectCompanyExperienceList", userNo);
		return eList;
	}

	public int selectBoothNo(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("experienceMapper.selectBoothNo", userNo);
	}

	public int insertExperience(SqlSessionTemplate sqlSession, Experience e) {
		return sqlSession.insert("experienceMapper.insertExperience", e);
	}

	public int updateExperience(SqlSessionTemplate sqlSession, Experience e) {
		return sqlSession.update("experienceMapper.updateExperience", e);
	}

	public int deleteExperience(SqlSessionTemplate sqlSession, int eno) {
		return sqlSession.update("experienceMapper.deleteExperience", eno);
	}


}
