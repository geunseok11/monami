package com.monami.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.user.dao.AdminDAO;
import com.monami.user.dao.AdminDTO;

public class AdminLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		AdminDAO Adao = new AdminDAO();
		String userid = req.getParameter("user_id");
		String userpw = req.getParameter("user_pw");
		HttpSession session = req.getSession();
		
		AdminDTO adminUser = Adao.login(userid, userpw);
		ActionTo transfer = new ActionTo();
		if(adminUser != null) {
			session.setAttribute("adminUser", adminUser);
			transfer.setRedirect(false);
			transfer.setPath("/inquiry/InquiryList.ir?admin=t");
		}
		else {
			transfer.setRedirect(false);
			transfer.setPath("/inquiry/InquiryList.ir?admin=f");
		}
		return transfer;
	}
}