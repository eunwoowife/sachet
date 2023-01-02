package com.kh.sachet.booth.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.sachet.booth.model.service.BoothService;
import com.kh.sachet.booth.model.vo.Booth;

@Controller
public class BoothController {
	
	@Autowired
	private BoothService boothService;
	
	@RequestMapping("boothListView.boo")
	public String boothListView (Model model) {
		ArrayList<Booth> booList = boothService.selectBoothList();
		model.addAttribute("booList", booList);
		return "booth/boothListView";
	}
	
	@RequestMapping("boothParticipatingInfo.boo")
	public String boothParticipatingInfo () {
		return "booth/boothParticipatingInfo";
	}
	

}
