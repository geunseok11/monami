package com.monami.board.dao;

import org.apache.ibatis.session.SqlSession;

import com.monami.mybatis.SqlMapConfig;

public class VBoardDAO {
SqlSession sqlsession;
	
	public VBoardDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	public boolean insertVideo(VBoardDTO vdto) {
		return sqlsession.insert("insertVideo",vdto)==1;
	}

}
