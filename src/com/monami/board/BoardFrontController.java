package com.monami.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.ActionTo;
import com.monami.board.NFileDownloadAction;

public class BoardFrontController extends HttpServlet{
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
				transfer = new NewsWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("NewsWriteOk:"+e);
			}
			break;
		case "/news/News_manegement.mo":
			transfer = new ActionTo();
			transfer.setPath("/jungmin/news_manegement.jsp");
			transfer.setRedirect(false);
			break;
		case "/news/Newsview.mo":
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
				System.out.println("NewsModify : "+e);
			}
			break;
		case "/news/NewsModifyOk.mo":
			try {
				transfer = new NewsModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("NewsModifyOk : "+e);
			}
			break;
		case "/event/EventWriteOk.mo":
			try {
				transfer = new EventWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EventWriteOk:"+e);
			}
			break;
		case "/event/EventView.mo":
			try {
				transfer = new EventViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("Eventview:"+e);
			}
			break;
		case "/event/EventList.mo":
			try {
				transfer = new EventBoardListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EventList:"+e);
			}
			break;
		case "/event/FileDownload.mo":
			try {
				new EFileDownloadAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EFileDownload : "+e);
			}
			break;
		case "/event/EventRemove.mo":
			try {
				transfer = new EventRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EventRemove : "+e);
			}
			break;
		case "/event/EventModify.mo":
			try {
				transfer = new EventModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EventModify : "+e);
			}
			break;
		case "/event/EventModifyOk.mo":
			try {
				transfer = new EventModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("EventModifyOk : "+e);
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
