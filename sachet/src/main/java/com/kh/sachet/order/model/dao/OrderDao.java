package com.kh.sachet.order.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.order.model.vo.Order;
import com.kh.sachet.order.model.vo.OrderDetail;

@Repository
public class OrderDao {

	public ArrayList<CartList> selectCartPro(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<CartList> cartPro= (ArrayList)sqlSession.selectList("cartMapper.selectCartPro",userNo);
		return cartPro;
	}

	public ArrayList<CartList> selectCartExper(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<CartList> cartExper= (ArrayList)sqlSession.selectList("cartMapper.selectCartExper",userNo);
		return cartExper;
	}

	public int insertOrder(SqlSessionTemplate sqlSession, Order o) {
		return sqlSession.insert("OrderMapper.insertOrder",o);
	}

	public int selectOrderNo(SqlSessionTemplate sqlSession, int userNo) {
		Order o = sqlSession.selectOne("OrderMapper.selectOrderNo", userNo);
		 int result = o.getOrderNo();
		 return result;
	}

	public int insertOdPro(SqlSessionTemplate sqlSession, OrderDetail orderDetail) {
		int result= sqlSession.insert("OrderMapper.insertOdPro", orderDetail);
		return result;
	}
	
	public int insertOdExer(SqlSessionTemplate sqlSession, OrderDetail orderDetail) {
		int result= sqlSession.insert("OrderMapper.insertOdExer", orderDetail);
		return result;
	}
	


}
