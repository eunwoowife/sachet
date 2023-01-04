package com.kh.sachet.company.model.vo;

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
public class Sales {

//	ORDER_DETAIL_NO	NUMBER
//	USE_STATUS	VARCHAR2(1 BYTE)
//	COM_NO	NUMBER
	
	private int orderDetailNo;
	private String useStatus;
	private int comNo;
	
	private Date orderDate;
	private String productName;
	private String userId;
	private String userName;
	private String userPhone;
}
