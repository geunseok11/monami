package com.monami.inquiry;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.reply.dao.ReplyDAO;

public class ReplyUpdateOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;sharset=utf-8");
		
		ReplyDAO rdao = new ReplyDAO();
		
		String answer = req.getParameter("answer");
		int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
		
		PrintWriter out = resp.getWriter();
		
		if(rdao.updateReply(iqr_idx,answer)) {
			out.write("<script>alert('답변 수정 성공!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/InquiryView.ir?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		else {
			out.write("<script>alert('답변 수정 실패!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/inquiryview.ir?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		return null;
	}
	
	
}
