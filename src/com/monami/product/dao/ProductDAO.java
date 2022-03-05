package com.monami.product.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.monami.mybatis.SqlMapConfig;

public class ProductDAO {
	SqlSession sqlsession;
	
	public ProductDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	public int getProductCnt(String keyword) {
		int result = 0;
		if(keyword != null || keyword != "") {
			result  =sqlsession.selectOne("Product.getSearchCnt", keyword);
		}
		else {
			result =  sqlsession.selectOne("Product.getProductCnt");
		}	
		return result;
	}

	public List<ProductDTO> getProductList(int startRow, int pageSize, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<ProductDTO> result;
		datas.put("startRow", startRow);
		datas.put("pageSize", pageSize);
		if(keyword == null) {
			result = sqlsession.selectList("Product.getProductList",datas);
		}
		else {
			datas.put("keyword", keyword);
			result = sqlsession.selectList("Product.getProductListWithKey",datas);
		}
		return result;
	}

}
