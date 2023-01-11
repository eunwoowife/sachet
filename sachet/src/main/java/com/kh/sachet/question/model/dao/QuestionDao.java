package com.kh.sachet.question.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.question.model.vo.Question;
import com.kh.sachet.question.model.vo.QuestionReply;

@Repository
public class QuestionDao {

	public static int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("questionMapper.selectListCount");
	}

	public static ArrayList<Question> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("questionMapper.selectList", null, rowBounds);
	}

	public static int increaseCount(SqlSessionTemplate sqlSession, int quesNo) {
		return sqlSession.update("questionMapper.increaseCount", quesNo);
	}

	public static Question selectQuestion(SqlSessionTemplate sqlSession, int quesNo) {
		return sqlSession.selectOne("questionMapper.detailQuestion",quesNo);
	}

	public static int insertQuestion(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.insert("questionMapper.insertQuestion", q);
	}

	public static int updateQuestion(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.update("questionMapper.updateQuestion",q);
	}

	public static int deleteQuestion(SqlSessionTemplate sqlSession, int quesNo) {
		return sqlSession.update("questionMapper.deleteQuestion",quesNo);
	}

	public static ArrayList<QuestionReply> replyList(SqlSessionTemplate sqlSession, int quesReFNo) {
		return (ArrayList)sqlSession.selectList("questionMapper.replyList",quesReFNo);
	}

	public static int insertReply(SqlSessionTemplate sqlSession, QuestionReply r) {
		return sqlSession.insert("questionMapper.insertreply",r);
	}

	public static void changeReply(SqlSessionTemplate sqlSession, int quesNo) {
			sqlSession.update("questionMapper.updateReply",quesNo);
	}

	

}
