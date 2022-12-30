package com.kh.sachet.experience.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.experience.model.service.ExperienceService;
import com.kh.sachet.experience.model.vo.Experience;

@Controller
public class ExperienceController {
	
	@Autowired
	private ExperienceService experienceService;

	@RequestMapping("experienceListView.exp")
	public String selectAllExperience(@RequestParam(value="currentPage", defaultValue="1")int currentPage, Model model) {
		//전체 체험 개수 조회해오기
		int listCount = experienceService.selectListCount();
		int pageLimit = 5;
		int boardLimit = 9;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Experience> eList = experienceService.selectExperienceList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("eList", eList);
		
		return "experience/experienceListView";
	}
	
	@RequestMapping("detail.exp")
	public String selectExperience(int eno, Model model) {
		Experience e = experienceService.selectExperience(eno);
		
		model.addAttribute("e", e);
		
		return "experience/experienceDetail";
	}
	
}
