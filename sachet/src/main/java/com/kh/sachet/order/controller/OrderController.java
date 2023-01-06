package com.kh.sachet.order.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sachet.cart.model.vo.CartList;
import com.kh.sachet.company.model.vo.Sales;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.service.OrderService;
import com.kh.sachet.order.model.vo.Order;
import com.kh.sachet.order.model.vo.OrderDetail;

@Controller
public class OrderController {
	
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("allOrderForm.or")
	public ModelAndView allOrderForm (HttpSession session, ModelAndView mv) {
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		//수령상품 담기
		ArrayList <CartList> cartPro = new ArrayList<CartList>();
		cartPro= orderService.selectCartPro(userNo);
				
		//체험상품 장바구니에 담기
		ArrayList <CartList> cartExper = new ArrayList<CartList>();
		cartExper= orderService.selectCartExper(userNo);
				
		//두개 합친 최종 장바구니 껍데기
		ArrayList <CartList> cartList = new ArrayList<CartList>();
				
		//담는다.
		cartList.addAll(cartPro);
		cartList.addAll(cartExper);
				
		for(int i=0; i<cartList.size(); i++) {
			cartList.get(i).setSelectSum(cartList.get(i).getGoodsCount()*cartList.get(i).getGoodsPrice());
		}
		
		mv.addObject("c", cartList);
		mv.addObject("m",m);
		
		mv.setViewName("order/allOrderForm");
		return mv;
	}
	
	
	
	@RequestMapping("allOrderComplete.or")
	public ModelAndView allOrderComplete (HttpSession session, ModelAndView mv) {
		
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		//수령상품 담기
		ArrayList <CartList> cartPro = new ArrayList<CartList>();
		cartPro= orderService.selectCartPro(userNo);
				
		//체험상품 장바구니에 담기
		ArrayList <CartList> cartExper = new ArrayList<CartList>();
		cartExper= orderService.selectCartExper(userNo);
		
		System.out.println(cartPro);
		System.out.println(cartExper);
		
		
		//토탈썸 구하기
		int totalPrice=0;
		//카트의 토탈
		if(!cartPro.isEmpty()) {
			for(int i=0; i<cartPro.size(); i++) {
				totalPrice+=(cartPro.get(i).getGoodsCount()*cartPro.get(i).getGoodsPrice());
			}
		}
		//체험의 토탈
		if(!cartExper.isEmpty()) {
			for(int i=0; i<cartExper.size(); i++) {
				totalPrice+=(cartExper.get(i).getGoodsCount()*cartExper.get(i).getGoodsPrice());
			}
		}
		
		Order o = new Order();
		
		o.setUserNo(userNo);
		o.setTotalPrice(totalPrice);
		
		int result = orderService.insertOrder(o);
		
		
		
		//오더넘버 뽑아오기
		int orderNo = orderService.selectOrderNo(userNo);
		
		int result2 =0;
		int result3=0;
		
		//오더테이블 성공시 오더 디테일 테이블에 또 insert
		if(result>0) {
			
			//프로덕트 디테일 집어넣는 insert
			if(!cartPro.isEmpty()) {
				OrderDetail cartOd = new OrderDetail();
				
				for(int i=0; i<cartPro.size(); i++) {
					cartOd.setOrderNo(orderNo);
					cartOd.setUserNo(userNo);
					cartOd.setProductNo(cartPro.get(i).getGoodsNo());
					cartOd.setCount(cartPro.get(i).getGoodsCount());
					
					result2 = orderService.insertOdPro(cartOd);
				}
				
			}
			
			//체험 디테일 집어넣는 insert
			if(!cartExper.isEmpty()) {
				OrderDetail cartEx = new OrderDetail();
				for(int i=0; i<cartExper.size(); i++) {
					
					cartEx.setOrderNo(orderNo);
					cartEx.setUserNo(userNo);
					cartEx.setExperNo(cartExper.get(i).getGoodsNo());
					cartEx.setCount(cartExper.get(i).getGoodsCount());
					
					result3 = orderService.insertOdExer(cartEx);
					
				}
			}
		}
		
		ArrayList<Integer> odnList = new ArrayList<Integer>();
		odnList = orderService.selectOdnList(orderNo);
//		System.out.println(odnList);
		ArrayList<Integer> comNoList = new ArrayList<Integer>();
		for(int i=0; i<odnList.size(); i++) {
			int pnoCount = orderService.selectProductNo(odnList.get(i));
			if(pnoCount==0) {
				comNoList.add(orderService.selectComNoList2(odnList.get(i)));
			}else {
				comNoList.add(orderService.selectComNoList(odnList.get(i)));
			}
		}
		
		Sales sales = new Sales();
		for(int j=0; j<odnList.size(); j++) {
			sales.setOrderDetailNo(odnList.get(j));
			sales.setComNo(comNoList.get(j));
			
			orderService.insertSales(sales);
		}
	
		mv.addObject("m",m);
		
		mv.setViewName("order/orderComplete");
		return mv;
	}

}
