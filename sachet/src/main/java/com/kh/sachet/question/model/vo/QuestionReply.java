package com.kh.sachet.question.model.vo;

import java.sql.Date;

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
public class QuestionReply {
	
	/*
	 * 
	 * 
	 * 
	 * QUESTION_REF_NO	NUMBER
		QUESTION_REPLY_NO	NUMBER
		USER_NO	NUMBER
		COM_NO	NUMBER
		QUESTION_REPLY_CONTENT	VARCHAR2(1000 BYTE)
		QUESTION_REPLY_CREATE_DATE	DATE
		QUSETION_REPLY_STATUS	VARCHAR2(1 BYTE)
		REPLY_WRITTER
		1:1문의 글번호
		1:1답변번호
		회원번호
		기업번호
		1:1문의내용
		1:1문의작성일
		1:1문의 상태 
		관리자아이디;
		
	 * */

	int quesReFNo;
	int quesRePlyNo;
	int userNo;
	int comNo;
	String questionReplyContent;
	String questionReplyCreateDate;
	String qeustionReplyStatus;
	String replyWriter;
	
	
}
