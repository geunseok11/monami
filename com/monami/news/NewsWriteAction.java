package com.monami.news;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.news.dao.NewsBoardDAO;
import com.monami.news.dao.NewsBoardDTO;
import com.monami.news.dao.NewsFileDAO;
import com.monami.news.dao.NewsFileDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class NewsWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		NewsBoardDAO nbdao = new NewsBoardDAO();
		//파일이 저장될 경로
		String saveFolder = "C:\\jsp_file";
		//저장될 파일의 크기(5MB)
		int size = 1024*1024*954;

		//cos
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size,
				"UTF-8",new DefaultFileRenamePolicy());
		
		boolean fcheck1 = false;
		boolean fcheck2 = false;
		
		String systemname1 = multi.getFilesystemName("file1");
		if(systemname1 == null) {
			fcheck1 = true;
		}
		String orgname1 = multi.getOriginalFileName("file1");
		
		String systemname2 = multi.getFilesystemName("file2");
		if(systemname2 == null) {
			fcheck2 = true;
		}
		String orgname2 = multi.getOriginalFileName("file2");
		
		String news_title = multi.getParameter("news_title");
		String news_writer = multi.getParameter("news_writer");
		String news_subtit = multi.getParameter("news_subtit");
		String news_imgctt = multi.getParameter("news_imgctt");
		String news_content = multi.getParameter("news_content");
		
		NewsBoardDTO news = new NewsBoardDTO();
		news.setNews_title(news_title);
		news.setNews_writer(news_writer);
		news.setNews_subtit(news_subtit);
		news.setNews_imgctt(news_imgctt);
		news.setNews_content(news_content);
		

		int news_idx = 0;
		ActionTo transfer = new ActionTo();
		if(nbdao.insertBoard(news)) {
			NewsFileDAO fdao = new NewsFileDAO();
			 news_idx = nbdao.getLastNum(news_writer);
			if(!fcheck1) {
				NewsFileDTO file = new NewsFileDTO();
				file.setNews_idx(news_idx);
				file.setSystemname(systemname1);
				file.setOrgname(orgname1);
				
				fcheck1 = fdao.insertFile(file);
			}
			if(!fcheck2) {
				NewsFileDTO file = new NewsFileDTO();
				file.setNews_idx(news_idx);
				file.setSystemname(systemname2);
				file.setOrgname(orgname2);
				
				fcheck2 = fdao.insertFile(file);
			}
			//fcheck1, fcheck2가 true라는 뜻
			//1. 원래 파일이 존재하지 않았음
			//2. 파일이 존재했고, 위의 DB처리까지 완벽하게 성공했음
			if(fcheck1 && fcheck2) {
				transfer.setRedirect(true);
				transfer.setPath(req.getContextPath()+"/news/News_page.mo?news_idx="+news_idx);
				return transfer;
			}
		}
		transfer.setPath(req.getContextPath()+"/news/Monami_news.bo?w=f");	
		return transfer;
	}
	}
