package com.kh.sachet.cart.model.service;

import java.util.ArrayList;

import com.kh.sachet.cart.model.vo.Cart;
import com.kh.sachet.cart.model.vo.CartList;

public interface CartService {
	
	int insertCart(Cart c);

	int checkCartProduct(Cart c);

	int checkCartExperience(Cart c);

	int insertCartUpdateProductCount(Cart c);

	int insertCartupdateExperiecne(Cart c);

	ArrayList<CartList> selectCartPro(int userNo);

	ArrayList<CartList> selectCartExper(int userNo);

	int allDeleteCart(int userNo);

	int selectProDelete(CartList c);

	int selectExperDelete(CartList c);

	int countUpdate(CartList c);
}
