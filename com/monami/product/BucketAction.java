package com.monami.app.product;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.product.dao.ProductDAO;
import com.monami.app.product.dao.ProductDTO;

public class BucketAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ProductDAO pdao = new ProductDAO();
		
		int prodidx = Integer.parseInt(req.getParameter("prodidx"));
		int prodcnt = Integer.parseInt(req.getParameter("prodcnt"));

		Cookie[] cookies = req.getCookies();
		String commit = req.getParameter("commit");
		String bucket = "";
		
		ActionTo transfer = new ActionTo();
		
		if(cookies != null) {
			for(Cookie c:cookies) {
				if(c.getName().equals("bucket")) {
					bucket = c.getValue();
					break;
				}
			}
		}
		
		if(commit != null) {
			PrintWriter out = resp.getWriter();
			out.println(bucket);
		}else {
			bucket += prodidx + ":" + prodcnt + "/";
			Cookie cookie = new Cookie("bucket", bucket);
			resp.addCookie(cookie);			
			transfer.setRedirect(false);
			transfer.setPath("/geunseok/BucketList.pd");
			return transfer;
		}
			
		return transfer;
	}

}
