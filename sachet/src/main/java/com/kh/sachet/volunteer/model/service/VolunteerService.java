package com.kh.sachet.volunteer.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.volunteer.model.vo.Volunteer;

public interface VolunteerService {

	
		
			//상세조회 
	
		
		
			Volunteer selectVolunteer(int volNo);
			
			//삭제 or 선택
			
			

			
	
			//자원봉사 신청 
			
			int submitVolunteer(Volunteer v);

		

			
			
			//자원봉사  조회 
			
				//리스트 총개수 
			int selectListCount();
				//페이징
			ArrayList<Volunteer> selectList(PageInfo pi);

			int increaseCount(int volNo);
			
			//관리자 회원승인 
			int volunteerAppr(String userNo);
			
			//관리자 회원 부적합 처리  
			int volunteerDeny(String userNo);

		

			
			
			
	
}
