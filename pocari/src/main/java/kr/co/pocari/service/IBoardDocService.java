package kr.co.pocari.service;

import javax.servlet.http.HttpSession;

import kr.co.pocari.dto.BoardDocDTO;

public interface IBoardDocService {

	public void write(BoardDocDTO boardDocDTO, HttpSession httpSession);
}
