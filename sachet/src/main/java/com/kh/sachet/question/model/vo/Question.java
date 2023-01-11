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
public class Question {
	
	/*
	 * 
	 * 
	 * QUESTION_NO	NUMBER
		COM_NO	NUMBER
		USER_NO	NUMBER
		QUESTION_WRITER	VARCHAR2(10 BYTE)
		QUESTION_CATEGORY	NUMBER
		QUESTION_TITLE	VARCHAR2(200 BYTE)
		QUESTION_CONTENT	VARCHAR2(4000 BYTE)
		QUESTION_STATUS	VARCHAR2(1 BYTE)
		QUESTION_COU
		QUESTION_CREATE_DATE

		1:1문의 글번호
		기업번호
		회원번호
		1:1문의 작성자
		1:1 카테고리(EX. 1.회원정보 관련 / 2. 예매, 구매 관련 / 3. 기업 관련 / 4. 기타 등)
		1:1문의글 제목
		1:1문의글 내용
		1:1문의글 상태 (답변대기/답변완료/삭제)
		1:1문의글 조회수 
		1:1문의글 등록날짜 
		
	 * /
	 */
	
	int quesNo;
	int comNo;
	int userNo;
	String quesWritter;
	int quesCate;
	int quesCount;
	Date quesDate;
	String quesTitle;
	String quesConte;
	String questatus;
	
	
	

}
