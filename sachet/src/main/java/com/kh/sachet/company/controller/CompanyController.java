package com.kh.sachet.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.sachet.booth.model.service.BoothService;
import com.kh.sachet.booth.model.vo.Booth;
import com.kh.sachet.company.model.service.CompanyService;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.company.model.vo.Sales;
import com.kh.sachet.experience.model.service.ExperienceService;
import com.kh.sachet.experience.model.vo.Experience;
import com.kh.sachet.member.model.service.MemberService;
import com.kh.sachet.product.model.service.ProductService;
import com.kh.sachet.product.model.vo.Product;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ExperienceService experienceService;
	@Autowired
	private BoothService boothService;

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
		
		//2. 파일을 업로드할 실질적인 위치(물리경로)찾기
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
			session.setAttribute("alertMsg", "회원가입이 완료되었습니다.\n로그인 후, 이용해주세요.");
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
	
	//기업정보 수정폼 페이지로 이동
	@RequestMapping("updateForm.co")
	public String updateCompanyInfo() {
		return "company/companyInfoUpdateForm";
	}
	
	//기업회원 정보 수정하기
	@RequestMapping("update.co")
	public String updateCompanyUser(Company c, String postNo, String add1, MultipartFile upfile, HttpSession session, Model model) {
		int result = 0;
		c.setPostNo(postNo);
		c.setAddress(add1);
		
		//새로운 사진이 첨부됐는지 확인 (사진 변경을 했는지?)
		if(!upfile.getOriginalFilename().equals("")) {
			//기존에 첨부파일이 있었던 경우 -> 기존 첨부파일 삭제
			if(c.getLogoOn() != null) {
				new File(session.getServletContext().getRealPath(c.getLogoFp())).delete();
			}
			//새로운 사진으로 업로드하기->모듈화 시킨 saveFile 메소드 활용
			String originName = saveFile(upfile, session);
			c.setLogoOn(upfile.getOriginalFilename());
			c.setLogoFp("resources/uploadFiles/"+originName);
		}
		result = companyService.updateCompanyUser(c);
		
		if(result>0) {
			Company updateCompanyUser = companyService.loginMember(c);
			session.setAttribute("loginUser", updateCompanyUser);
			session.setAttribute("alertMsg", "회원정보가 정상적으로 수정되었습니다.");
			return "company/companyInfoUpdateForm";
		}else {
			model.addAttribute("errorMsg", "회원정보 수정 실패");
			return "common/errorPage";
		}
	}
	
	//기업회원정보 수정하기 시, 비밀번호 체크
	@ResponseBody
	@RequestMapping(value="pwdCheck.co")
	public String pwdCheck(String checkPwd, HttpSession session, Model model) {
		String result = "";
		
		Company c = (Company)session.getAttribute("loginUser");
		String userPwd = c.getUserPwd();
		
		if(bcryptpasswordEncoder.matches(checkPwd, userPwd)) {
			result = "YYYYY";
		}else {
			result = "NNNNN";
		}
		return result;
	}
	
	//상품관리(상품 리스트 페이지)
	@RequestMapping("productList.co")
	public String productList(HttpSession session, Model model) {
		Company c = (Company)session.getAttribute("loginUser");
		int userNo = c.getUserNo();
		
//		System.out.println("기업번호는? : "+userNo);
		
		ArrayList<Product> pList = productService.selectCompanyProductList(userNo);
		
		model.addAttribute("pList", pList);
		return "company/companyProductListView";
	}
	
	//체험관리(체험 리스트 페이지)
	@RequestMapping("experienceList.co")
	public String experienceList(HttpSession session, Model model) {
		Company c = (Company)session.getAttribute("loginUser");
		int userNo = c.getUserNo();
		
		ArrayList<Experience> eList = experienceService.selectCompanyExperienceList(userNo);
		
		model.addAttribute("eList", eList);
		return "company/companyExperienceListView";
	}
	
	//상품추가 폼으로 이동
	@RequestMapping("addProduct.co")
	public String insertProductForm() {
		return "company/companyAddProduct";
	}
	
	//체험추가 폼으로 이동
	@RequestMapping("addExperience.co")
	public String insertExperienceForm() {
		return "company/companyAddExperience";
	}
	
	//상품 및 체험 추가시, 부스가 승인된 상태인지 확인하기
	@ResponseBody
	@RequestMapping("checkBoothStatus")
	public String checkBoothStatus(int comNo) {
//		System.out.println(comNo);
		String status = boothService.checkBoothStatus(comNo);
		return status;
	}
	
	//상품추가하기
	@RequestMapping("insertProduct.co")
	public String insertProduct(Product p, Model model, HttpSession session, MultipartFile upfile) {
//		System.out.println(p);
		
		//부스번호 찾기 위해서 로그인된 기업의 userNo 가져오기
		Company c = (Company)session.getAttribute("loginUser");
		int userNo = c.getUserNo();
		
		//부스번호부터 찾은 뒤, 넣어주기
		int boothNo = productService.selectBoothNo(userNo);
//		System.out.println("부스번호는?"+boothNo);
		p.setBoothNo(boothNo);
		
		//상품썸네일 이미지 추가하기
		String originName = saveFile(upfile, session);
		p.setProductImgOn(upfile.getOriginalFilename());
		p.setProductImgFp("resources/uploadFiles/"+originName);

		int result = productService.insertProduct(p);
		
		if(result>0) {
			session.setAttribute("alertMsg", "상품이 정상적으로 등록되었습니다.");
			return "redirect:/productList.co";
		}else {
			model.addAttribute("errorMsg", "상품 등록 실패");
			return "common/errorPage";
		}
	}
	
	//체험추가하기
	@RequestMapping("insertExperience.co")
	public String insertExperience(Experience e, Model model, MultipartFile upfile, HttpSession session) {
		//부스번호 찾기
		Company c = (Company)session.getAttribute("loginUser");
		int userNo = c.getUserNo();
		int boothNo = experienceService.selectBoothNo(userNo);
		e.setBoothNo(boothNo);
		
		//체험썸네일 이미지 추가하기
		String originName = saveFile(upfile, session);
		e.setExperImgOn(upfile.getOriginalFilename());
		e.setExperImgFp("resources/uploadFiles/"+originName);
		
		int result = experienceService.insertExperience(e);
		
		if(result>0) {
			session.setAttribute("alertMsg", "체험이 정상적으로 등록되었습니다.");
			return "redirect:/experienceList.co";
		}else {
			model.addAttribute("errorMsg", "체험 등록 실패");
			return "common/errorPage";
		}
	}
	
	//상품상세페이지로 이동
	@RequestMapping("productDetail.co")
	public String companyProductDetailForm(int pno, Model model) {
		Product p = productService.selectProduct(pno);
		model.addAttribute("p", p);
		return "company/companyProductDetail";
	}
	
	//체험상세페이지로 이동
	@RequestMapping("experienceDetail.co")
	public String companyExperienceDetailForm(int eno, Model model) {
		Experience e = experienceService.selectExperience(eno);
		model.addAttribute("e", e);
		return "company/companyExperienceDetail";
	}
	
	//상품수정폼으로 이동
	@RequestMapping("productModifyForm.co")
	public String productModifyForm(int pno, Model model) {
		Product p = productService.selectProduct(pno);
		model.addAttribute("p", p);
		return "company/companyModifyProduct2";
	}
	
	//체험수정폼으로 이동
	@RequestMapping("experienceModifyForm.co")
	public String experienceModifyForm(int eno, Model model) {
		Experience e = experienceService.selectExperience(eno);
		model.addAttribute("e", e);
		return "company/companyModifyExperience2";
	}
	
	//상품 수정
	@RequestMapping("productUpdate.co")
	public String updateProduct(Product p, int pno, Model model, MultipartFile upfile, HttpSession session) {
//		System.out.println("pno:"+pno);
		//상품번호 심어주기
		p.setProductNo(pno);
		
		//사진이 변경됐는지?
		if(!upfile.getOriginalFilename().equals("")) {
			//기존 사진 삭제
			if(p.getProductImgOn() != null) {
				new File(session.getServletContext().getRealPath(p.getProductImgFp())).delete();
			}
			//변경된 사진으로 업로드
			String originName = saveFile(upfile, session);
			p.setProductImgOn(upfile.getOriginalFilename());
			p.setProductImgFp("resources/uploadFiles/"+originName);
		}
		int result = productService.updateProduct(p);
		
		if(result>0) {
			session.setAttribute("alertMsg", "상품 정보가 정상적으로 수정되었습니다.");
			return "redirect:/productDetail.co?pno="+pno;
		}else {
			model.addAttribute("errorMsg", "상품 수정 실패");
			return "common/errrorPage";
		}
	}
	
	//체험 수정
	@RequestMapping("experienceUpdate.co")
	public String updateExperience(Experience e, int eno, HttpSession session, Model model, MultipartFile upfile) {
		e.setExperNo(eno);
		
		if(!upfile.getOriginalFilename().equals("")) {
			if(e.getExperImgOn() != null) {
				new File(session.getServletContext().getRealPath(e.getExperImgFp())).delete();
			}
			String originName = saveFile(upfile, session);
			e.setExperImgOn(upfile.getOriginalFilename());
			e.setExperImgFp("resources/uploadFiles/"+originName);
		}
		int result = experienceService.updateExperience(e);
		
		if(result>0) {
			session.setAttribute("alertMsg", "체험 정보가 정상적으로 수정되었습니다.");
			return "redirect:/experienceDetail.co?eno="+eno;
		}else {
			model.addAttribute("errorMsg", "체험 수정 실패");
			return "common/errorPage";
		}
	}
	
	//상품 삭제
	@RequestMapping("productDelete.co")
	public String deleteProduct(int pno, Model model, HttpSession session) {
		int result = productService.deleteProduct(pno);
		
		if(result>0) {
			session.setAttribute("alertMsg", "상품을 삭제하였습니다.");
			return "redirect:/productList.co";
		}else {
			model.addAttribute("errorMsg", "상품 삭제 실패");
			return "common/errorPage";
		}
	}
	
	//체험 삭제
	@RequestMapping("experienceDelete.co")
	public String deleteExperience(int eno, HttpSession session, Model model) {
		int result = experienceService.deleteExperience(eno);
		
		if(result>0) {
			session.setAttribute("alertMsg", "체험을 삭제하였습니다.");
			return "redirect:/experienceList.co";
		}else {
			model.addAttribute("errorMsg", "체험 삭제 실패");
			return "common/errorPage";
		}
	}
	
	//상품판매관리
	@RequestMapping("productSales.co")
	public String productSalesForm(HttpSession session, Model model) {
		Company c = (Company)session.getAttribute("loginUser");
		int comNo = c.getUserNo();
		
		ArrayList<Sales> sList = companyService.selectProductSales(comNo);
		model.addAttribute("sList", sList);
		return "company/companyProductSales";
	}
	
	//체험판매관리
	@RequestMapping("experienceSales.co")
	public String experienceSalesForm() {
		return "company/companyExperienceSales";
	}
	
	//나의 부스 조회(부스 상태 조회)
	@RequestMapping("boothStatus.co")
	public String selectBooth(HttpSession session, Model model) {
		Company c = (Company)session.getAttribute("loginUser");
		int comNo = c.getUserNo();
		
		Booth boo = boothService.selectBooth(comNo);
		model.addAttribute("boo", boo);
		
		return "company/companyBoothStatus";
	}
	
}
