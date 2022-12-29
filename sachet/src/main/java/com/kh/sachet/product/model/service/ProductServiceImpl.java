package com.kh.sachet.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.product.model.dao.ProductDao;
import com.kh.sachet.product.model.vo.Product;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		int listCount = productDao.selectListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<Product> selectProductList(PageInfo pi) {
		ArrayList<Product> pList = productDao.selectProductList(sqlSession, pi);
		return pList;
	}

	@Override
	public Product selectProduct(int pno) {
		Product p = productDao.selectProduct(sqlSession, pno);
		return p;
	}

	@Override
	public ArrayList<Product> selectCompanyProductList(int userNo) {
		ArrayList<Product> pList = productDao.selectCompanyProductList(sqlSession, userNo);
		return pList;
	}

	@Override
	public int selectBoothNo(int userNo) {
		int boothNo = productDao.selectBoothNo(sqlSession, userNo);
		return boothNo;
	}

	@Override
	public int insertProduct(Product p) {
		int result = productDao.insertProduct(sqlSession, p);
		return result;
	}

	@Override
	public int updateProduct(Product p) {
		int result = productDao.updateProduct(sqlSession, p);
		return result;
	}

	@Override
	public int deleteProduct(int pno) {
		int result = productDao.deleteProduct(sqlSession, pno);
		return result;
	}

}
