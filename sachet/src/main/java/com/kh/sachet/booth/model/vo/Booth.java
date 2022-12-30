package com.kh.sachet.booth.model.vo;

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
public class Booth {

//	BOOTH_NO	NUMBER
//	COM_NO	NUMBER
//	BOOTH_NAME	VARCHAR2(100 BYTE)
//	BOOTH_DETAIL	VARCHAR2(4000 BYTE)
//	BOOTH_IMG_ON	VARCHAR2(200 BYTE)
//	BOOTH_IMG_FP	VARCHAR2(500 BYTE)
//	BOOTH_PRICE	NUMBER
//	BOOTH_SECTION	NUMBER
//	BOOTH_STATUS	VARCHAR2(1 BYTE)
	
	private int boothNo;
	private int comNo;
	private String boothName;
	private String boothDetail;
	private String boothImgOn;
	private String boothImgFp;
	private int boothPrice;
	private int boothSection;
	private String boothStatus;
}
