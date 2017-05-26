package kr.co.pocari.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sub")
public class SubController {

	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public void gomyPage(){
		
	}
	
}
