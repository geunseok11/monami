package com.monami.app.product;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.product.dao.ProductDAO;
import com.monami.app.product.dao.ProductDTO;

public class BasketListAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ProductDAO pdao = new ProductDAO();
		String cookie = req.getHeader("Cookie");
		String basket = "";
		int prod_idx = 0;

		if (cookie != null) {
			Cookie[] cookies = req.getCookies();
			for (int i = 0; i < cookies.length; i += 2) {
				if (cookies[i].getName().equals("basket")) {
					basket = cookies[i].getValue();
				}
			}
		}
		String[] list = basket.split("/");
		ProductDTO product = new ProductDTO();
		ArrayList<ProductDTO> basketlist = new ArrayList<ProductDTO>();
		if (list != null) {
			for (int i = 0; i < list.length; i++) {
				product = pdao.getBasket(Integer.parseInt(list[i].substring(0, 1)));
				basketlist.add(product);
			}
		}

		req.setAttribute("basketlist", basketlist);

		ActionTo transfer = new ActionTo();

		transfer.setRedirect(false);
		transfer.setPath("/geunseok/basket.jsp");

		return transfer;
	}

}
