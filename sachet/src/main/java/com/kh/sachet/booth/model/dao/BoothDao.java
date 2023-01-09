package com.kh.sachet.booth.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.booth.model.vo.Booth;
import com.kh.sachet.member.model.vo.SachetMoney;
import com.kh.sachet.order.model.vo.OrderDetail;

@Repository
public class BoothDao {

	public ArrayList<Booth> selectBoothList(SqlSessionTemplate sqlSession) {
		ArrayList<Booth> booList = (ArrayList)sqlSession.selectList("boothMapper.selectBoothList");
		return booList;
	}

	public int boothFormInsert(SqlSessionTemplate sqlSession, Booth insertB) {
		return sqlSession.insert("boothMapper.boothFormInsert", insertB);
	}

	public Booth selectBooth(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.selectOne("boothMapper.selectBooth", comNo);
	}

	public ArrayList<Booth> selectWaitingBoothList(SqlSessionTemplate sqlSession) {
		ArrayList<Booth> booList = (ArrayList)sqlSession.selectList("boothMapper.selectWaitingBoothList");
		return booList;
	}

	public Booth selectWaitingBooth(SqlSessionTemplate sqlSession, int cno) {
		return sqlSession.selectOne("boothMapper.selectBooth", cno);
	}

	public int changeToPayComplete(SqlSessionTemplate sqlSession, int boothNo) {
		return sqlSession.update("boothMapper.changeToPayComplete", boothNo);
	}

	public int changeToBoothJudge(SqlSessionTemplate sqlSession, int boothNo) {
		return sqlSession.update("boothMapper.changeToBoothJudge", boothNo);
	}

	public int changeToBoothApprove(SqlSessionTemplate sqlSession, int boothNo) {
		return sqlSession.update("boothMapper.changeToBoothApprove", boothNo);
	}

	public int changeToBoothDeny(SqlSessionTemplate sqlSession, int boothNo) {
		return sqlSession.update("boothMapper.changeToBoothDeny", boothNo);
	}

	public String checkBoothStatus(SqlSessionTemplate sqlSession, int comNo) {
		return sqlSession.selectOne("boothMapper.checkBoothStatus", comNo);
	}

	public ArrayList<Booth> selectDeniedBoothList(SqlSessionTemplate sqlSession) {
		ArrayList<Booth> booList = (ArrayList)sqlSession.selectList("boothMapper.selectDeniedBoothList");
		return booList;
	}

	public SachetMoney selectSachetMoney(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("sachetMoneyMapper.selectSachetMoney");
	}

	public ArrayList<OrderDetail> productCalculationList(SqlSessionTemplate sqlSession) {
		ArrayList<OrderDetail> pcList = (ArrayList)sqlSession.selectList("OrderMapper.productCalculationList");
		return pcList;
	}

}
