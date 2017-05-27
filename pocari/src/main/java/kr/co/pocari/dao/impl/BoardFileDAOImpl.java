package kr.co.pocari.dao.impl;

import kr.co.pocari.common.dao.support.BaseDaoSupport;
import kr.co.pocari.dao.IBoardFileDAO;
import kr.co.pocari.dto.BoardFileDTO;

public class BoardFileDAOImpl extends BaseDaoSupport implements IBoardFileDAO{

	@Override
	public void insertData(BoardFileDTO boardFileDTO) {
		getSqlSession().insert("BoardFile.insertData", boardFileDTO);
	}

}
