package com.kh.sachet.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.sachet.company.model.service.CompanyService;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.member.model.service.MemberService;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.OrderDetail;
import com.kh.sachet.ticketing.model.vo.Ticket;

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
	
	
	//마이페이지 이동 
		@RequestMapping("myPageForm.me")
		public String myPage() {
			return "member/myPageForm";
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
	
	
	
	//회원정보 수정페이지 이동 
	@RequestMapping("myPage.me")
	public String mypageForm() {
		return "member/myPage";
	}
	
	
	@RequestMapping("mydeleteForm.me")
	public String myDeleteForm() {
		return "member/mydelete";
	}

	

	
	
	//회원정보 수정 

	
	@RequestMapping("update.me")
	public String updateMember(Member m,HttpSession session,Model model) {
		
	
		String newPwd=bcryptpasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(newPwd);
		
		int result=memberService.updateMember(m);
		
		if (result>0) {
			Member updateMember=memberService.loginMember(m.getUserId());
			session.setAttribute("loginUser", updateMember);
			session.setAttribute("alertMsg", "회원 정보 수정이 완료되었습니다.");
			return "member/myPage";
		}else {
			model.addAttribute("erroMsg", "회원 정보 수정실패했습니다. 다시 시도해주세요.");
			return "common/erroPage";
		}
		
	}
	
//탈퇴
	@RequestMapping("deleteMember.me")
	public String deleteMember(Member m,HttpSession session,Model model) {
		
		int result=memberService.deleteMember(m);
		
		if (result>0) {
		
			
			session.setAttribute("alertMsg", "회원 정보 탈퇴가 완료되었습니다.");
			session.removeAttribute("loginUser");
			return "redirect:/";
		}else {
			model.addAttribute("erroMsg", "회원 정보 탈퇴 실패했습니다. 다시 시도해주세요.");
			return "common/erroPage";
		}
		
	}
	
	
	
	
	//Mypage 
	/*
	//구매내역 
	@RequestMapping("myOrderList.me")
	public String myOrderList(HttpSession session,Model model) {
		
	//	ArrayList<OrderDetail> orderMyList = new ArrayList<OrderDetail>();
		
		//로그인 유저 확인 
		Member m=(Member)session.getAttribute("loginUser");
		
		int userNo=m.getUserNo();
		
		ArrayList<OrderDetail> orderMyList = memberService.selectOrderList(userNo);
		
		
		model.addAttribute("orderMyList", orderMyList);

	
		return "member/myOrder";
	}
	 * */
	
	
	//예매내역 
	@RequestMapping("myticketList.me")
	public String myticketList(HttpSession session,Model model) {
		
	//	ArrayList<OrderDetail> orderMyList = new ArrayList<OrderDetail>();
		
		//로그인 유저 확인 
		Member m=(Member)session.getAttribute("loginUser");
		
		int userNo=m.getUserNo();
		
		ArrayList<Ticket> myticketList = memberService.myticketList(userNo);
		
		
		model.addAttribute("myticketList", myticketList);

			//System.out.println(myticketList);
		return "member/myTicket";
	}

	
	//일반회원 가입하기 
	
	//아이디 중복체크 
	@ResponseBody
	@RequestMapping(value="idCheck.me")
	public String idCheck(String checkId) {
		String result="";
		int comCount=companyService.idCheck(checkId);
		
		if(comCount>0) {
			result="NNNNN";
		}else {
			int memCount=memberService.idCheck(checkId);
			if(memCount>0) {
				result="NNNNN";
				
			}else {
				result="YYYYY";
			}
		}
		return result;
		
	}
	
 @RequestMapping("insert.me")
 public String insertMemberUser(String byear,String bmonth,String bday,Member m,String postNo,String add1,HttpSession session,Model model) {
	 int result=0;
	 
	 m.setAddress(add1);
	 
	 //패스워드 암호화시키기 
	 String encPwd=bcryptpasswordEncoder.encode(m.getUserPwd());
	 
	 m.setUserPwd(encPwd);
	 
	 m.setBirth(byear+"-"+bmonth+"-"+bday);
	 
	 // System.out.println(m.getBirth());
	 
	 result=memberService.insertMember(m);
	 
	 if(result>0) {
		 session.setAttribute("alertMsg", "회원가입이 완료되었습니다.");
		 return"redirect:/";
		 
	 }else {
		 model.addAttribute("errorMsg", "회원가입 실패");
		 return "common/errorPage";
	 }
	 
	 
 }
	
}
