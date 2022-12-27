package com.kh.sachet.product.model.vo;

import com.kh.sachet.company.model.vo.Company;

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
public class Product {

//	PRODUCT_NO	NUMBER
//	BOOTH_NO	NUMBER
//	PRODUCT_NAME	VARCHAR2(100 BYTE)
//	PRODUCT_DETAIL	VARCHAR2(4000 BYTE)
//	PRODUCT_STOCK	NUMBER
//	PRODUCT_STATUS	VARCHAR2(1 BYTE)
//	PRODUCT_PRICE	NUMBER
//	PRODUCT_IMG_ON	VARCHAR2(200 BYTE)
//	PRODUCT_IMG_FP	VARCHAR2(200 BYTE)
	
	private int productNo;
	private int boothNo;
	private String productName;
	private String productDetail;
	private int productStock;
	private String productStatus;
	private int productPrice;
	private String productImgOn;
	private String productImgFp;
	private String productEnrolldate;
	
	private String boothName;
	
	private int userNo;
}
