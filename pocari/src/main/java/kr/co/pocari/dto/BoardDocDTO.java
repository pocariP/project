package kr.co.pocari.dto;

import java.sql.Date;

public class BoardDocDTO {

	private Integer docId;
	private Integer userId;
	private Integer cntRead;
	
	private String title;
	private String boardContents;
	
	private Date regDt;
	
	public BoardDocDTO() {
	}

	public Integer getDocId() {
		return docId;
	}

	public void setDocId(Integer docId) {
		this.docId = docId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCntRead() {
		return cntRead;
	}

	public void setCntRead(Integer cntRead) {
		this.cntRead = cntRead;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBoardContents() {
		return boardContents;
	}

	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	@Override
	public String toString() {
		return "BoardDocDTO [docId=" + docId + ", userId=" + userId + ", cntRead=" + cntRead + ", title=" + title
				+ ", boardContents=" + boardContents + ", regDt=" + regDt + "]";
	}
}
