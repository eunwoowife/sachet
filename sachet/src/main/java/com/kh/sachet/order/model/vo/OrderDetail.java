package com.kh.sachet.order.model.vo;

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
public class OrderDetail {
	
	
	private int orderDetailNo;
	private int orderNo;
	private int userNo;
	private int productNo;
	private int experNo;
	private int ticketNo;
	private int count;
	private String orderStatus;
	private String orderDate;

	private int productPrice;
	private int experPrice;
	
	private String boothName;
	private int pay;
	private String comName;
}
