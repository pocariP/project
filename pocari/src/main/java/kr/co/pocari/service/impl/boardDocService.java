package kr.co.pocari.service.impl;

import java.util.Iterator;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

//import kr.co.pocari.common.file.FileService;
import kr.co.pocari.dao.IBoardDocDAO;
import kr.co.pocari.dto.BoardDocDTO;
import kr.co.pocari.service.IBoardDocService;

public class boardDocService implements IBoardDocService {

	@Autowired private IBoardDocDAO boardDocDAO = null;
//	@Autowired private FileService fileService = null;
	
	@Override
	public void write(BoardDocDTO boardDocDTO, HttpSession httpSession) {
		
		Integer result = boardDocDAO.insertData(boardDocDTO);
		
//		for (MultipartFile file : boardDocDTO.get) {
//		}
		
	}

	
}
