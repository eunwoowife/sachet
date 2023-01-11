package com.kh.sachet.volunteer.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.OrderDetail;
import com.kh.sachet.volunteer.model.dao.VolunteerDao;
import com.kh.sachet.volunteer.model.vo.Volunteer;

@Service
public class VolunteerServiceImp implements VolunteerService{

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private VolunteerDao volunteerDao; 
	
	

	@Override
	public int deleteVolunteer(int volNo) {
		return 0;
	}

	@Override
	public int submitVolunteer(Volunteer v) {
		int submit=volunteerDao.submitVolunteer(sqlSession,v);
		return submit;
	}

	@Override
	public int selectListCount() {
		return volunteerDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Volunteer> selectList(PageInfo pi) {
		return volunteerDao.selectList(sqlSession, pi);
	}


	@Override
	public Volunteer selectVolunteer(int volNo) {
		return volunteerDao.selectVolunteer(sqlSession,volNo);
		
	}

	@Override
	public int increaseCount(int volNo) {
		return volunteerDao.increaseCount(sqlSession,volNo);
	}

	

	
	
}
