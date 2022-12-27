package com.kh.sachet.product.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.product.model.vo.Product;

public interface ProductService {

	int selectListCount();
	
	ArrayList<Product> selectProductList(PageInfo pi);
	
	Product selectProduct(int pno);
	
	ArrayList<Product> selectCompanyProductList(int userNo);
}
