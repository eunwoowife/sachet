package com.kh.sachet.booth.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.booth.model.service.BoothService;
import com.kh.sachet.booth.model.vo.Booth;
import com.kh.sachet.company.model.vo.Company;

@Controller
public class BoothController3 {
	
	@Autowired
	private BoothService boothService;
	
	@RequestMapping("boothListView.bo")
	public String boothListView (Model model) {
		ArrayList<Booth> booList = boothService.selectBoothList();
		model.addAttribute("booList", booList);
		return "booth/boothListView";
	}
	
	@RequestMapping("boothParticipatingInfo.bo")
	public String boothParticipatingInfo () {
		return "booth/boothParticipatingInfo";
	}
	
	
	
	
	@RequestMapping("boothparticipationForm.boo")
	public void boothparticipationForm (HttpSession session, Booth b) {
//		부스이름 input
//		기업이름 select해서 가져와야함
//		기업번호 select
//		부스 상세설명 input
//
//		썸네일 파일 input
//
//		그리고 ...............머잇지
//
//		자리배치 input
		Company c= (Company) session.getAttribute("loginUser");
		
		int comNo = c.getUserNo();
		String boothName = b.getBoothName();
		String comName = c.getUserName();
		String comBrnum = c.getComBrnum();
		String boothDetail = b.getBoothDetail();
		String boothImgOn= "text";
		String boothImgFp= "text2";
		
		
		//임의값
		int boothSection = 1;
		int boothPrice = 20000;
		

		Booth insertB = new Booth();

		insertB.setComNo(comNo);
		insertB.setBoothName(boothName);
		insertB.setBoothDetail(boothDetail);
		insertB.setBoothImgOn(boothImgOn);
		insertB.setBoothImgFp(boothImgFp);
		insertB.setBoothPrice(boothPrice);
		insertB.setBoothSection(boothSection);
		
		
		
		
		
		
		
		
		
	}
	

}
