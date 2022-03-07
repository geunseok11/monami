package com.monami.app.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.action.ActionTo;
import com.monami.app.product.dao.OrderDAO;
import com.monami.app.product.dao.OrderDTO;
import com.monami.app.product.dao.ProductDAO;
import com.monami.app.product.dao.ProductDTO;

public class OrderOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ProductDAO pdao = new ProductDAO();
		HttpSession session = req.getSession();

		// String userid = ((UserDTO)session.getAttribute("loginUser")).getUserid();
		int prodidx = Integer.parseInt(req.getParameter("prodindx"));
		OrderDAO odao = new OrderDAO();
		OrderDTO order = new OrderDTO();
		order.setProdname(req.getParameter("prodname"));
		order.setProdprice(Integer.parseInt(req.getParameter("prodprice")));
		order.setUserid(req.getParameter("userid"));
		order.setUsername(req.getParameter("username"));
		order.setUseraddr(req.getParameter("useraddr"));
		order.setOrderitem(req.getParameter("orderitem"));
		order.setOrderpay(Integer.parseInt(req.getParameter("orderpay")));
		order.setOrder_count(Integer.parseInt(req.getParameter("ordercnt")));
		order.setOrderstatus("배송준비중");

		req.setAttribute("order", order);

		ActionTo transfer = new ActionTo();
		if (odao.insertOrder(order)) {
			pdao.updateCount(Integer.parseInt(req.getParameter("ordercnt")), prodidx);
			transfer.setRedirect(true);
			transfer.setPath(req.getContextPath() + "/geunseok/complite.jsp");
		} else {
			transfer.setRedirect(true);
			transfer.setPath(req.getContextPath() + "/bucket.jsp");
		}
		return transfer;

	}

}
