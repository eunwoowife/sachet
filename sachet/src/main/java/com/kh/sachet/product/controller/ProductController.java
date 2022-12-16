package com.kh.sachet.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("productListView.pro")
	public String selectAllProduct() {
		return "product/productListView";
	}
	
}
