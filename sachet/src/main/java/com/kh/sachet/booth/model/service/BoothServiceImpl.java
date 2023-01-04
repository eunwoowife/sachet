package com.kh.sachet.booth.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.booth.model.dao.BoothDao;
import com.kh.sachet.booth.model.vo.Booth;

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

}
