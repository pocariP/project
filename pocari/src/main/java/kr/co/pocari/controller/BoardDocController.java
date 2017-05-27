package kr.co.pocari.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.pocari.dto.BoardDocDTO;
import kr.co.pocari.user.service.IUserService;

@Controller
@RequestMapping("/doc")
public class BoardDocController {
	
	@Autowired private IUserService userService = null;

	private static final Logger logger = LoggerFactory.getLogger(BoardDocController.class);
	
	/*myPage 이동*/
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void write(Model model, BoardDocDTO boardDocDTO){
	}
}
