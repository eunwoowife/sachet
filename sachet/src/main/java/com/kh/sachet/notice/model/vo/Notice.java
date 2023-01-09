package com.kh.sachet.notice.model.vo;

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
public class Notice {
	
	private int noticeNo;
	private String noticeFile;
	private String noticeFileFp;
	private String noticeTitle;
	private String noticeContent;
	private int count;
	private Date noticeCreateDate;
	private String noticeStatus;

}
