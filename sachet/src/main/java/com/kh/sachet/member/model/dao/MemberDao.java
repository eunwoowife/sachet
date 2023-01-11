package com.kh.sachet.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.member.model.vo.Member;
import com.kh.sachet.order.model.vo.OrderDetail;
import com.kh.sachet.ticketing.model.vo.Ticket;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
//		System.out.println("ado:"+m);
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}

	//구매조회
	public ArrayList<OrderDetail> selectOrderList(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<OrderDetail> orderMyList =(ArrayList)sqlSession.selectList("OrderMapper.oderMyList",userNo);
		
		
		return orderMyList;
	}
	//티켓예매 
	public ArrayList<Ticket> myticketList(SqlSessionTemplate sqlSession, int userNo) {
		ArrayList<Ticket> myticketList =(ArrayList)sqlSession.selectList("ticketMapper.myticketList",userNo);
		return myticketList;
	}
	//마이페이지 수정 
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}
	//로그인 확인
	public Member loginMember(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.loginMember",userId);
	}

	//회원 탈퇴
		public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
			return sqlSession.update("memberMapper.deleteMember", m);
		}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}


}
