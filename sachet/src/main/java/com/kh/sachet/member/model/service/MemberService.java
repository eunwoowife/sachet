package com.kh.sachet.member.model.service;

import java.util.ArrayList;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.OrderDetail;
import com.kh.sachet.ticketing.model.vo.Ticket;

public interface MemberService {
	
	Member loginMember(Member m);
	
	int idCheck(String checkId);
	
	//my page 
	
		//구매내역 
		ArrayList<OrderDetail> selectOrderList(int userNo);

		//티켓내
		ArrayList<Ticket> myticketList(int userNo);

		
		//회원정보 수정 
			int updateMember(Member m);


		//회원탈퇴 
			int deleteMember(Member m);

			Member loginMember(String userId);

			//회원가입 
			int insertMember(Member m);
		


	}

