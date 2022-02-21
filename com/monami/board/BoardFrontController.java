package com.monami.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.SerialVersionUID;

import com.monami.board.VBoardWriteOkAction;
import com.monami.action.Action;
import com.monami.action.ActionTo;

public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();		
		String contextPath = req.getContextPath();		
		String command = requestURI.substring(contextPath.length());
		ActionTo transfer = null;
		
		switch(command) {
		case "/board/inq_pwchk.mo":
			try {transfer = new Inq_pwchk().execute(req, resp);}
			catch (Exception e) {System.out.println("inq_pwchk : "+e);}
			break;
		case "/board/event_write.mo":
			transfer = new ActionTo();
			transfer.setRedirect(false);
			transfer.setPath("이벤트 글쓰는 게시판 주소");
			break;
		case "/board/event_writeok.mo":
			try {transfer = new VBoardWriteOkAction().execute(req,resp);}
			catch (Exception e) {System.out.println("event_writeok : "+e);}
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
