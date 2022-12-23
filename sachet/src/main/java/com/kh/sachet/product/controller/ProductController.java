package com.kh.sachet.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.product.model.service.ProductService;
import com.kh.sachet.product.model.vo.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("productListView.pro")
	public String selectAllProduct(@RequestParam(value="currentPage", defaultValue="1")int currentPage, Model model) {
		//전체 상품 개수 조회해오기
		int listCount = productService.selectListCount();
		int pageLimit = 5;
		int boardLimit = 9;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Product> pList = productService.selectProductList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("pList", pList);
		
		return "product/productListView";
	}
	
	@RequestMapping("detail.pro")
	public String selectProduct(int pno, Model model) {
		Product  p = productService.selectProduct(pno);
		
		model.addAttribute("p", p);

		return "product/productDetail";
	}
	
}
