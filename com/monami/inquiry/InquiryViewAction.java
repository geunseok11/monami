package com.monami.inquiry;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.inquiry.dao.InquiryDAO;
import com.monami.inquiry.dao.InquiryDTO;
import com.monami.reply.dao.ReplyDAO;
import com.monami.reply.dao.ReplyDTO;
import com.monami.user.dao.AdminDTO;

public class InquiryViewAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		InquiryDAO idao = new InquiryDAO();
		ReplyDAO rdao = new ReplyDAO();
		int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
		HttpSession session = req.getSession();

		InquiryDTO inquiry = idao.getDetail(iqr_idx);
		ReplyDTO reply = rdao.getDetail(iqr_idx);
		req.setAttribute("inquiry", inquiry);
		req.setAttribute("reply", reply);
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/teamin/Inquiryview.jsp");
		return transfer;
	}
}
