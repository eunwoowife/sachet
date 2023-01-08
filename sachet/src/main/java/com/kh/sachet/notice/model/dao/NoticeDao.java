package com.kh.sachet.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.notice.model.vo.Notice;
import com.kh.sachet.product.model.vo.Product;

@Repository
public class NoticeDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
	}

	public ArrayList<Notice> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		ArrayList<Notice> nList = (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList", null, rowBounds);
		return nList;
	}

	public Notice selectNotice(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.selectOne("noticeMapper.selectNotice", nno);
	}

	public int countPlus(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.update("noticeMapper.countPlus", nno);
	}

	public int noticeInsert(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("noticeMapper.noticeInsert", n);
	}

	public String selectPre(SqlSessionTemplate sqlSession, int i) {
		return sqlSession.selectOne("noticeMapper.selectPre", i);
	}

	public int noticeInsertNo(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.noticeInsertNo");
	}

	public int noticeDelete(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.update("noticeMapper.noticeDelete",nno);
	}

	public ArrayList<Notice> searchNotice(SqlSessionTemplate sqlSession, String keyword) {
		
		ArrayList<Notice> l = (ArrayList)sqlSession.selectList("noticeMapper.searchNotice", keyword);
		return l;
	
	}




}
