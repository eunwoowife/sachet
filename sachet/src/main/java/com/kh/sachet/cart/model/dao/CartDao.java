package com.kh.sachet.cart.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.cart.model.vo.Cart;

@Repository
public class CartDao {

	public int insertCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.insert("cartMapper.insertCart", c);
	}

	public int checkCartProduct(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.selectOne("cartMapper.checkCartProduct", c);
	}

	public int checkCartExperience(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.selectOne("cartMapper.checkCartExperience", c);
	}

	public int insertCartUpdateProductCount(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.update("cartMapper.insertCartUpdateProductCount", c);
	}

	public int insertCartupdateExperiecne(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.update("cartMapper.insertCartupdateExperiecne", c);
	}
	
}
