package com.kh.sachet.member.model.service;

import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);
	
	int idCheck(String checkId);
}
