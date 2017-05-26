package kr.co.pocari.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.pocari.user.dto.UserDTO;
import kr.co.pocari.user.service.IUserService;

@Controller
@RequestMapping("/sub")
public class SubController {
	
	@Autowired private IUserService userService = null;

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);
	
	/*myPage 이동*/
	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public void gomyPage(){
		
	}

}
