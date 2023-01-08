package com.kh.sachet.notice.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.common.template.Pagination;
import com.kh.sachet.notice.model.service.NoticeService;
import com.kh.sachet.notice.model.vo.Notice;
import com.kh.sachet.notice.model.vo.NoticeList;

@Controller
public class NoticeController {
	
	
	@Autowired
	private NoticeService noticeService;
	
	

	@RequestMapping(value = "/")
	public String home(Model model) {

		return "write";
	}
	
	
	
	
	//에디터의 이미지 파일업로드용 메소드
	public static void fileUpload(MultipartFile fileData, String path, String fileName) throws IOException {

		String originalFileName = fileData.getOriginalFilename();
		String contentType = fileData.getContentType();
		long fileSize = fileData.getSize();

		/*
		System.out.println("file Info");
		System.out.println("fileName " + fileName);
		System.out.println("originalFileName :" + originalFileName);
		System.out.println("contentType :" + contentType);
		System.out.println("fileSize :" + fileSize);
		*/

		InputStream is = null;
		OutputStream out = null;

		try {
				if (fileSize > 0) {
					is = fileData.getInputStream();
					File realUploadDir = new File(path);
				if (!realUploadDir.exists()) {             //경로에 폴더가 존재하지 않으면 생성합니다.
					realUploadDir.mkdirs();
				}
				out = new FileOutputStream(path +"/"+ fileName);
					FileCopyUtils.copy(is, out);            //InputStream에서 온 파일을 outputStream으로 복사
				}else{
				new IOException("잘못된 파일을 업로드 하셨습니다.");
				}
			} catch (IOException e) {
				e.printStackTrace();
				new IOException("파일 업로드에 실패하였습니다.");
			}finally{
				if(out != null){out.close();}
				if(is != null){is.close();}
			}
		}
	
	
	@RequestMapping("noticeListView.no")
	public String noticeListView(@RequestParam(value="currentPage", defaultValue="1")int currentPage, Model model) {
		//전체 상품 개수 조회해오기
		int listCount = noticeService.selectListCount();
		
		int pageLimit = 5;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Notice> nList = noticeService.selectNoticeList(pi);
		
		
		model.addAttribute("pi", pi);
		model.addAttribute("nList", nList);
		
		return "notice/noticeListView";
		
	}
	
	
	@RequestMapping("detail.no")
	public ModelAndView selectNotice(int nno, ModelAndView mv) {
		//조회수 올리는 메소드
		noticeService.countPlus(nno);

		//디테일 불러오는 메소드
		Notice  n = noticeService.selectNotice(nno);
		
		NoticeList nl = new NoticeList();
		
		String preTitle = noticeService.selectPre(nno-1);
		String nextTitle = noticeService.selectPre(nno+1);
		
		nl.setPreNo(nno-1);
		nl.setNextNo(nno+1);
		nl.setNextTitle(nextTitle);
		nl.setPreTitle(preTitle);
		
		
		mv.addObject("n" ,n);
		mv.addObject("nl",nl);
		
		mv.setViewName("notice/noticeDetailView");
		return mv;
	}
	
	
	@RequestMapping("noticeInsert.no")
	public String noticeInsert(Model model) {

		return "notice/noticeInsertForm";
	}
	
	
	
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)

	public String fileUpload(Model model, MultipartRequest multipartRequest, HttpServletRequest request) throws IOException{

	MultipartFile imgfile = (MultipartFile) multipartRequest.getFile("Filedata");     //write.jsp 부분에서 input file의 name 입니다.

	Calendar cal = Calendar.getInstance();
	String fileName = imgfile.getOriginalFilename();
	String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
	String replaceName = cal.getTimeInMillis() + fileType;  

	String path = request.getSession().getServletContext().getRealPath("/")+File.separator+"resources/upload";
	//파일이 저장되는 경로입니다. deploy되는 곳의 경로를 찾아서 저장합니다. 저는 deploy되는 위치의 resources/upload로 저장하겠습니다. 로컬에서는 이렇게 적지 않으면 이미지를 불러올 때 이클립스에서 f5를 누르지 않으면 엑박이 뜹니다. 

	fileUpload(imgfile, path, replaceName);
	model.addAttribute("path", path);                         // 파일업로드를 하는 창에 경로와 
	model.addAttribute("filename", replaceName);       // 저장된 이름을 전달합니다.
	return "notice/file_upload";

	}
	
	
	//위에건 에디터상 이미지 파일 처리하는 메소드. 밑에 건 그냥 일반 파일 처리 메소드.
	//현재 넘어온 첨부파일을 서버의 폴더에 저장시키는 메소드(모듈)
	public String saveFile(MultipartFile noticefile, HttpSession session) {
		//1. 원본 파일명 뽑기
		String originName = noticefile.getOriginalFilename();
		
		//2. 파일을 업로드할 실질적인 위치(물리경로)찾기
		String savePath = session.getServletContext().getRealPath("/resources/upload/");
	
		try {
			noticefile.transferTo(new File(savePath+originName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return originName;
	}
	
	
	
	@RequestMapping (value = "noticeInsert.no", method = RequestMethod.POST)
	public ModelAndView noticeInsert
	(HttpSession session, ModelAndView mv, String noticeTitle, MultipartFile noticefile, String contents) {
		
		Notice nn = new Notice();
		nn.setNoticeTitle(noticeTitle);
		nn.setNoticeContent(contents);
		
//에디터 이미지와는 별개로 파일을 넣고 싶은데 잘 안되네...

//		if(noticefile.isEmpty()) {
//			System.out.println("파일이 비엇군용");
//			
//		}else if (noticefile.equals(null)){
//			System.out.println("?머 어쩌란거임?");
//			
//		}else {
//			String originName = saveFile(noticefile, session);
//			
//			n.setNoticeFile(originName);
//			n.setNoticeFileFp("resources/upload/"+originName);
//			
//		}
		
		int result = noticeService.noticeInsert(nn);
		
		int nno = 0;
		if (result>0) {
			nno = noticeService.noticeInsertNo();
			
			Notice n = noticeService.selectNotice(nno);
			
			NoticeList nl = new NoticeList();
			
			String preTitle = noticeService.selectPre(nno-1);
			String nextTitle = noticeService.selectPre(nno+1);
			
			nl.setPreNo(nno-1);
			nl.setNextNo(nno+1);
			nl.setNextTitle(nextTitle);
			nl.setPreTitle(preTitle);
			
			
			mv.addObject("n" ,n);
			mv.addObject("nl",nl);
			
			mv.setViewName("notice/noticeDetailView");
			
		}
		
		return mv;
	}
	
	@RequestMapping("noticeDelete.no")
	public String noticeDelete (int nno) {
		
		int result = noticeService.noticeDelete(nno);
		
		if(result>0) {
			return "redirect:/noticeListView.no";
		}
		
		return "redirect:/";
	}
	
	
	@RequestMapping("searchNotice.no")
	public ModelAndView searchNotice (ModelAndView mv, String keyword) {
		
		
		String keyword2 = "%"+keyword+"%";
		
		ArrayList <Notice> searchL = new ArrayList <Notice>();
		
		searchL = noticeService.searchNotice(keyword2);
		
		
		for(int i=0; i<searchL.size(); i++) {
		
			//키워드 시작하는 인덱스
			int keywordIndex = searchL.get(i).getNoticeContent().indexOf(keyword)+keyword.length();
			
			//키워드 시작하는 인덱스부터 미리보기 할 인덱스까지 +120자
			int keywordLast = keywordIndex+200;
			
			//내용 영역의 총 글자 수
			int content = searchL.get(i).getNoticeContent().length();
			
			String searchContent ="";
			//내용이 만약 키워드 시작부터 120자 이상까지 없다면, 마지막 인덱스까지 substring
			if(content-keywordLast>0) {
				searchContent= searchL.get(i).getNoticeContent().substring(keywordIndex,keywordLast);
			}else {
				searchContent=searchL.get(i).getNoticeContent().substring(keywordIndex,content);
			}
			
			//<br>과 <p>태그의 엔터 없애주기
			String finalContent = searchContent.replace("<br>", "").replace("<p>", "").replace("</p>", "");
			
			//만약 키워드가 제목에만 있고 내용에는 없다면
			String boldContent=finalContent;

			boldContent = "<b>"+keyword+"</b>"+finalContent;
			searchL.get(i).setNoticeContent(boldContent);
		}
		
		
		mv.addObject("searchL", searchL);
		mv.addObject("keyword", keyword);
		mv.setViewName("notice/noticeSearchList");
		
		return mv;
	}
	
	
	

}
