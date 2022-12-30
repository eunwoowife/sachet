package com.kh.sachet.experience.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Experience {

//	EXPER_NO		NUMBER
//	BOOTH_NO	NUMBER
//	EXPER_TIME	NUMBER
//	EXPER_DATE	DATE
//	EXPER_TITLE	VARCHAR2(100 BYTE)
//	EXPER_DETAIL	VARCHAR2(4000 BYTE)
//	EXPER_PRICE	NUMBER
//	CAPACITY	NUMBER
//	EXPER_IMG_ON	VARCHAR2(200 BYTE)
//	EXPER_IMG_FP	VARCHAR2(200 BYTE)
//	EXPER_ENROLLDATE	DATE
// EXPER_STATUS VARCHAR2(1 BYTE)
	
	private int experNo;
	private int boothNo;
	private int experTime;
	private int experDate;
	private String experTitle;
	private String experDetail;
	private int experPrice;
	private int capacity;
	private String experImgOn;
	private String experImgFp;
	private Date experEnrolldate;
	private String experStatus;
	
	private String boothName;
	
	private int userNo;
}
