package com.kh.sachet.booth.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.booth.model.vo.Booth;

@Repository
public class BoothDao {

	public ArrayList<Booth> selectBoothList(SqlSessionTemplate sqlSession) {
		ArrayList<Booth> booList = (ArrayList)sqlSession.selectList("boothMapper.selectBoothList");
		return booList;
	}

}
