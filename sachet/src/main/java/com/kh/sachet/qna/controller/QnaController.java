package com.kh.sachet.qna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.qna.model.service.QnaService;
import com.kh.sachet.qna.model.vo.Qna;
import com.kh.sachet.volunteer.model.vo.Volunteer;



@Controller
public class QnaController {
	
	@Autowired 
	private QnaService qnaService;
	
	@RequestMapping("qnaListView.qo")
	public String selectList(@RequestParam(value="currentPage",defaultValue="1")int currentPage,
				Model model) {
		
		int listCount=qnaService.selectListCount();
		int pageLimit=10;
		int qnaLimit=5;
		
	
		PageInfo pi =Pagination.getPageinfo(listCount, currentPage, pageLimit, qnaLimit);
	
		ArrayList<Qna> list=qnaService.selectList(pi);
		
		
	
	
		model.addAttribute("list", list);
		
		//System.out.println(list);
		model.addAttribute("pi", pi);
		
		return "qna/qnaListView";
		
	}

}
