package kr.co.pocari.dao.impl;

import kr.co.pocari.common.dao.support.BaseDaoSupport;
import kr.co.pocari.dao.IBoardDocDAO;
import kr.co.pocari.dto.BoardDocDTO;

public class BoardDocDAOImpl extends BaseDaoSupport implements IBoardDocDAO {

	@Override
	public Integer insertData(BoardDocDTO boardDocDTO) {
		return getSqlSession().insert("BoardDoc.insertData", boardDocDTO);
	}

}
