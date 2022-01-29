package com.govegan.root.member.service;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.govegan.root.common.session.MemberSessionName;
import com.govegan.root.member.dto.MemberDTO;
import com.govegan.root.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	BCryptPasswordEncoder encoder;
	MemberSessionName msn;
	
	public MemberServiceImpl() {
		encoder = new BCryptPasswordEncoder();
	}
	public int userCheck(String id, String pwd) {
		MemberDTO dto = new MemberDTO();
		dto = mapper.userCheck(id);
		if(dto!=null) {
			if(pwd.equals(dto.getPwd())) {
				return 0;
			}
			return 1;
		}
		return 2;
	}
	public void autoLogin(HttpSession session, HttpServletResponse response, String id) {
		
		int limitTime = 60*60*24*180; //180일
		Cookie loginCookie = new Cookie("loginCookie",session.getId());
		loginCookie.setMaxAge(limitTime);
		loginCookie.setPath("/"); //쿠키 범위 최상위
		response.addCookie(loginCookie);
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 6); //6개월 후	
		Date limitDate = new Date(cal.getTimeInMillis());

		keepLogin(session.getId(), limitDate, id);
	
		System.out.println("id : "+ id);
		System.out.println("sessionId : "+ session.getId());
	}
	public void keepLogin(String session, Date limitDate, String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sessionId", session);
		map.put("limitDate", limitDate);
		map.put("id", id);
		mapper.keepLogin(map);

	}	
	public void logout(Cookie loginCookie, HttpSession session, HttpServletResponse response) {
		if(loginCookie!=null) {	
			loginCookie.setMaxAge(0);
			loginCookie.setPath("/");
			response.addCookie(loginCookie);
			keepLogin("null", new java.sql.Date(System.currentTimeMillis()),
					(String)session.getAttribute(msn.LOGIN));	
		}
		session.invalidate();
	}
	public int chkId(String id) {
		System.out.println(mapper.chkId(id));
		return mapper.chkId(id);
	}
	public int register(MemberDTO dto) {
		String securePw = encoder.encode(dto.getPwd());
		dto.setPwd(securePw);
		try {
			return mapper.register(dto);
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}	
	}

}
