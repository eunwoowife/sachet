package com.kh.sachet.booth.model.service;

import java.util.ArrayList;

import com.kh.sachet.booth.model.vo.Booth;

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
}
