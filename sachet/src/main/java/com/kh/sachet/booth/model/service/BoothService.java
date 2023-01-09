package com.kh.sachet.booth.model.service;

import java.util.ArrayList;

import com.kh.sachet.booth.model.vo.Booth;
import com.kh.sachet.company.model.vo.Company;
import com.kh.sachet.member.model.vo.SachetMoney;
import com.kh.sachet.order.model.vo.OrderDetail;

public interface BoothService {
	
	ArrayList<Booth> selectBoothList();

	int boothFormInsert(Booth insertB);

	Booth selectBooth(int comNo);

	ArrayList<Booth> selectWaitingBoothList();

	Booth selectWaitingBooth(int cno);

	int changeToPayComplete(int boothNo);

	int changeToBoothJudge(int boothNo);

	int changeToBoothApprove(int boothNo);

	int changeToBoothDeny(int boothNo);

	String checkBoothStatus(int comNo);

	ArrayList<Booth> selectDeniedBoothList();

	SachetMoney selectSachetMoney();

	ArrayList<OrderDetail> selectproductCalculationList();

	int calculationProduct(int pay);

	int depositProduct(Company c);
}
