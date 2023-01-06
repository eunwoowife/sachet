package com.kh.sachet.order.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.sachet.cart.model.vo.CartList;
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

}
