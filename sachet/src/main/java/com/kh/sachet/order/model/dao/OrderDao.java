package com.kh.sachet.order.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.company.model.vo.Sales;
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

	public ArrayList<Integer> selectOdnList(SqlSessionTemplate sqlSession, int orderNo) {
		ArrayList<Integer> odnList = (ArrayList)sqlSession.selectList("OrderMapper.selectOdnList", orderNo);
		return odnList;
	}

	public Integer selectComNoList(SqlSessionTemplate sqlSession, Integer integer) {
		Integer comNo = sqlSession.selectOne("OrderMapper.selectComNoList", integer);
		return comNo;
	}

	public void insertSales(SqlSessionTemplate sqlSession, Sales sales) {
		sqlSession.insert("salesMapper.insertSales", sales);
	}

	public Integer selectComNoList2(SqlSessionTemplate sqlSession, Integer integer) {
		Integer comNo = sqlSession.selectOne("OrderMapper.selectComNoList2", integer);
		return comNo;
	}

	public int selectProductNo(SqlSessionTemplate sqlSession, Integer integer) {
		int pnoCount = sqlSession.selectOne("OrderMapper.selectProductNo", integer);
		return pnoCount;
	}

	public int selectOdn(SqlSessionTemplate sqlSession, int orderNo) {
		return sqlSession.selectOne("OrderMapper.selectOdnList", orderNo);
	}

	public int selectComNo(SqlSessionTemplate sqlSession, int integer) {
		return sqlSession.selectOne("OrderMapper.selectComNoList", integer);
	}

	public int selectComNo2(SqlSessionTemplate sqlSession, int integer) {
		return sqlSession.selectOne("OrderMapper.selectComNoList2", integer);
	}

	public int insertSachetMoney(SqlSessionTemplate sqlSession, int totalPrice) {
		return sqlSession.update("sachetMoneyMapper.insertSachetMoney", totalPrice);
	}
	


}
