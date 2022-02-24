package com.monami.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.ActionTo;
import com.monami.news.NFileDownloadAction;

public class NewsFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();		// ??????/user/UserJoin.us
		String contextPath = req.getContextPath();		// ??????
		String command = requestURI.substring(contextPath.length());//	/user/UserJoin.us
		ActionTo transfer = null;
		
		switch(command) {
		case "/news/NewsWriteOk.mo":
			try {
				transfer = new NewsWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("NewsWriteOk:"+e);
			}
			break;
		case "/news/News_manegement.mo":
			transfer = new ActionTo();
			transfer.setPath("/jungmin/news_manegement.jsp");
			transfer.setRedirect(false);
			break;
		case "/news/News_page.mo":
			try {
				transfer = new NewsViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("Newsview:"+e);
			}
			break;
		case "/news/FileDownload.mo":
			try {
				new NFileDownloadAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("FileDownload : "+e);
			}
			break;
		case "/news/NewsBoardList.mo":
			try {
				transfer = new NewsBoardListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("NewsBoardList:"+e);
			}
			break;
		case "/news/NewsRemove.mo":
			try {
				transfer = new NewsRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("NewsRemove : "+e);
			}
			break;
		case "/news/NewsModify.mo":
			try {
				transfer = new NewsModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("BoardModify : "+e);
			}
			break;
		case "/news/NewsModifyOk.mo":
			try {
				transfer = new NewsModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("BoardModifyOk : "+e);
			}
			break;
		}
	

	
	
		if(transfer != null) {
			if(transfer.isRedirect()) {
				resp.sendRedirect(transfer.getPath());
			}
			else {
				RequestDispatcher disp = req.getRequestDispatcher(transfer.getPath());
				disp.forward(req, resp);
			}
		}
	}
}
