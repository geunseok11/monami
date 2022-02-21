package com.monami.board.dao;

import org.apache.ibatis.session.SqlSession;

import com.monami.mybatis.SqlMapConfig;

public class EBoardDAO {

	SqlSession sqlsession;
	
	public EBoardDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	
}
