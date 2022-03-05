package com.monami.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.user.dao.UserDAO;
import com.monami.user.dao.UserDTO;

public class UserLoginOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO udao=new UserDAO();
		String user_id=req.getParameter("user_id1");
		String user_pw=req.getParameter("user_pw1");
		HttpSession session =req.getSession();
		
		UserDTO loginUser=udao.login(user_id,user_pw);
		ActionTo transfer=new ActionTo();
		if(loginUser !=null) {
			
			session.setAttribute("loginUser",loginUser);
			transfer.setRedirect(false);
			transfer.setPath("/jungmin/news_manegement.jsp");
		}
		else {			
			
			transfer.setRedirect(false);
			transfer.setPath("/jungmin/news_manegement.jsp?login=f");
		}
		return transfer;
	}
	
}
