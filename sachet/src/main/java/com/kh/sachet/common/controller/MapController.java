package com.kh.sachet.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	
	@RequestMapping("map.sc")
	public String mapView() {
		return "common/map";
	}
}
