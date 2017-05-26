package kr.co.pocari.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sub")
public class SubController {

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);
	
	/*myPage 이동*/
	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public void gomyPage(){
		
	}
	
	/*myPage 데이터가져오기*/
	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public void domyPage(){
		
	}
	
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void goWrite(){
		
	}
}
