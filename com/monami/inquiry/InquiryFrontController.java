package com.monami.inquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.ActionTo;

public class InquiryFrontController extends HttpServlet {
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
		
		switch (command) {
		case "/inquiry/InquiryList.mo":
			try {
				transfer = new InquiryListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("InquiryList : "+e);
			}
			break;
		case "/inquiry/InquiryWrite.mo":
			transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("/doyoon/inquiry.jsp");
			break;
		case "/inquiry/InquiryWriteOk.mo":
			try {
				transfer = new InquiryWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("InquiryWriteOk : "+e);
			}
			break;
		case "/inquiry/InquiryView.mo":
			try {
				transfer=new InquiryViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("InquiryView : "+e);
			}
			break;
		case "/inquiry/replywrite.ir":
			try {
				new ReplyWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("ReplyWrite : "+e);
			}
			break;
		case "/inquiry/replyupdate.ir":
			try {
				new ReplyUpdateOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("ReplyModifyOk : "+e);
			}
			break;
		case "/inquiryReplyDeleteOk.ir":
			try {
				new ReplyDeleteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("ReplyDeleteOk : "+e);
			}
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
