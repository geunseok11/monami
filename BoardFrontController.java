package com.monami.board;

import java.io.IOException;
import java.io.PrintWriter;

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
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doProcess(req, resp);
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
		case "":
			transfer = new ActionTo();
			transfer.setPath("문의사항 뷰단");
			transfer.setRedirect(false);
			break;
//		case "/board/event_write.mo":
//			transfer = new ActionTo();
//			transfer.setRedirect(false);
//			transfer.setPath("videomodify.jsp");
//			break;
//		case "/board/event_writeok.mo":
//			try {transfer = new EBoardWriteOkAction().execute(req,resp);}
//			catch (Exception e) {System.out.println("event_writeok : "+e);}
//			break;
		case "/board/VBoardModify.mo":
			try {transfer = new VBoardModifyAction().execute(req,resp);}
			catch (Exception e) {System.out.println("VBoardModify : "+e);}
			break;
		case "/board/Videolist.mo":
			try {
				transfer = new VideolistAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("Videolist : "+e);
			}
			break;
		case "/board/VideoWriteOk.mo":
			try {
				transfer = new VBoardWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("VideoWriteOk :" +e);
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
