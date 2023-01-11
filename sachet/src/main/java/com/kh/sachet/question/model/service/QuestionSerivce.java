package com.kh.sachet.question.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.question.model.vo.Question;
import com.kh.sachet.question.model.vo.QuestionReply;

public interface QuestionSerivce {

	//총 개수 
	int selectListCount();

	//리스트 조회
	ArrayList<Question> selectList(PageInfo pi);

	//조회수 증가 
	int increaseCount(int quesNo);

	//상세조회 
	Question selectQuestion(int quesNo);



	int insertQuestion(Question q);

	int updateQuestion(Question q);

	int deleteQuestion(int quesNo);

	ArrayList<QuestionReply> selectReplyList(int quesReFNo);

	int insertReply(QuestionReply r);

	void changeSt(int quesReFNo);

	
}
