package com.govegan.root.mybatis.member;

import java.util.Map;

import com.govegan.root.member.dto.MemberDTO;

public interface MemberMapper {
	public MemberDTO userCheck(String id);
	public void keepLogin(Map<String, Object> map);
	public int chkId(String id);
	public int register(MemberDTO dto);
}
