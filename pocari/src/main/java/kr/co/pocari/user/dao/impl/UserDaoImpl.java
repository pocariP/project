/*
 * ***************************************
 * @source      : UserDaoImpl.java
 * @description : xml로 보내주기 위한 Dao 클래스
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */


package kr.co.pocari.user.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import kr.co.pocari.common.dao.support.BaseDaoSupport;
import kr.co.pocari.user.dao.IUserDao;
import kr.co.pocari.user.dto.UserDTO;

@Repository
public class UserDaoImpl extends BaseDaoSupport implements IUserDao {

	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	
	@Override
	public void insertData(UserDTO userDTO) { // 회원가입
		getSqlSession().insert("User.insert", userDTO);
	}

	@Override
	public void emailTrim(UserDTO userDTO) { // 회원가입(이메일 ',' 제거)
		getSqlSession().update("User.emailTrim", userDTO);
	}
	
	@Override
	public UserDTO selectOneByLgnId(String lgnId) { // 로그인
		return getSqlSession().selectOne("User.selectOneByLgnId", lgnId);
	}

	@Override
	public List<UserDTO> findId(UserDTO userDTO) { // 아이디 찾기
//		logger.debug("잘타나요?? ==>");
		List<UserDTO> list = getSqlSession().selectList("User.selectFindId", userDTO);
//		logger.debug("잘처리하고왔나요?? ==>{}", list);
		return list;
	}

	@Override
	public UserDTO findPw(UserDTO userDTO) { // 비밀번호 찾기
		return getSqlSession().selectOne("User.selectFindPw", userDTO);
	}

	@Override
	public UserDTO pwSelect(UserDTO userDTO) { // 비밀번호 변경(유저 정보 담기)
		return getSqlSession().selectOne("User.pwSelect", userDTO);
	}

	@Override
	public void pwUpdate(UserDTO userDTO) { // 비밀번호 변경
		getSqlSession().update("User.pwUpdate", userDTO);
	}

}
