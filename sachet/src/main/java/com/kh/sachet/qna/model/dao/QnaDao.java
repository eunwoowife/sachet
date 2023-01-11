package com.kh.sachet.qna.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.qna.model.vo.Qna;

@Repository
public class QnaDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("qnaMapper.qnaselectListCount");
	}
	
	public ArrayList<Qna> selectList(SqlSessionTemplate sqlSession,PageInfo pi){
		
		int limit = pi.getBoardLimit();
		int offset=(pi.getCurrentPage()-1)*limit;
		
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("qnaMapper.qnaselectList",null,rowBounds);
		
	
	
		
	}

}
