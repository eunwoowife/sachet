package com.kh.sachet.cart.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.dao.CartDao;
import com.kh.sachet.cart.model.vo.Cart;

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
}
