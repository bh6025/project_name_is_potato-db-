package com.potato.myapp.board.model.vo;

public class BoardVO {
	private	int		board_num, board_numm, comment_count;
	private	String	board_title, board_content, board_date, user_id;
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardVO(int board_num, int board_numm, int comment_count, String board_title, String board_content,
			String board_date, String user_id) {
		super();
		this.board_num = board_num;
		this.board_numm = board_numm;
		this.comment_count = comment_count;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
		this.user_id = user_id;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public int getBoard_numm() {
		return board_numm;
	}
	public void setBoard_numm(int board_numm) {
		this.board_numm = board_numm;
	}
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", board_numm=" + board_numm + ", comment_count=" + comment_count
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_date=" + board_date
				+ ", user_id=" + user_id + "]";
	}

	
}
