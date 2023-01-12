package com.kh.sachet.volunteer.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.volunteer.model.vo.Volunteer;

@Repository
public class VolunteerDao {
	
	//리스트 
	public ArrayList<Volunteer> selectList(SqlSessionTemplate sqlSession,PageInfo pi){
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("volunteerMapper.selectList", null, rowBounds);
	}
	//STAFF지원 
	public int submitVolunteer(SqlSessionTemplate sqlSession, Volunteer v) {
		return sqlSession.insert("volunteerMapper.submitVolunteer",v);
	}

	//지원자 상세보기 
	public Volunteer selectDetail(SqlSessionTemplate sqlSession,int userNo) {
		return sqlSession.selectOne("volunteerMapper.detailVolunteer", userNo);
		
	}
	//페이지 조회수 
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("volunteerMapper.selectvolListCount");
	}
	
	public static Volunteer selectVolunteer(SqlSessionTemplate sqlSession, int volno) {
		return sqlSession.selectOne("volunteerMapper.detailVolunteer",volno);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int volNo) {
		return sqlSession.update("volunteerMapper.increaseCount",volNo);
	}
	//관리
	public int volunteerAppr(SqlSessionTemplate sqlSession, String userNo) {
		return sqlSession.update("volunteerMapper.volunteerAppr",userNo);
	}
	public int volunteerDeny(SqlSessionTemplate sqlSession, String userNo) {
		return sqlSession.update("volunteerMapper.volunteerDeny",userNo);
	}
}

