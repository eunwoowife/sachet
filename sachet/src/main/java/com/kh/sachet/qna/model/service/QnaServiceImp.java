package com.kh.sachet.qna.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.qna.model.dao.QnaDao;
import com.kh.sachet.qna.model.vo.Qna;

@Service
public class QnaServiceImp implements QnaService{

	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	@Autowired 
	private QnaDao qnaDao;
	
	@Override
	public int selectListCount() {
		return qnaDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Qna> selectList(PageInfo pi) {
		return qnaDao.selectList(sqlSession, pi);
	}

	@Override
	public Qna selectQna(int qnaNo) {
		return null;
	}
	


}
