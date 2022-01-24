package com.govegan.root.veganroad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govegan.root.veganroad.service.VeganroadService;

@Controller
@RequestMapping("veganroad")
public class VeganroadController {
	@Autowired VeganroadService vs;
	
	@RequestMapping("veganroadHome")
	public String veganroadHome() {
		return "/veganroad/veganroadHome";
	}
}
