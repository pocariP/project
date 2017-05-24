/*
 * ***************************************
 * @source      : UserController.java
 * @description : "/user"로 오면 기능 처리를 해주는 컨트롤러
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */

package kr.co.pocari.user.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.pocari.common.dto.ResponseDTO;
import kr.co.pocari.user.dto.UserDTO;
import kr.co.pocari.user.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired private IUserService userService = null;
	
	/**
	 * 회원가입 페이지로 이동
	 */
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void goJoin() {
		//logger.debug("==>나잘들어왔어요~");
	}
	
	/**
	 * 회원가입하기
	 */
	@ResponseBody
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public Integer doJoin(UserDTO userDTO) {
		logger.debug("dto==>{}" + userDTO);
		try{
			userService.write(userDTO); // 회원정보 DB입력
			userService.emailTrim(userDTO); // 이메일 ',' 삭제 메소드
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	
	/**
	 * 로그인
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void goLogin(UserDTO userDTO, Model model) {
		logger.debug("==>dto" + userDTO);
		model.addAttribute("lgnId", userDTO.getLgnId());
	}
	
	/**
	 * 로그인 (ID 중복체크)
	 */
	@ResponseBody
	@RequestMapping(value="/id/available", method=RequestMethod.POST)
	public ResponseDTO checkID(String lgnId){
		ResponseDTO responseDTO = new ResponseDTO();
		
		boolean result = userService.checkId(lgnId);
		logger.debug("==>"+result);
		if(result == false){
			responseDTO.setCode(-1);
			responseDTO.setMsg("이미 존재하는 아이디 입니다.");
		} else {
			responseDTO.setCode(99);
			responseDTO.setMsg("사용할 수 있는 아이디 입니다.");
		}	
		return responseDTO;
	}
	
	/**
	 * 아이디/비밀번호찾기
	 */
	@RequestMapping(value = "/findInfo", method = RequestMethod.GET)
	public void gofindInfo() {
		
	}
	
	@RequestMapping(value = "/pwResult", method = RequestMethod.POST)
	public void dofindInfo(UserDTO userDTO) {
		logger.debug("==>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>dto{}", userDTO);
		userService.pwUpdate(userDTO);
	}
	
	/**
	 * 아이디찾기 결과
	 */
	@RequestMapping(value = "/idResult", method = RequestMethod.POST)
	public void findId(UserDTO userDTO, @RequestParam("email1") String email1, @RequestParam("email2") String email2, Model model) {
		userDTO.setEmail(email1 + "@" + email2);
//		logger.debug("이름은 잘 들어왔나요? ==>" + userDTO.getName());
//		logger.debug("이메일 잘 들어왔나요? ==>" + userDTO.getEmail());
		List<UserDTO> list = userService.findId(userDTO);
		model.addAttribute("findId", list);
	}
	
	/**
	 * 비밀번호찾기 결과
	 */
/*	@RequestMapping(value = "/pwResult", method = RequestMethod.GET)
	public void findPw(UserDTO userDTO, @RequestParam("pwEmail1") String email1, @RequestParam("pwEmail2") String email2, Model model) {
//		logger.debug("아이디는 잘 들어왔나요? ==>" + userDTO.getLgnId());
//		userDTO.setLgnId(lgnId);
//		logger.debug("이름은 잘 들어왔나요? ==>" + userDTO.getName());
//		userDTO.setName(name);
		logger.debug("이메일은 잘 들어왔나요? ==>" + userDTO.getEmail());
		userDTO.setEmail(email1 + "@" + email2);
		userDTO = userService.findPw(userDTO);
		model.addAttribute("findPw", userDTO);
	}*/
	
	/**
	 * 비밀번호 찾은 후 변경
	 */
	@ResponseBody
	@RequestMapping(value = "/pw/check", method = RequestMethod.POST)
	public Integer findPw(UserDTO userDTO) {
//		logger.debug("==> 잘타고있어요~");
//		logger.debug("==> 아이디 잘들어왔나요?" + userDTO.getLgnId());
//		logger.debug("==> 이름 잘들어왔나요?" + userDTO.getName());
//		logger.debug("이메일은 잘 들어왔나요? ==>" + userDTO.getEmail());
		try {
			UserDTO dto = userService.findPw(userDTO);
			logger.debug("끝났어요~ ==>");
			if (dto != null) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	//회원가입결과 테스트 부분
	@RequestMapping(value = "/joinSuccess", method = RequestMethod.GET)
	public void joinSuccess() {
	}
}
