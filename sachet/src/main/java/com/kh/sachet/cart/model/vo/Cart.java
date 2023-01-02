package com.kh.sachet.cart.model.vo;

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
public class Cart {

//	USER_NO	NUMBER
//	PRODUCT_NO	NUMBER
//	EXPER_NO	NUMBER
//	COUNT	NUMBER
	
	private int userNo;
	private int productNo;
	private int experNo;
	private int count;
}
