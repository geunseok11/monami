package com.monami.iqr.dao;

import org.apache.ibatis.session.SqlSession;

import com.monami.mybatis.SqlMapConfig;

public class IqrDAO {
SqlSession sqlsession;
	
	public IqrDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public int iqr_pwchk(int iqr_idx) {
		return sqlsession.selectOne("Iqr.iqr_pwchk", iqr_idx);
		
	}
}
