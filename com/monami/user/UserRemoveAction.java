package com.monami.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.user.dao.UserDAO;
import com.monami.user.dao.UserDTO;

public class UserRemoveAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			UserDAO udao= new UserDAO();
	
			String user_pw=req.getParameter("user_pw");
			
			ActionTo transfer=new ActionTo();
			transfer.setRedirect(true);
			if(udao.removeUser(user_pw)) {
				
				transfer.setPath(req.getContextPath()+"/jungmin/pen/penpage.mo");
			}
			else {
				transfer.setPath(req.getContextPath()+"/jungmin/peninfo/peninfo.mo");
			}
		return transfer;
	}
	
}
