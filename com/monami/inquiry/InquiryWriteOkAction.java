package com.monami.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.inquiry.dao.InquiryDAO;
import com.monami.inquiry.dao.InquiryDTO;

public class InquiryWriteOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		InquiryDAO idao = new InquiryDAO();
		
		String iqr_catagory = req.getParameter("iqr_catagory");
		String iqr_writer = req.getParameter("iqr_writer");
		String iqr_email = req.getParameter("iqr_email");
		String iqr_phone = req.getParameter("iqr_phone");
		String iqr_title = req.getParameter("iqr_title");
		String iqr_content = req.getParameter("iqr_content");
		
		InquiryDTO inquiry = new InquiryDTO();
		inquiry.setIqr_catagory(iqr_catagory);
		inquiry.setIqr_writer(iqr_writer);
		inquiry.setIqr_email(iqr_email);
		inquiry.setIqr_phone(iqr_phone);
		inquiry.setIqr_title(iqr_title);
		inquiry.setIqr_content(iqr_content);
		
		if (idao.insertInquiry(inquiry)) {
			
		}else {
			
		}
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		transfer.setPath(req.getContextPath()+"/inquiry/InquiryList.mo");
		return transfer;
	}
}
