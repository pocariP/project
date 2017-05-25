/*
 * ***************************************
 * @source      : UserDetailService.java
 * @description : 
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */


package kr.co.pocari.common.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.co.pocari.user.dto.UserDTO;
import kr.co.pocari.user.service.IUserService;


public class UserDetailService implements UserDetailsService {
	private static final Logger logger = LoggerFactory.getLogger( UserDetailService.class );

	@Autowired private IUserService userServiceImpl = null;

	public UserDetails loadUserByUsername(String lgnId) throws UsernameNotFoundException {
		UserDTO userDTO = null;
		try{
			logger.debug("id==>"+lgnId);
			userDTO = userServiceImpl.viewByLgnId(lgnId);
			
			if( userDTO == null ) {
				throw new BadCredentialsException("ID나 비밀번호가 잘못되었습니다.");
			}
		}catch(DataAccessException dae){
			dae.printStackTrace();
			logger.error("[ERROR]==>", dae);
			throw new DataAccessException("ERROR") {
				private static final long serialVersionUID = 1L;
			};
		}
		
		return new UserDetail(userDTO);
	}
	
}
