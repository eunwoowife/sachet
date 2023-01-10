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
	
	
	
	
	//스탭투 장바구니ALL
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
	
	
	
	
	
	
	//스탭투 개별주문
	@RequestMapping("selectOrderForm.or")
	public ModelAndView selectOrder (ModelAndView mv, HttpSession session, CartList c) {
		
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		CartList cartList = new CartList();
		cartList.setUserNo(userNo);
		cartList.setGoodsCount(c.getGoodsCount());
		cartList.setGoodsNo(c.getGoodsNo());
		cartList.setBoothName(c.getBoothName());
		cartList.setGoodsPrice(c.getGoodsPrice());
		cartList.setGoodsImgFp(c.getGoodsImgFp());
		//cartList.setSelectSum(c.getGoodsPrice()*c.getGoodsCount());
		
		int gp = c.getGoodsPrice();
		int gc = c.getGoodsCount();
		
		int selectSum = gp*gc;
		
		cartList.setSelectSum(selectSum);
		
		
		mv.addObject("c", c);
		mv.addObject("m",m);
		
		mv.setViewName("order/selectOrderForm");
		return mv;
		
	}
	
	
	//개별 주문 오더 컴플리트
	@RequestMapping("orderComplete1.or")
	public ModelAndView selectOrder (HttpSession session, ModelAndView mv, int goodsNo, int goodsCount, int goodsPrice) {

		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		
		System.out.println(userNo);
		
		//토탈썸 구하기
		int totalPrice=goodsPrice*goodsCount;
		
		Order o = new Order();
		
		o.setUserNo(userNo);
		o.setTotalPrice(totalPrice);
		
		int result = orderService.insertOrder(o);
		
		//샤쉐관리자 머니에 돈 넣기
		orderService.insertSachetMoney(totalPrice);
		
		//오더넘버 뽑아오기
		int orderNo = orderService.selectOrderNo(userNo);
		
		o.setOrderNo(orderNo);
		
		int result2 =0;
		int result3=0;
		
		//오더테이블 성공시 오더 디테일 테이블에 또 insert
		if(result>0) {
			
			//프로덕트 디테일 집어넣는 insert
			if(goodsNo<1000) {
				OrderDetail cartOd = new OrderDetail();
				
					cartOd.setOrderNo(orderNo);
					cartOd.setUserNo(userNo);
					cartOd.setProductNo(goodsNo);
					cartOd.setCount(goodsCount);
					
					result2 = orderService.insertOdPro(cartOd);
					
					//오더디테일넘버 가져오기
					int orderDetailNo = orderService.selectOdn(orderNo);
//					System.out.println(orderDetailNo);
					
					//해당 상품의 회사번호 가져오기
					int comNo = orderService.selectComNo(orderDetailNo);
//					System.out.println(comNo);
					
					//Sales 테이블에 위에서 찾아준 주문상세번호와 그 주문에 대한
					//회사번호를 통해 insert 시켜준다.
					Sales sales = new Sales();
					sales.setOrderDetailNo(orderDetailNo);
					sales.setComNo(comNo);
					orderService.insertSales(sales);
			}else{ //체험 디테일 집어넣는 insert
				OrderDetail cartEx = new OrderDetail();
				cartEx.setOrderNo(orderNo);
				cartEx.setUserNo(userNo);
				cartEx.setExperNo(goodsNo);
				cartEx.setCount(goodsCount);
				
				result3 = orderService.insertOdExer(cartEx);
				
				//오더디테일넘버 가져오기
				int orderDetailNo = orderService.selectOdn(orderNo);
//				System.out.println(orderDetailNo);
				
				//해당 체험의 회사번호 가져오기
				int comNo = orderService.selectComNo2(orderDetailNo);
//				System.out.println(comNo);
				
				//Sales 테이블에 위에서 찾아준 주문상세번호와 그 주문에 대한
				//회사번호를 통해 insert 시켜준다.
				Sales sales = new Sales();
				sales.setOrderDetailNo(orderDetailNo);
				sales.setComNo(comNo);
				orderService.insertSales(sales);
			}	
		}
		
		System.out.println(o);
		
		mv.addObject("o",o);
		mv.addObject("m",m);
		mv.setViewName("order/orderComplete");
		return mv;
	}
	
	
	//전체주문 오더컴플리트
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
		
		//샤쉐관리자 머니에 돈 넣기
		orderService.insertSachetMoney(totalPrice);
		
		
		
		//오더넘버 뽑아오기
		int orderNo = orderService.selectOrderNo(userNo);
		
		o.setOrderNo(orderNo);
		
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
		
		//-----------------------주현이꼬~~~-------------------------------------------
		//해당 주문번호에 대한 주문상세번호를 가져온다..
		ArrayList<Integer> odnList = new ArrayList<Integer>();
		odnList = orderService.selectOdnList(orderNo);
//		System.out.println(odnList);
		
		//해당 주문번호에 대한 회사번호를 가져온다.
		ArrayList<Integer> comNoList = new ArrayList<Integer>();
		for(int i=0; i<odnList.size(); i++) {
			//해당 주문상세번호에 상품이 있는지 확인하기
			int pnoCount = orderService.selectProductNo(odnList.get(i));
			if(pnoCount==0) { //해당 주문상세번호에 상품이 없다면->그건 체험판매겠지
				//해당 체험을 판매하고 있는 회사번호를 찾아준다.
				comNoList.add(orderService.selectComNoList2(odnList.get(i)));
			}else { //해당 주문상세번호에 상품이 있다면
				//해당 상품을 판매하고 있는 회사번호를 찾아준다.
				comNoList.add(orderService.selectComNoList(odnList.get(i)));
			}
		}
		
		//Sales 테이블에 위에서 찾아준 주문상세번호와 그 주문에 대한
		//회사번호를 통해 insert 시켜준다.
		Sales sales = new Sales();
		for(int j=0; j<odnList.size(); j++) {
			sales.setOrderDetailNo(odnList.get(j));
			sales.setComNo(comNoList.get(j));
			
			orderService.insertSales(sales);
		}
		
		System.out.println(m);
		System.out.println(o);
		
	
		mv.addObject("o",o);
		
		mv.setViewName("order/orderComplete");
		return mv;
	}
	
	
	

}
