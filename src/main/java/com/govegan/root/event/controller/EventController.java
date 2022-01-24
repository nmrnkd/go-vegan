package com.govegan.root.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govegan.root.event.service.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	@Autowired EventService es;
	
	@RequestMapping("eventHome")
	public String eventHome() {
		return "/event/eventHome";
	}
}
