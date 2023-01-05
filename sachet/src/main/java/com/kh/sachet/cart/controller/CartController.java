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
		
		int result = 0;
		
		//장바구니에 추가하려는 품목이 이미 장바구니에 담겨져있는지 확인하기
		//해당 상품이 장바구니에 이미 있는지?
		int checkOverlap1 = cartService.checkCartProduct(c);
//		System.out.println("상품result갯수 : "+checkOverlap1);
		//해당 체험이 장바구니에 이미 있는지?
		int checkOverlap2 = cartService.checkCartExperience(c);
//		System.out.println("체험result갯수 : "+checkOverlap1);
		
//		System.out.println(c);
		//상품 체크하고 장바구니에 넣기
		if(experNo==0 && checkOverlap1>=1) { //이미 있는 상품이라면 갯수를 count만큼 +해줘서 업데이트하기
			result = cartService.insertCartUpdateProductCount(c);
		}else if(experNo==0 && checkOverlap1==0){ //없는 상품이라면 장바구니에 상품이 담길 수 있게 새로 추가하기
			result = cartService.insertCart(c);
		}
		
		//체험 체크하고 장바구니에 넣기
		if(productNo==0 && checkOverlap2>=1) { //이미 있는 체험이라면 갯수를 count만큼 +해줘서 업데이트하기
			result = cartService.insertCartupdateExperiecne(c);
		}else if(productNo==0 && checkOverlap2==0){ //없는 체험이라면 장바구니에 상품이 담길 수 있게 새로 추가하기
			result = cartService.insertCart(c);
		}
		
		return result;
	}
	
	
	
	//장바구니 맵핑값 selectCart.ca로 해주시궜어요?????ㅎㅎㅎ
}
