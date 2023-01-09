package com.kh.sachet.booth.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.booth.model.dao.BoothDao;
import com.kh.sachet.booth.model.vo.Booth;
import com.kh.sachet.member.model.vo.SachetMoney;
import com.kh.sachet.order.model.vo.OrderDetail;

@Service
public class BoothServiceImpl implements BoothService{
	
	@Autowired
	private BoothDao boothdao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Booth> selectBoothList() {
		ArrayList<Booth> booList = boothdao.selectBoothList(sqlSession);
		return booList;
	}

	@Override
	public int boothFormInsert(Booth insertB) {
		int result = boothdao.boothFormInsert(sqlSession, insertB);
		return result;
	}

	@Override
	public Booth selectBooth(int comNo) {
		Booth b = boothdao.selectBooth(sqlSession, comNo);
		return b;
	}

	@Override
	public ArrayList<Booth> selectWaitingBoothList() {
		ArrayList<Booth> booList = boothdao.selectWaitingBoothList(sqlSession);
		return booList;
	}

	@Override
	public Booth selectWaitingBooth(int cno) {
		Booth b = boothdao.selectWaitingBooth(sqlSession, cno);
		return b;
	}

	@Override
	public int changeToPayComplete(int boothNo) {
		return boothdao.changeToPayComplete(sqlSession, boothNo);
	}

	@Override
	public int changeToBoothJudge(int boothNo) {
		return boothdao.changeToBoothJudge(sqlSession, boothNo);
	}

	@Override
	public int changeToBoothApprove(int boothNo) {
		return boothdao.changeToBoothApprove(sqlSession, boothNo);
	}

	@Override
	public int changeToBoothDeny(int boothNo) {
		return boothdao.changeToBoothDeny(sqlSession, boothNo);
	}

	@Override
	public String checkBoothStatus(int comNo) {
		return boothdao.checkBoothStatus(sqlSession, comNo);
	}

	@Override
	public ArrayList<Booth> selectDeniedBoothList() {
		ArrayList<Booth> booList = boothdao.selectDeniedBoothList(sqlSession);
		return booList;
	}

	@Override
	public SachetMoney selectSachetMoney() {
		return boothdao.selectSachetMoney(sqlSession);
	}

	@Override
	public ArrayList<OrderDetail> selectproductCalculationList() {
		ArrayList<OrderDetail> pcList = boothdao.productCalculationList(sqlSession);
		return pcList;
	}



}
