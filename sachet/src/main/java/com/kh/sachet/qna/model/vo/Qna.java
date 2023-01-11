package com.kh.sachet.qna.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Qna {
	
	/*
	 * 
	 * 
	 * QNA_NO	NUMBER
		QNA_CATE	NUMBER
		QNA_TITLE	VARCHAR2(500 BYTE)
		QNA_CONTENT	VARCHAR2(4000 BYTE)
	 * */
	
	
	private int qnaNo;
	private int qnaCate;
	private String qnaTitle;
	private String qnaContent;
	
	

}
