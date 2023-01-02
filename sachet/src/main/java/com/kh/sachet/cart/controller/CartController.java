package com.kh.sachet.cart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.sachet.cart.model.service.CartService;
import com.kh.sachet.cart.model.vo.Cart;
import com.kh.sachet.member.model.vo.Member;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	//상품을 장바구니에 추가하기
	@ResponseBody
	@RequestMapping(value="insertCart.ca")
	public int insertCart(int productNo, int count, int experNo, Cart c, HttpSession session) {
//		System.out.println("상품번호 : "+productNo);
//		System.out.println("상품개수 : " + count);
//		System.out.println("체험번호 : "+experNo);
		c.setProductNo(productNo);
		c.setCount(count);
		c.setExperNo(experNo);
		
		//로그인되어있는 유저 누구일까요
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		c.setUserNo(userNo);
//		System.out.println("유저번호 : "+userNo);
		
		int result = cartService.insertCart(c);
		return result;
	}
	
	
	
	//장바구니 맵핑값 selectCart.ca로 해주시궜어요?????ㅎㅎㅎ
}
