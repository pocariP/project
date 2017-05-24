/*
 * ***************************************
 * @source      : ResponseDTO.java
 * @description : ajax를 통하여 아이디 중복체크하는 클래스
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */

package kr.co.pocari.common.dto;

public class ResponseDTO {
	private int code = 99; 	// 99 : 성공
	private String msg = null;
	
	@Override
	public String toString() {
		return "ResponseDTO [code=" + code + ", msg=" + msg + "]";
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
