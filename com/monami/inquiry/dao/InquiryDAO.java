package com.monami.inquiry.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.monami.mybatis.SqlMapConfig;

public class InquiryDAO {
	SqlSession sqlsession;
	
	public InquiryDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public List<InquiryDTO> getInquiryList(int startRow, int pageSize, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<InquiryDTO> result;
		datas.put("startRow", startRow);
		datas.put("pageSize", pageSize);
		
		if(keyword == null) {
			result = sqlsession.selectList("Inquiry.getInquiryList",datas);
		}
		else {
			datas.put("keyword", keyword);
			System.out.println(datas);
			result = sqlsession.selectList("Inquiry.getInquiryListWithKey",datas);
		}
		return result;
	}
	
	public int getInquiryCnt() {
		return sqlsession.selectOne("Inquiry.getInquiryCnt");
	}

	public boolean insertInquiry(InquiryDTO inquiry) {
		return 1 == sqlsession.insert("Inquiry.insertInquiry",inquiry);
	}
	
	public InquiryDTO getDetail(int iqr_idx) {
		return sqlsession.selectOne("Inquiry.getDetail",iqr_idx);
	}

	public int getLastNum(String iqr_writer) {
		return sqlsession.selectOne("Inquiry.getLastNum",iqr_writer);
	}

}
