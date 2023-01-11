package com.kh.sachet.volunteer.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.question.model.vo.Question;
import com.kh.sachet.volunteer.model.service.VolunteerService;
import com.kh.sachet.volunteer.model.vo.Volunteer;


@Controller
public class VolunteerController {

	@Autowired
	private VolunteerService volunteerService;
	
	/*
	//자원봉사 조회
	@RequestMapping("volunteer.me")
	public String selectList(HttpSession session,Model model){
		
		Member m=(Member)session.getAttribute("loginUser");
		
		int userNo=m.getUserNo();
		
		ArrayList<Volunteer> list=volunteerService.selectList(userNo);
		
		model.addAttribute("Vlist", list);
		

	
		return "volunteer/volunteerHome";
	}
	
	 * */
	
	
	
	
	//자원봉사 신청페이지 이동 
		
	
		@RequestMapping("volunteer.vo")
		public String volunteerForm() {
			return "volunteer/volunteerHome";
		}
		
		
	
	
		
		//자원봉사 신청 
		
		@RequestMapping("volsubmit.vo")
		public ModelAndView volSumbit(Member m,ModelAndView mv,HttpSession session,Volunteer v) {
			
			//로그인 유저 
			 Member mlogin=(Member)session.getAttribute("loginUser");
			 
			 
			int userNo=mlogin.getUserNo();
			
				v.setUserNo(userNo);
			
			
		 int submit= volunteerService.submitVolunteer(v);
		 
		 
	//	System.out.println(submit);
		
		
		 
		/**/
		 if(submit>0) {
			 
		
			mv.setViewName("volunteer/volunteerComplete");
			
					
		 }else {
			 mv.addObject("errorMsg", "신청에 실패하셨습니다. 다시 신청해주세요").setViewName("common/errorPage");;
		 }
		 
			return mv;
			
			
		//신청확인페이지 volunteerCheck.vo
		
	}
		
		
		//자원봉사 조회페이지 이동 
		
		/*
				//수정페이지로 이동
				@RequestMapping("volunteerlist.vo")
				public String volunteerlistForm() {
					return "volunteer/volunteerListView";
				}
		 * */
				
		
		
		
		//리스트 페이지
		@RequestMapping("volunteerlist.qs")
		public String selectVolunteer(@RequestParam(value="currentPage",defaultValue="1")int currentPage,
		Model model){
			
			int listCount = volunteerService.selectListCount();
			int pageLimit = 10;
			int boardLimit = 5;
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
			
			ArrayList<Volunteer> list=volunteerService.selectList(pi);
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			
			return "volunteer/volunteerListView";
		}
		
				
		
		
		
		
		
		
		
		
		/*
		//봉사 승인 
		
		@RequestMapping("volunteerAccept.vo")
		public ModelAndView acceptVolunteer(int userNo,HttpSession session,ModelAndView mv) {
			int result=volunteerService.acceptVolunteer(userNo);
			
			if(result>0) {
				session.setAttribute("alertMsg","승인성공.");
				
			}else {
				session.setAttribute("alertMsg", "승인에 실패하였습니다. 다시 시도해주세요.");
			}
			
			
			return mv;
			
		}
		
		 * */
		
		//자원봉사자 상세조회 
		
		
		@RequestMapping("detail.vo")
		public ModelAndView detailVolunteer(int volNo,ModelAndView mv)
									{
			
			int result=volunteerService.increaseCount(volNo);

			
			if(result>0) {
				Volunteer v = volunteerService.selectVolunteer(volNo);

				mv.addObject("v",v).setViewName("volunteer/volunteerDetailView");
				
			}else {

				mv.addObject("errorMsg", "게시글 조회 실패").setViewName("common/errorPage");
			}
			
			return mv;

}
		
		
		
}
		
		
		
