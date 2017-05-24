/*
 * ***************************************
 * @source      : IUserService.java
 * @description : 
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */


package kr.co.pocari.user.service;

import java.util.List;

import kr.co.pocari.user.dto.UserDTO;

public interface IUserService {
	
	public void write(UserDTO userDTO);
	public void emailTrim(UserDTO userDTO);
	public UserDTO viewByLgnId(String lgnId);
	public List<UserDTO> findId(UserDTO userDTO);
	public UserDTO findPw(UserDTO userDTO);
	public UserDTO pwSelect(UserDTO userDTO);
	public void pwUpdate(UserDTO userDTO);
	public boolean checkId(String lgnId);
}
