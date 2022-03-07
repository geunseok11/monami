package com.monami.app.product;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.product.dao.ProductDAO;
import com.monami.app.product.dao.ProductDTO;

public class BasketOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ProductDAO pdao = new ProductDAO();
		// UserDAO udao = new UserDAO();
		// UserDTO user = new UserDTO();
		HttpSession session = req.getSession();
		String cookie = req.getHeader("Cookie");
		String bucket = "";
		int prod_idx = 0;
		// String userid = ((UserDTO)session.getAttribute("loginUser")).getUserid();

		// user = udao.getDetail(userid);

		if (cookie != null) {
			Cookie[] cookies = req.getCookies();
			for (int i = 0; i < cookies.length; i += 2) {
				if (cookies[i].getName().equals("bucket")) {
					bucket = cookies[i].getValue();
				}
			}
		}
		String[] list = bucket.split("/");
		ProductDTO product = new ProductDTO();

		ArrayList<ProductDTO> productlist = new ArrayList<ProductDTO>();

		if (list != null) {
			for (int i = 0; i < list.length; i++) {
				product = pdao.getBasket(Integer.parseInt(list[i].substring(0, 1)));
				productlist.add(product);
			}
		}

		req.setAttribute("cookielist", productlist);
		// req.setAttribute("user", user);

		ActionTo transfer = new ActionTo();

		transfer.setRedirect(false);
		transfer.setPath("/geunseok/order.jsp");

		return transfer;
	}

}
