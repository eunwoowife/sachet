package com.kh.sachet.order.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.company.model.vo.Sales;
import com.kh.sachet.order.model.vo.Order;
import com.kh.sachet.order.model.vo.OrderDetail;


@Service
public interface OrderService {

	ArrayList<CartList> selectCartPro(int userNo);

	ArrayList<CartList> selectCartExper(int userNo);

	int insertOrder(Order o);

	int selectOrderNo(int userNo);

	int insertOdPro(OrderDetail orderDetail);

	int insertOdExer(OrderDetail cartEx);

	ArrayList<Integer> selectOdnList(int orderNo);

	Integer selectComNoList(Integer integer);

	void insertSales(Sales sales);

	Integer selectComNoList2(Integer integer);

	int selectProductNo(Integer integer);

	int selectOdn(int orderNo);

	int selectComNo(int orderDetailNo);

	int selectComNo2(int orderDetailNo);

	int insertSachetMoney(int totalPrice);
}
