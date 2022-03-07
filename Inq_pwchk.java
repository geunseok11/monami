package com.monami.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.iqr.dao.IqrDAO;

public class Inq_pwchk implements Action{
 @Override
public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	ActionTo transfer = new ActionTo();
	IqrDAO idao = new IqrDAO();
	
	int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
	int iqr_pw = Integer.parseInt(req.getParameter("iqr_pw"));
	
	PrintWriter out = resp.getWriter();
	if(idao.iqr_pwchk(iqr_idx)==iqr_pw) {
		//성공
		transfer.setRedirect(false);
		transfer.setPath("/taemin/inqueryview.jsp");
	}
	else {
		//실패
		out.write("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
		transfer.setRedirect(false);
		transfer.setPath("/inq_check.jsp?iqr_idx="+iqr_idx);
	}
	return transfer;
 	}
}