package com.kh.sachet.cart.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.cart.model.vo.Cart;

@Repository
public class CartDao {

	public int insertCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.insert("cartMapper.insertCart", c);
	}
	
}
