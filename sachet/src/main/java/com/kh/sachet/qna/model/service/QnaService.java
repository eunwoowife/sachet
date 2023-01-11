package com.kh.sachet.qna.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.qna.model.vo.Qna;

public interface QnaService {

	int selectListCount();
	
	ArrayList<Qna> selectList(PageInfo pi);

	
	Qna selectQna(int qnaNo);
	

}
