package com.kh.sachet.payment.model.vo;

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
public class Payment {
	
	
	private int payNo;
	private int orderNo;
	private int payType;
	private int payAmount;
	private Date payDate;
	private String payStatus;

}
