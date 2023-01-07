package com.kh.sachet.cart.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.cart.model.vo.Cart;
import com.kh.sachet.cart.model.vo.CartList;

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

	public ArrayList<CartList> selectCartPro(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<CartList> cartPro= (ArrayList)sqlSession.selectList("cartMapper.selectCartPro",userNo);
		return cartPro;
	}

	public ArrayList<CartList> selectCartExper(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<CartList> cartExper= (ArrayList)sqlSession.selectList("cartMapper.selectCartExper",userNo);
		return cartExper;
	}

	public int allDeleteCart(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.delete("cartMapper.allDeleteCart",userNo);
				
	}

	public int selectProDelete(SqlSessionTemplate sqlSession, CartList c) {
		return sqlSession.delete("cartMapper.selectProDelete",c);
	}

	public int selectExperDelete(SqlSessionTemplate sqlSession, CartList c) {
		return sqlSession.delete("cartMapper.selectExperDelete",c);
	}

	public int countUpdate(SqlSessionTemplate sqlSession, CartList c) {
		if(c.getGoodsNo()<1000) {
			return sqlSession.update("cartMapper.countUpdatePro",c);
		}else {
			return sqlSession.update("cartMapper.countUpdateExper", c);
		}
		
	}
	
}
