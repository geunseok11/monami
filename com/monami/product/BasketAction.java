package com.monami.app.product;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.product.dao.ProductDAO;
import com.monami.app.product.dao.ProductDTO;

public class BasketAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ProductDAO pdao = new ProductDAO();

		int prodidx = Integer.parseInt(req.getParameter("prodidx"));
		int prodcnt = Integer.parseInt(req.getParameter("prodcnt"));

		Cookie[] cookies = req.getCookies();
		String commit = req.getParameter("commit");
		String basket = "";

		ActionTo transfer = new ActionTo();

		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("basket")) {
					basket = c.getValue();
					break;
				}
			}
		}

		if (commit != null) {
			PrintWriter out = resp.getWriter();
			out.println(basket);
		} else {
			basket += prodidx + ":" + prodcnt + "/";
			Cookie cookie = new Cookie("bucket", basket);
			resp.addCookie(cookie);
			transfer.setRedirect(false);
			transfer.setPath("/geunseok/BasketList.pd");
			return transfer;
		}

		return transfer;
	}

}
