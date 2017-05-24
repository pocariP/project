/*
 * ***************************************
 * @source      : UserServiceImpl.java
 * @description : 
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */


package kr.co.pocari.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.pocari.user.dao.IUserDao;
import kr.co.pocari.user.dto.UserDTO;
import kr.co.pocari.user.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired private IUserDao userDao = null;
	
	@Override
	public void write(UserDTO userDTO) { // 회원가입
		userDao.insertData(userDTO);
	}
	
	@Override
	public void emailTrim(UserDTO userDTO) { // 회원가임(이메일 ',' 제거)
		userDao.emailTrim(userDTO);
	}

	@Override
	public UserDTO viewByLgnId(String lgnId) { // 로그인
		return userDao.selectOneByLgnId(lgnId);
	}

	@Override
	public List<UserDTO> findId(UserDTO userDTO) { // 아이디 찾기
		List<UserDTO> list = userDao.findId(userDTO);
		return list;
	}

	@Override
	public UserDTO findPw(UserDTO userDTO) { // 비밀번호 찾기
		return userDao.findPw(userDTO);
	}

	@Override
	public UserDTO pwSelect(UserDTO userDTO) {
		return userDao.pwSelect(userDTO);
	}

	@Override
	public void pwUpdate(UserDTO userDTO) {
		userDao.pwUpdate(userDTO);
	}
	
	@Override
	public boolean checkId(String lgnId) {
		UserDTO userDTO = this.viewByLgnId(lgnId);
		return false;
	}

}
