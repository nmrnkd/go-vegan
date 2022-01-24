package com.govegan.root.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govegan.root.store.service.StoreService;

@Controller
@RequestMapping("store")
public class StoreController {
	@Autowired StoreService ss;
	
	@RequestMapping("storeHome")
	public String storeHome() {
		return "/store/storeHome";
	}
	@RequestMapping("best")
	public String best() {
		return "/store/best";
	}
	@RequestMapping("new_")
	public String new_() {
		return "/store/new_";
	}
	@RequestMapping("brand")
	public String brand() {
		return "/store/brand";
	}
	@RequestMapping("total")
	public String total() {
		return "/store/total";
	}

}
