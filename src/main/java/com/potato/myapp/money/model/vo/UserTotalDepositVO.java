package com.potato.myapp.money.model.vo;

public class UserTotalDepositVO {
	private String 	user_id, date ;
	private double		total_deposit;
	
	public UserTotalDepositVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserTotalDepositVO(String user_id, String date, double total_deposit) {
		super();
		this.user_id = user_id;
		this.date = date;
		this.total_deposit = total_deposit;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public double getTotal_deposit() {
		return total_deposit;
	}

	public void setTotal_deposit(double total_deposit) {
		this.total_deposit = total_deposit;
	}

	
}
