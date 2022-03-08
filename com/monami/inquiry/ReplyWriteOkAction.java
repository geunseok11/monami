package com.monami.inquiry;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.reply.dao.ReplyDAO;
import com.monami.reply.dao.ReplyDTO;
import com.monami.user.dao.UserDTO;

public class ReplyWriteOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
		String admin_id = ((UserDTO)req.getSession().getAttribute("loginUser")).getUser_id();
		String answer = req.getParameter("answer");
		ReplyDTO newReply = new ReplyDTO();
		newReply.setIqr_idx(iqr_idx);
		newReply.setAnswer(answer);
		newReply.setAdmin_id(admin_id);
		
		
		ReplyDAO rdao = new ReplyDAO();
		PrintWriter out = resp.getWriter();
		if(rdao.insertReply(newReply)) {
			out.write("<script>alert('답변 등록 성공!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/InquiryView.mo?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		else {
			out.write("<script>alert('답변 등록 실패!');");
			out.write("location.href='"+req.getContextPath()+"/inquiry/inquiryview.mo?iqr_idx="+iqr_idx+"'");
			out.write("</script>");
		}
		return null;
	}
	
	
}
