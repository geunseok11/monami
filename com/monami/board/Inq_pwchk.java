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
	try {
		out = resp.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(iqr_pw!=4) {
		out.write("<script>alert('비밀번호는 4자리 입니다.');</script>");
	}
	else {
		if(idao.iqr_pwchk(iqr_idx)==iqr_pw) {
			//성공
			transfer.setRedirect(false);
			transfer.setPath(req.getContextPath()+"문의사항 뷰단");
		}
		else {
			//실패
			transfer.setRedirect(false);
			transfer.setPath(req.getContextPath()+"다시 체크하기");
		}		
	}
	return transfer;
 	}
}