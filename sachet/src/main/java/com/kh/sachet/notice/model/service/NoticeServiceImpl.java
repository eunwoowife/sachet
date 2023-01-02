package com.kh.sachet.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.notice.model.dao.NoticeDao;
import com.kh.sachet.notice.model.vo.Notice;


@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	@Override
	public int selectListCount() {
		int listCount = noticeDao.selectListCount(sqlSession);
		return listCount;
	}



	@Override
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		ArrayList<Notice> nList = noticeDao.selectNoticeList(sqlSession, pi);
		return nList;
	}


	public Notice selectNotice(int nno) {
		Notice n = noticeDao.selectNotice(sqlSession, nno);
		return n;
	}



	@Override
	public int countPlus(int nno) {
		int countView = noticeDao.countPlus(sqlSession, nno);
		return countView;
	}

}
