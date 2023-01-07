package com.kh.sachet.notice.model.service;

import java.util.ArrayList;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.notice.model.vo.Notice;

public interface NoticeService  {

	int selectListCount();

	ArrayList<Notice> selectNoticeList(PageInfo pi);

	Notice selectNotice(int nno);

	int countPlus(int nno);

	int noticeInsert(Notice n);

	String selectPre(int i);

	int noticeInsertNo();

	int noticeDelete(int nno);

}
