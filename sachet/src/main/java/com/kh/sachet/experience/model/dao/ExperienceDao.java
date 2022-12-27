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

}
