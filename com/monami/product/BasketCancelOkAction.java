package com.monami.app.product;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;

public class BasketCancelOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String cookie = req.getHeader("Cookie");
		String prodidx = req.getParameter("prodidx");
		String prodcnt = req.getParameter("prodcnt");
		String keyword = prodidx + ":" + prodcnt;

		String basket = "";
		String value = "";

		ActionTo transfer = new ActionTo();

		if (cookie != null) {
			Cookie[] cookies = req.getCookies();

			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("basket")) {
					basket = cookies[i].getValue();
					String[] prod = cookies[i].getValue().split("/");
					for (int j = 0; j < prod.length; j++) {
						if (!prod[i].equals(keyword)) {
							value += prod[i];
						}
					}
				}
			}
			Cookie changeCookie = new Cookie("basket", value);
			resp.addCookie(changeCookie);
			transfer.setRedirect(false);
			transfer.setPath("/geunseok/BasketList.pd");
			return transfer;
		}

		return null;
	}

}
