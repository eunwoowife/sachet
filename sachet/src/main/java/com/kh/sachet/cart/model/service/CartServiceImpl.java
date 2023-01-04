package com.kh.sachet.cart.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.dao.CartDao;
import com.kh.sachet.cart.model.vo.Cart;
import com.kh.sachet.cart.model.vo.CartList;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertCart(Cart c) {
		int result = cartDao.insertCart(sqlSession, c);
		return result;
	}

	@Override
	public int checkCartProduct(Cart c) {
		int checkOverlap = cartDao.checkCartProduct(sqlSession, c);
		return checkOverlap;
	}

	@Override
	public int checkCartExperience(Cart c) {
		int checkOverlap = cartDao.checkCartExperience(sqlSession, c);
		return checkOverlap;
	}

	@Override
	public int insertCartUpdateProductCount(Cart c) {
		int result = cartDao.insertCartUpdateProductCount(sqlSession, c);
		return result;
	}

	@Override
	public int insertCartupdateExperiecne(Cart c) {
		int result = cartDao.insertCartupdateExperiecne(sqlSession, c);
		return result;
	}

	@Override
	public ArrayList<CartList> selectCartPro(int userNo) {
		ArrayList<CartList> cartPro = cartDao.selectCartPro(sqlSession, userNo);
		return cartPro;
		
	}

	@Override
	public ArrayList<CartList> selectCartExper(int userNo) {
		ArrayList <CartList> cartExper = cartDao.selectCartExper(sqlSession,userNo);
		return cartExper;
	}
}
