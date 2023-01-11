package com.kh.sachet.volunteer.model.vo;



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
public class Volunteer {
	

//	VOL_NO	NUMBER
//	USER_NO	NUMBER
//	VOL_NAMEKOR	VARCHAR2(100 BYTE)
//	VOL_NAMEENG	VARCHAR2(100 BYTE)
//	VOL_ADDRESS	VARCHAR2(100 BYTE)
//	VOL_PHONE	VARCHAR2(13 BYTE)
//	VOL_PARPHONE	VARCHAR2(13 BYTE)
//	VOL_SCHOOL	VARCHAR2(100 BYTE)
//	VOL_VOL	VARCHAR2(100 BYTE)
//	VOL_VOLFIELD	VARCHAR2(100 BYTE)
//	VOL_PATH	VARCHAR2(1 BYTE)
//	VOL_LANG	VARCHAR2(100 BYTE)
//	VOL_LANGRANGE	NUMBER
//	VOL_STATUS	VARCHAR2(1 BYTE)
	
	private int volNo;
	private int userNo;
	private String volNameKor;
	private String volNameEng;
	private String volAddress;
	private String volPhone;
	private int volCountNo;
	private String volSchool;
	private String volVol;
	private String volVolified;
	private String volPath;
	private String volLang;
	private int volLangRange;
	private String volStatus;
	
	
}
