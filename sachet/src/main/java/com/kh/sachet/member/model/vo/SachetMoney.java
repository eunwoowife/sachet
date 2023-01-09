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
public class SachetMoney {

//	BALANCE	NUMBER	NOT NULL,
//    WITHDRAW NUMBER,
//    MODIFY_DATE DATE DEFAULT SYSDATE
	
	private int balance;
	private int withdraw;
	private Date modifyDate;
}
