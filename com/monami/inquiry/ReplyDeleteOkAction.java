package com.monami.iqr;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.iqr.dao.IqrDAO;

public class ReplyDeleteOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		IqrDAO idao = new IqrDAO();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String iqr_idx = req.getParameter("iqr_idx");
		
		PrintWriter out = resp.getWriter();
		
		if(idao.deleteReply(iqr_idx)) {
			out.write("<script>alert('"+iqr_idx+"번 답글 삭제 성공!');");
		}
		else {
			out.write("<script>alert('"+iqr_idx+"번 답글 삭제 실패!');");
		}
		out.write("location.href='"+req.getContextPath()+"/inquiry/InquiryView.ir?iqr_idx="+iqr_idx+"'");
		out.write("</script>");
		return null;
	}
	
}