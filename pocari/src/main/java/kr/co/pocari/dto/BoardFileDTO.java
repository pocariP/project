package kr.co.pocari.dto;

import java.sql.Date;

public class BoardFileDTO {

	private Integer fileId;
	private Integer docId;
	private Integer size;
	
	private String orgFileName;
	private String newFileName;
	private String fileType;
	private String path;
	private String ext;
	
	private Date regDt;
	
	public BoardFileDTO() {
	}

	public Integer getFileId() {
		return fileId;
	}

	public void setFileId(Integer fileId) {
		this.fileId = fileId;
	}

	public Integer getDocId() {
		return docId;
	}

	public void setDocId(Integer docId) {
		this.docId = docId;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getNewFileName() {
		return newFileName;
	}

	public void setNewFileName(String newFileName) {
		this.newFileName = newFileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	@Override
	public String toString() {
		return "BoardFileDTO [fileId=" + fileId + ", docId=" + docId + ", size=" + size + ", orgFileName=" + orgFileName
				+ ", newFileName=" + newFileName + ", fileType=" + fileType + ", path=" + path + ", ext=" + ext
				+ ", regDt=" + regDt + "]";
	}
}
