package com.kh.sachet.company.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.sachet.company.model.service.CompanyService;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.member.model.service.MemberService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder bcryptpasswordEncoder;
	
	//기업회원 회원가입폼
	@RequestMapping("joinCompanyForm.co")
	public String joinCompanyForm() {
		return "company/joinCompanyForm";
	}
	
	//기업회원 아이디 중복체크
	@ResponseBody
	@RequestMapping(value="idCheck.co")
	public String idCheck(String checkId) {
//		System.out.println(checkId);
		
		String result = "";
		int comCount = companyService.idCheck(checkId);
		
		if(comCount>0) {
			result = "NNNNN";
		}else {
			int memCount = memberService.idCheck(checkId);
			if(memCount>0) {
				result = "NNNNN";
			}else {
				result = "YYYYY";
			}
		}
		return result;
	}
	
	//현재 넘어온 첨부파일을 서버의 폴더에 저장시키는 메소드(모듈)
	public String saveFile(MultipartFile upfile, HttpSession session) {
		//1. 원본 파일명 뽑기
		String originName = upfile.getOriginalFilename();
		
		//3. 파일을 업로드할 실질적인 위치(물리경로)찾기
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
	
		try {
			upfile.transferTo(new File(savePath+originName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return originName;
	}
	
	//기업회원 가입하기
	@RequestMapping("insert.co")
	public String insertCompanyUser(Company c, String postNo, String add1, MultipartFile upfile, HttpSession session, Model model) {
//		System.out.println(c);
//		System.out.println(postNo);
//		System.out.println(add1);
		int result = 0;
		c.setPostNo(postNo);
		c.setAddress(add1);
		
		//패스워드 암호화시키기
//		System.out.println("원본 패스워드 : "+c.getUserPwd());
		String encPwd = bcryptpasswordEncoder.encode(c.getUserPwd());
//		System.out.println("암호화 패스워드 : "+encPwd);
		c.setUserPwd(encPwd);
		
		if(!upfile.getOriginalFilename().equals("")) { //파일이 등록될 경우
//			System.out.println(upfile);
			//위의 모듈화 시킨saveFile 메소드 활용
			String originName = saveFile(upfile, session);
			c.setLogoOn(upfile.getOriginalFilename());
			c.setLogoFp("resources/uploadFiles/"+originName);

			result = companyService.insertCompanyUser(c);
		}else {
			result = companyService.insertCompanyUser(c);
		}
		
		if(result>0) {
			session.setAttribute("alertMessage", "회원가입이 완료되었습니다.\n로그인 후, 이용해주세요.");
			return "redirect:/";
		}else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
		
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
		return "company/companyAddProduct2";
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
