package com.govegan.root.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.govegan.root.common.session.MemberSessionName;
import com.govegan.root.member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberContorller implements com.govegan.root.common.session.MemberSessionName{
	@Autowired MemberService ms;
	
	@RequestMapping("login")
	public String login() {
		return "/member/login";
	}
	@PostMapping("userCheck")
	public String userCheck(@RequestParam String id, @RequestParam String pwd,
							@RequestParam(required = false) String autoLogin,				
							RedirectAttributes rs,
							Model model) {
		int result = ms.userCheck(id,pwd);
		if(result == 0) {
			rs.addAttribute("id",id);
			rs.addAttribute("autoLogin",autoLogin);
			return "redirect:successLogin";
		}else if(result == 1) {
			model.addAttribute("msg", "PASSWORD IS INCORRECT");
		}else if(result == 2){
			model.addAttribute("msg", "THERE IS NO REGISTERED ID");
		}
		model.addAttribute("url","/root/member/login");
		return "/member/login";	
	}
	@GetMapping("/successLogin")
	public String successLogin(@RequestParam String id,
								@RequestParam(required = false) String autoLogin,
								HttpSession session, HttpServletResponse response) {
		if(autoLogin!=null){		
			ms.autoLogin(session, response, id);
		}
		session.setAttribute(LOGIN, id);
		System.out.println(session.getAttribute(LOGIN));
		return "/index";
	}
	@GetMapping("logout")
	public String logout(HttpSession session, HttpServletResponse response,		
						@CookieValue(value="loginCookie", required = false) 
						Cookie loginCookie) {
		if(session.getAttribute(LOGIN)!=null) {
			ms.logout(loginCookie, session, response);	
		}
		response.addHeader(null, null);
		return "redirect:/index";
	}
}
