package com.kh.sachet.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.company.model.service.CompanyService;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.member.model.service.MemberService;
import com.kh.sachet.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptpasswordEncoder;
	
	//로그인(아이디+비밀번호)입력하는 폼으로 이동
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "member/loginForm";
	}
	
	//일반회원이냐 기업회원이냐 찾아서 로그인시켜준다.
	@RequestMapping("login.me")
	public String loginMember(Member m, Company c, HttpSession session, Model model) {
//		System.out.println(m);
//		System.out.println(c);
		String result = "";
		
		//일반회원인지?
		Member loginUser = memberService.loginMember(m);
//		System.out.println(loginUser);
		
		//일반회원이 아니라면, 기업회원인지 확인
		if(loginUser == null) {
			Company loginUser2 = companyService.loginMember(c);
//			System.out.println(loginUser2);
			
			if(loginUser2 != null && bcryptpasswordEncoder.matches(c.getUserPwd(), loginUser2.getUserPwd())) { //기업회원이라면 기업회원으로 로그인시켜준다.
				session.setAttribute("loginUser", loginUser2);
				result = "redirect:/";
			}else {//일반회원도 아니고 기업회원도 아니면 로그인 실패
				model.addAttribute("errorMsg", "로그인 실패");
				result = "common/errorPage";
			}
		}else if(loginUser != null && bcryptpasswordEncoder.matches(c.getUserPwd(), loginUser.getUserPwd())) { //일반회원일 경우, 일반회원으로 로그인시켜준다.
			session.setAttribute("loginUser", loginUser);
			result = "redirect:/";
		}
		return result;
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session, Model model) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}
	
	@RequestMapping("joinForm.me")
	public String joinForm() {
		return "member/joinForm";
	}
	
	@RequestMapping("joinMemberForm.me")
	public String joinMemberForm() {
		return "member/joinMemberForm";
	}
}
