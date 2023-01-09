package com.kh.sachet.cart.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sachet.cart.model.service.CartService;
import com.kh.sachet.cart.model.vo.Cart;
import com.kh.sachet.cart.model.vo.CartList;
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
		//해당 체험이 장바구니에 이미 있는지?
		int checkOverlap2 = cartService.checkCartExperience(c);
		
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
	
	
	
	@RequestMapping("selectCart.ca")
	public ModelAndView  selectCart(HttpSession session,ModelAndView mv) {
		
		Member m= (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		//수령상품 담기
		ArrayList <CartList> cartPro = new ArrayList<CartList>();
		cartPro= cartService.selectCartPro(userNo);
		
		//체험상품 장바구니에 담기
		ArrayList <CartList> cartExper = new ArrayList<CartList>();
		cartExper= cartService.selectCartExper(userNo);
		
		//두개 합친 최종 장바구니 껍데기
		ArrayList <CartList> cartList = new ArrayList<CartList>();
		
		//담는다.
		cartList.addAll(cartPro);
		cartList.addAll(cartExper);
		
		for(int i=0; i<cartList.size(); i++) {
			cartList.get(i).setSelectSum(cartList.get(i).getGoodsCount()*cartList.get(i).getGoodsPrice());
		}
		//보낸다.
		
		mv.addObject("c", cartList);
		mv.setViewName("cart/cartListView");
		
		
		return mv;
		
	}
	
	@ResponseBody
	@RequestMapping("allDeleteCart.ca")
	public int allDeleteCart (HttpSession session, String result) {
		Member m= (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		
		int selectResult = 0;
		selectResult = cartService.allDeleteCart(userNo);
		
		
		return selectResult;
	}
	
	@ResponseBody
	@RequestMapping("selectDelete.ca")
	public int selectDelete (HttpSession session, int goodsNum) {
		Member m= (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		int result = 0;
		
		CartList c = new CartList();
		
		c.setUserNo(userNo);
		c.setGoodsNo(goodsNum);
		
		//프로덕트 삭제
		if(goodsNum<1000) {
			result = cartService.selectProDelete(c);
		}else if(goodsNum>1000) {
			result = cartService.selectExperDelete(c);
		}
		
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("countUpdate.ca")
	public int countUpdate (HttpSession session, int pnum, int count) {
		
		Member m= (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		CartList c = new CartList();
		
		c.setUserNo(userNo);
		c.setGoodsNo(pnum);
		c.setGoodsCount(count);
		int result =0;
		
		result = cartService.countUpdate(c);
		
		return result;
	}

	
	
}