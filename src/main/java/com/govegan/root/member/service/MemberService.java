package com.govegan.root.member.service;

import java.sql.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.govegan.root.member.dto.MemberDTO;

public interface MemberService {
	public int userCheck(String id, String pwd);
	public void autoLogin(HttpSession session, HttpServletResponse response, String id);
	public void keepLogin(String session, Date limitDate, String id);
	public void logout(Cookie loginCookie, HttpSession session, HttpServletResponse response);
	public int chkId(String id);
	public int register(MemberDTO dto);
}
