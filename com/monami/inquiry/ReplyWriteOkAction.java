package com.monami.iqr;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.iqr.dao.AnswerDTO;
import com.monami.iqr.dao.IqrDAO;
import com.monami.iqr.dao.IqrDTO;

public class ReplyWriteOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
		String iqr_answer = req.getParameter("iqr_answer");
		
		IqrDTO newReply = new IqrDTO();
		newReply.setIqr_idx(iqr_idx);
		newReply.setIqr_answer(iqr_answer);
		
		IqrDAO idao = new IqrDAO();
		PrintWriter out = resp.getWriter();
		if(idao.insertReply(newReply)) {
			out.write("<script>alert('답변 등록 성공!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/InquiryView.ir?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		else {
			out.write("<script>alert('답변 등록 실패!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/inquiryview.ir?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		return null;
	}
	
	
}
