/*
 * ***************************************
 * @source      : IUserDao.java
 * @description : UserDaoImpl에서 상속받기 위한 인터페이스
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */

package kr.co.pocari.user.dao;

import java.util.List;

import kr.co.pocari.user.dto.UserDTO;

public interface IUserDao {
	public void insertData(UserDTO userDTO);
	public void emailTrim(UserDTO userDTO);
	public UserDTO selectOneByLgnId(String lgnId);
	public List<UserDTO> findId(UserDTO userDTO);
	public UserDTO findPw(UserDTO userDTO);
	public UserDTO pwSelect(UserDTO userDTO);
	public void pwUpdate(UserDTO userDTO);
	
}
