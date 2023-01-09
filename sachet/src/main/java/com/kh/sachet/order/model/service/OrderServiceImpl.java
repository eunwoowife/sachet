package com.kh.sachet.order.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.company.model.vo.Sales;
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

	@Override
	public ArrayList<Integer> selectOdnList(int orderNo) {
		ArrayList<Integer> odnList = orderDao.selectOdnList(sqlSession, orderNo);
		return odnList;
	}

	@Override
	public Integer selectComNoList(Integer integer) {
		Integer comNo = orderDao.selectComNoList(sqlSession, integer);
		return  comNo;
	}

	@Override
	public void insertSales(Sales sales) {
		orderDao.insertSales(sqlSession, sales);
	}

	@Override
	public Integer selectComNoList2(Integer integer) {
		Integer comNo = orderDao.selectComNoList2(sqlSession, integer);
		return comNo;
	}

	@Override
	public int selectProductNo(Integer integer) {
		return orderDao.selectProductNo(sqlSession, integer);
	}

	@Override
	public int selectOdn(int orderNo) {
		return orderDao.selectOdn(sqlSession, orderNo);
	}

	@Override
	public int selectComNo(int orderDetailNo) {
		return orderDao.selectComNo(sqlSession, orderDetailNo);
	}

	@Override
	public int selectComNo2(int orderDetailNo) {
		return orderDao.selectComNo2(sqlSession, orderDetailNo);
	}

	@Override
	public int insertSachetMoney(int totalPrice) {
		return orderDao.insertSachetMoney(sqlSession, totalPrice);
	}

	
}
