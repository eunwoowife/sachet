package com.kh.sachet.question.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.question.model.dao.QuestionDao;
import com.kh.sachet.question.model.vo.Question;
import com.kh.sachet.question.model.vo.QuestionReply;

@Service
public class QuestionServiceImp implements QuestionSerivce {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int selectListCount() {
		return QuestionDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Question> selectList(PageInfo pi) {
		return QuestionDao.selectList(sqlSession,pi);
	}

	@Override
	public int increaseCount(int quesNo) {
		return QuestionDao.increaseCount(sqlSession,quesNo);
	}

	@Override
	public Question selectQuestion(int quesNo) {
		return QuestionDao.selectQuestion(sqlSession,quesNo);
	}

	@Override
	public int insertQuestion(Question q) {
		return QuestionDao.insertQuestion(sqlSession,q);
	}

	@Override
	public int updateQuestion(Question q) {
		return QuestionDao.updateQuestion(sqlSession,q);
	}

	@Override
	public int deleteQuestion(int quesNo) {
		return QuestionDao.deleteQuestion(sqlSession,quesNo);
	}

	@Override
	public ArrayList<QuestionReply> selectReplyList(int quesReFNo) {
		return QuestionDao.replyList(sqlSession,quesReFNo);
	}

	@Override
	public int insertReply(QuestionReply r) {
		return QuestionDao.insertReply(sqlSession,r);
	}

	@Override
	public void changeSt(int quesReFNo) {
		 QuestionDao.changeReply(sqlSession,quesReFNo);
	}

	
}
