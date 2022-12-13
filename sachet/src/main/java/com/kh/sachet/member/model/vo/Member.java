package com.kh.sachet.member.model.vo;

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

public class Member {
	
//	USER_NO	NUMBER
//	USER_ID	VARCHAR2(100 BYTE)
//	USER_PWD	VARCHAR2(100 BYTE)
//	USER_NAME	VARCHAR2(40 BYTE)
//	USER_PHONE	VARCHAR2(13 BYTE)
//	USER_EMAIL	VARCHAR2(100 BYTE)
//	USER_GENDER	VARCHAR2(1 BYTE)
//	USER_BIRTH	DATE
//	USER_ADDRESS	VARCHAR2(100 BYTE)
//	USER_ENROLLDATE	DATE
//	USER_MODIFYDATE	DATE
//	USER_STATUS	VARCHAR2(1 BYTE)
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String phone;
	private String email;
	private String gender;
	private Date birth;
	private String address;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
}
