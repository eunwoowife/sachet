package com.kh.sachet.cart.model.service;

import com.kh.sachet.cart.model.vo.Cart;

public interface CartService {
	
	int insertCart(Cart c);

	int checkCartProduct(Cart c);

	int checkCartExperience(Cart c);

	int insertCartUpdateProductCount(Cart c);

	int insertCartupdateExperiecne(Cart c);
}
