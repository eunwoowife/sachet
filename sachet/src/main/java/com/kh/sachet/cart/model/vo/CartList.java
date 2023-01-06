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
public class CartList {
	
	private int userNo;
	private int goodsNo;
	private String boothName;
	private String goodsName;
	private String goodsImgFp;
	private int goodsPrice;
	private int goodsCount;
	private int selectSum;
	

}
