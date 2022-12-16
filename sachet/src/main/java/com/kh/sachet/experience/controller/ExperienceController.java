package com.kh.sachet.experience.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExperienceController {

	@RequestMapping("experienceListView.exp")
	public String selectAllExperience() {
		return "experience/experienceListView";
	}
}
