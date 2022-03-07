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
		String idx = req.getParameter("prod_idx");
		String cnt = req.getParameter("prod_count");

		int prodidx = Integer.parseInt(idx);
		int prodcnt = Integer.parseInt(cnt);

		System.out.println("idx" + prodidx);

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
			Cookie cookie = new Cookie("basket", basket);
			resp.addCookie(cookie);
			transfer.setRedirect(false);
			transfer.setPath("/jungmin/peninfo/peninfo.jsp");
			return transfer;
		}

		return transfer;
	}

}
