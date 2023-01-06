package com.kh.sachet.order.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.order.model.dao.OrderDao;
import com.kh.sachet.order.model.vo.Order;
import com.kh.sachet.order.model.vo.OrderDetail;

@Service
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<CartList> selectCartPro(int userNo) {
		ArrayList<CartList> cartPro = orderDao.selectCartPro(sqlSession, userNo);
		return cartPro;
	}

	@Override
	public ArrayList<CartList> selectCartExper(int userNo) {
		ArrayList <CartList> cartExper = orderDao.selectCartExper(sqlSession,userNo);
		return cartExper;
	}

	@Override
	public int insertOrder(Order o) {
		return orderDao.insertOrder(sqlSession,o);
	}

	@Override
	public int selectOrderNo(int userNo) {
		return orderDao.selectOrderNo(sqlSession, userNo);
	}

	@Override
	public int insertOdPro(OrderDetail orderDetail) {
		return orderDao.insertOdPro(sqlSession, orderDetail);
	}

	@Override
	public int insertOdExer(OrderDetail cartEx) {
		return orderDao.insertOdExer(sqlSession, cartEx);
	}
}
