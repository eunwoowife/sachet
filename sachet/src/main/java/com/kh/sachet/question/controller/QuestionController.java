package com.kh.sachet.question.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.question.model.service.QuestionSerivce;
import com.kh.sachet.question.model.vo.Question;
import com.kh.sachet.question.model.vo.QuestionReply;

@Controller
public class QuestionController {

	

	//문의게시판 
	
	@Autowired
	private QuestionSerivce qs;
	
	
	@RequestMapping("list.qs")
	public String selectList(@RequestParam(value="currentPage",defaultValue = "1") int currentPage,
							Model model) {
		
		int listCount = qs.selectListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Question> list = qs.selectList(pi);
		
		
		
		model.addAttribute("list",list);
		model.addAttribute("pi",pi);
		
		//System.out.println(list);
		
	return "question/questionList";
	}
	
	
	//디테일 
	
	@RequestMapping("detail.qs")
	public ModelAndView detailBoard(int quesNo,
							ModelAndView mv) {

		//게시글 조회수 증가 
		int result = qs.increaseCount(quesNo);
		
		System.out.println(quesNo);
		
		//조회수 증가가 성공적으로 이루어지면 해당 게시글 정보 조회 
		if(result>0) {
			Question q = qs.selectQuestion(quesNo);

			mv.addObject("que",q).setViewName("question/questionDetail");
			
		}else {

			mv.addObject("errorMsg", "게시글 조회 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//일반회원 글작성 페이지 이동 
	@GetMapping("insert.qs")
	public ModelAndView insertQuestion(HttpSession session,ModelAndView mv) {
		Member m=(Member)session.getAttribute("loginUser");
		int userNo=m.getUserNo();
		
			//System.out.println(m);
			mv.addObject("userNo", userNo);
			mv.setViewName("question/questionInsert");
			
			
		return mv;
				
		
		
	}
	
	//컴퍼니 회원 글쓰기 페이지 이동 
	@GetMapping("insertC.qs")
	public ModelAndView insertcQuestion(HttpSession session,ModelAndView mv) {
		Member m=(Member)session.getAttribute("loginUser");
		int userNo=m.getUserNo();
		
			//System.out.println(m);
			mv.addObject("userNo", userNo);
			mv.setViewName("question/questionCinsert");
			
			
		return mv;
				
		
		
	}
	
	//글등록을 시키는 메소드 

	@PostMapping("writeM.qs")
	public ModelAndView insertQuestion(Question q,ModelAndView mv,HttpSession session) {
		
	
		Member m=(Member)session.getAttribute("loginUser");
		int userNo=m.getUserNo();
	
		//담아주기
		
			q.setUserNo(userNo);
			//System.out.println(q);
			
//			if(userNo>1000) {
//		}else {
//			Company c=(Company)session.getAttribute("loginUser");
//			int comNo=c.getUserNo();
//			System.out.println(comNo);
//			q.setComNo(comNo);
//		}
//	
		
			
			int result= qs.insertQuestion(q);
			
			if(result>0) {
				session.setAttribute("alertMsg", "게시글이 등록되었습니다.");
				mv.setViewName("redirect:/list.qs");
				
			}else {
				mv.addObject("errorMsg", "게시글 등록 실패").setViewName("common/errorPage");
			}
			return mv;
			 
}
	
	

	@PostMapping("writeC.qs")
	public void insertcQuestion(Question q,ModelAndView mv,HttpSession session) {
		
	
		Member m=(Member)session.getAttribute("loginUser");
		int userNo=m.getUserNo();
	
		//담아주기
		
			q.setUserNo(userNo);
			
		//	System.out.println(userNo);
			/*
			int result= qs.insertcQuestion(q);
			if(result>0) {
				session.setAttribute("alertMsg", "게시글이 등록되었습니다.");
				mv.setViewName("redirect:/list.qs");
				
			}else {
				mv.addObject("errorMsg", "게시글 등록 실패").setViewName("common/errorPage");
			}
			return mv;
			 * */
			

}
	
	
	
	//수정페이지로 이동
		@RequestMapping("updateForm.qs")
		public String boardUpdateForm(int quesNo,Model model) {
			
			//수정하기페이지에서 필요한 기존 게시글 정보 조회하여 보내주기
			//System.out.println(quesNo);
			Question q = qs.selectQuestion(quesNo);
			
			model.addAttribute("que",q);
			
		//	System.out.println(q);
			
			return "question/questionUpdateForm";
		}

	//수정 처리 
		@RequestMapping("update.qs")
		public ModelAndView boardUpdate(Question q
							   ,HttpSession session
							   ,ModelAndView mv) {
		
			//		System.out.println(q.getQuesNo()); 
			
			//업로드 세팅이 끝났으니 해당 데이터를 service에 전달 
			int result = qs.updateQuestion(q);
			
			if(result>0) {
				//상세보기 페이지로 재요청
				session.setAttribute("alertMsg", "게시글 수정이 완료되었습니다.");
				mv.setViewName("redirect:/detail.qs?quesNo="+q.getQuesNo());
		
			}else {
				//에러페이지로 포워딩
				mv.addObject("errorMsg", "게시글 수정에 실패하였습니다.");
				mv.setViewName("common/errorPage");
			}
			
			return mv;
		}
		
	//삭제하기 
		@RequestMapping("delete.qs")
		public String boardDelete(int quesNo
				                ,HttpSession session
				                ,Model model) {
			
			int result = qs.deleteQuestion(quesNo);
			
			if(result>0) { 
				session.setAttribute("alertMsg", "게시글 삭제완료되었습니다.");
			}else {
				model.addAttribute("errorMsg","게시글 삭제 실패");
				return "common/errorPage";
			}
			
			return "redirect:/list.qs";
		}
		
		
		//댓글리스트 조회
		@ResponseBody
		@RequestMapping(value="rlist.qs",produces="application/json; charset=UTF-8")
		public String selectReplyList(int quesReFNo) {
			
			
			ArrayList<QuestionReply> list = qs.selectReplyList(quesReFNo);
			return new Gson().toJson(list);
		}
		
		
		
	
		//댓글 등록
		@ResponseBody
		@RequestMapping(value="rinsert.qs",produces="text/html; charset=UTF-8")
		public String insertReply(QuestionReply r,int quesReFNo,String questionReplyContent,String replyWriter) {
			
			//System.out.println(r);
			/*
			
			System.out.println(quesReFNo);
			System.out.println(userNo);
			System.out.println(questionReplyContent);
			
			
			
			 * */
				
			//System.out.println(replyWriter);
		
			r.setReplyWriter(replyWriter);
			r.setQuesReFNo(quesReFNo);
			r.setQuestionReplyContent(questionReplyContent);
			
				
			
			int result = qs.insertReply(r);
			
			qs.changeSt(quesReFNo);
			

			return result>0? "yes" : "no";
			
			
			
		}
		
		
		
		
		
}
