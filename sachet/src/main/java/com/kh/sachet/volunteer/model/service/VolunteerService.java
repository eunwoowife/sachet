package com.kh.sachet.volunteer.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.volunteer.model.vo.Volunteer;

public interface VolunteerService {

	
		
			//상세조회 
	
		
	
			//봉사 조회(로그인)
		//	ArrayList<Volunteer> selectList(int userNo);
			
			//상세조회 
			
			//int selectDetail(int userNo);
			
			Volunteer selectVolunteer(int volNo);
			
			//삭제 or 선택
			
			int deleteVolunteer(int volNo);
			//volno가져가서 삭제할거ㅅ체크 

			
	
	//자원봉사 신청 
			
			int submitVolunteer(Volunteer v);

		

			
			
			//자원봉사  조회 
			
				//리스트 총개수 
			int selectListCount();
				//페이징
			ArrayList<Volunteer> selectList(PageInfo pi);

			int increaseCount(int volNo);

		

			
			
			
	
}
