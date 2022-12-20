package com.kh.sachet.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.company.model.service.CompanyService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;

	//기업회원 회원가입폼
	@RequestMapping("joinCompanyForm.co")
	public String joinCompanyForm() {
		return "company/joinCompanyForm";
	}
	
	//마이컴퍼니 페이지
	@RequestMapping("mypage.co")
	public String myCompanyPage() {
		return "company/myCompanyPage";
	}
	
	//기업정보 수정
	@RequestMapping("updateForm.co")
	public String updateCompanyInfo() {
		return "company/companyInfoUpdateForm";
	}
	
	//상품관리(상품 리스트 페이지)
	@RequestMapping("productList.co")
	public String productList() {
		return "company/companyProductListView";
	}
	
	//체험관리(체험 리스트 페이지)
	@RequestMapping("experienceList.co")
	public String experienceList() {
		return "company/companyExperienceListView";
	}
	
	//상품추가
	@RequestMapping("addProduct.co")
	public String insertProduct() {
		return "company/companyAddProduct";
	}
	
	//체험추가
	@RequestMapping("addExperience.co")
	public String insertExperience() {
		return "company/companyAddExperienct";
	}
	
	//상품판매관리
	@RequestMapping("productSales.co")
	public String productSalesForm() {
		return "company/companyProductSales";
	}
	
	//체험판매관리
	@RequestMapping("experienceSales.co")
	public String experienceSalesForm() {
		return "company/companyExperienceSales";
	}
	
	
}
