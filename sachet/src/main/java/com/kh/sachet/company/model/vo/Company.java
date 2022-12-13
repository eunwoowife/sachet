package com.kh.sachet.company.model.vo;

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
public class Company {

//	USER_NO	NUMBER
//	COM_ID	VARCHAR2(100 BYTE)
//	COM_BRNUM	NUMBER
//	COM_NAME	VARCHAR2(200 BYTE)
//	COM_PWD 	VARCHAR2(100 BYTE)
//	COM_OWNER	VARCHAR2(100 BYTE)
//	COM_PHONE1	VARCHAR2(13 BYTE)
//	COM_PHONE2	VARCHAR2(13 BYTE)
//	COM_ADDRESS	VARCHAR2(100 BYTE)
//	COM_POSTNO	VARCHAR2(5 BYTE)
//	COM_ENROLLDATE	DATE
//	COM_MODIFYDATE	DATE
//	COM_STATUS	VARCHAR2(1 BYTE)
//	COM_LOGO_ON	VARCHAR2(500 BYTE)
//	COM_LOGO_FP	VARCHAR2(500 BYTE)
	
	private int userNo;
	private String userId;
	private String comBrnum;
	private String userName;
	private String userPwd;
	private String comOwner;
	private String phone1;
	private String phone2;
	private String address;
	private int postNo;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private String logoOn;
	private String logoFp;
}
