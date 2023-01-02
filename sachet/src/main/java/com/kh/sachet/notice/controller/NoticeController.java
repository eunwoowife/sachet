package com.kh.sachet.notice.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.notice.model.service.NoticeService;
import com.kh.sachet.notice.model.vo.Notice;
import com.kh.sachet.product.model.vo.Product;

@Controller
public class NoticeController {
	
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("noticeListView.no")
	public String noticeListView(@RequestParam(value="currentPage", defaultValue="1")int currentPage, Model model) {
		//전체 상품 개수 조회해오기
		int listCount = noticeService.selectListCount();
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Notice> nList = noticeService.selectNoticeList(pi);
		
		
		model.addAttribute("pi", pi);
		model.addAttribute("nList", nList);
		
		return "notice/noticeListView";
		
	}
	
	
	@RequestMapping("detail.no")
	public String selectNotice(int nno, Model model) {
		//조회수 올리는 메소드
		int viewCount = noticeService.countPlus(nno);

		Notice  n = noticeService.selectNotice(nno);
		
		
		model.addAttribute("n", n);

		return "notice/noticeDetailView";
	}
	
	
	@RequestMapping("noticeInsert.no")
	public String noticeInsert(Model model) {

		return "notice/noticeInsertForm";
	}
	
	
	

}
