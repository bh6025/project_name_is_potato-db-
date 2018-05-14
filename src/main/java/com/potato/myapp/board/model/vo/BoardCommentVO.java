package com.potato.myapp.board.model.vo;

public class BoardCommentVO {

	private	int		comment_num;
	private String	comment_content;
	private	int		board_numm;
	private	String	comment_writer, comment_date;
	
	public BoardCommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardCommentVO(int comment_num, String comment_content, int board_numm, String comment_writer,
			String comment_date) {
		super();
		this.comment_num = comment_num;
		this.comment_content = comment_content;
		this.board_numm = board_numm;
		this.comment_writer = comment_writer;
		this.comment_date = comment_date;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public int getBoard_numm() {
		return board_numm;
	}
	public void setBoard_numm(int board_numm) {
		this.board_numm = board_numm;
	}
	public String getComment_writer() {
		return comment_writer;
	}
	public void setComment_writer(String comment_writer) {
		this.comment_writer = comment_writer;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
	
	
}
