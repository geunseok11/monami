package com.monami.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.inquiry.dao.InquiryDAO;
import com.monami.inquiry.dao.InquiryDTO;

public class InquiryViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		InquiryDAO idao = new InquiryDAO();
		int iqr_idx = Integer.parseInt(req.getParameter("iqr_idx"));
		
		InquiryDTO inquiry = idao.getDetail(iqr_idx);
	
		req.setAttribute("inquiry", inquiry);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/teamin/inquiryview.jsp");
		return transfer;
	}
}
