package kr.co.pocari.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.pocari.user.dto.UserDTO;

@Controller
@RequestMapping("/sub")
public class SubController {

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);
	
	/*myPage 이동*/
	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public void gomyPage(){
		
	}

	/*myPage 데이터가져오기*/
	@ResponseBody
	@RequestMapping(value="/myPage", method=RequestMethod.POST)
	public void domyPage(UserDTO userDTO, Model model){
		logger.debug("==>" +userDTO);
		model.addAttribute("list", userDTO);
	}
	

}
