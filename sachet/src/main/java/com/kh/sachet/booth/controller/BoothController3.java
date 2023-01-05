package com.kh.sachet.booth.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
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
	public ModelAndView boothparticipationForm (ModelAndView mv, HttpSession session, Booth b) {
		Company c = (Company)session.getAttribute("loginUser");
		
		mv.addObject("c",c);
		mv.setViewName("booth/boothparticipationForm");
	
		return mv;


	}
	
	//현재 넘어온 첨부파일을 서버의 폴더에 저장시키는 메소드(모듈)
		public String saveFile(MultipartFile upfile2, HttpSession session) {
			//1. 원본 파일명 뽑기
			String originName = upfile2.getOriginalFilename();
			
			//2. 파일을 업로드할 실질적인 위치(물리경로)찾기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
			try {
				upfile2.transferTo(new File(savePath+originName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return originName;
		}
		
		
	
	@ResponseBody
	@RequestMapping(value="boothSectionList.boo",  produces="application/json; charset=UTF-8")
	public String boothSectionList (){
		ArrayList<Booth> booList = boothService.selectBoothList();
		
		return new Gson().toJson(booList);
		
	}
		
		
	
	@RequestMapping("boothFormInsert.boo")
	public ModelAndView boothFormInsert
	(HttpSession session, ModelAndView mv, Booth b, MultipartFile upfile2) {
		
		Company c= (Company) session.getAttribute("loginUser");

		int comNo = c.getUserNo();
		String boothName = b.getBoothName();
		String comName = c.getUserName();
		String comBrnum = c.getComBrnum();
		String boothDetail = b.getBoothDetail();
		int boothSection = b.getBoothSection();
		int boothPrice = 0;
		
		if(boothSection==1) {
			boothPrice=3;
		}else if(boothSection==2){
			boothPrice=2;
		}else {
			boothPrice=1;
		}
		String originName = saveFile(upfile2, session);

		Booth insertB = new Booth();
		insertB.setComNo(comNo);
		insertB.setBoothName(boothName);
		insertB.setBoothDetail(boothDetail);
		insertB.setBoothImgOn(upfile2.getOriginalFilename());
		insertB.setBoothImgFp("resources/uploadFiles/"+originName);
		insertB.setBoothPrice(boothPrice);
		insertB.setBoothSection(boothSection);
		
		
		int result =  boothService.boothFormInsert(insertB);
		
		if(result>0) {
			mv.setViewName("booth/boothInsertComplete");
			
		}else {
			
		}
		
		
		return mv;

 
	}
	
	
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~여기서부터 부스 관리 페이지~~~~~~~~~~~~~~~~~~~~~~~~~
	//승인 대기중인 부스 리스트 뽑기
	@RequestMapping("boothSetting.boo")
	public String selectWaitingBoothList(Model model) {
		ArrayList<Booth> booList = boothService.selectWaitingBoothList();
		model.addAttribute("booList", booList);
		return "booth/boothSetting";
	}
	
	//부스 리스트 중 해당 부스 상세화면으로 이동
	@RequestMapping("boothDetail.boo")
	public String selectWaitingBooth(Model model, int cno) {
		Booth b = boothService.selectWaitingBooth(cno);
		
		model.addAttribute("b", b);
		return "booth/boothSettingDetail";
	}
	
	//부스접수->결제완료로 상태 변경하기
	@ResponseBody
	@RequestMapping(value="payComplete.boo")
	public int changeToPayComplete(int boothNo) {
//		System.out.println(boothNo);
		int result = boothService.changeToPayComplete(boothNo);
		return result;
	}
	
	//결제완료->부스심사로 상태 변경하기
	@ResponseBody
	@RequestMapping(value="boothJudge.boo")
	public int changeToBoothJudge(int boothNo) {
		int result = boothService.changeToBoothJudge(boothNo);
		return result;
	}
	
	//부스심사->승인완료 상태 변경하기
	@ResponseBody
	@RequestMapping(value="boothApprove.boo")
	public int changeToBoothApprove(int boothNo) {
		int result = boothService.changeToBoothApprove(boothNo);
		return result;
	}
	
	//승인거절로 상태 변경하기
	 @ResponseBody
	 @RequestMapping(value="boothDeny.boo")
	 public int changeToBoothDeny(int boothNo) {
		 int result = boothService.changeToBoothDeny(boothNo);
		 return result;
	 }
	 
	 //승인된 부스리스트 페이지
	 @RequestMapping("approvedBooth.boo")
	 public String selectApprovedBoothList(Model model) {
		 ArrayList<Booth> booList = boothService.selectBoothList();
		model.addAttribute("booList", booList);
		return "booth/approvedBoothSetting";
	 }
	 
	 //승인거절된 부스리스트 페이지
	 @RequestMapping("deniedBooth.boo")
	 public String selectDeniedBoothList(Model model) {
		 ArrayList<Booth> booList = boothService.selectDeniedBoothList();
		 model.addAttribute("booList", booList);
		 return "booth/deniedBoothSetting";
	 }
	

}
