package com.potato.myapp.money.model.vo;

public class DetailVO {
	private	String	user_id, user_date;
	private int	    food_expense, transportation_expense, living_expense, culture_expense, phone_expense, service_expense, etc_expense;
	
	public DetailVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailVO(String user_id, String user_date, int food_expense, int transportation_expense, int living_expense,
			int culture_expense, int phone_expense, int service_expense, int etc_expense) {
		super();
		this.user_id = user_id;
		this.user_date = user_date;
		this.food_expense = food_expense;
		this.transportation_expense = transportation_expense;
		this.living_expense = living_expense;
		this.culture_expense = culture_expense;
		this.phone_expense = phone_expense;
		this.service_expense = service_expense;
		this.etc_expense = etc_expense;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_date() {
		return user_date;
	}
	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	public int getFood_expense() {
		return food_expense;
	}
	public void setFood_expense(int food_expense) {
		this.food_expense = food_expense;
	}
	public int getTransportation_expense() {
		return transportation_expense;
	}
	public void setTransportation_expense(int transportation_expense) {
		this.transportation_expense = transportation_expense;
	}
	public int getLiving_expense() {
		return living_expense;
	}
	public void setLiving_expense(int living_expense) {
		this.living_expense = living_expense;
	}
	public int getCulture_expense() {
		return culture_expense;
	}
	public void setCulture_expense(int culture_expense) {
		this.culture_expense = culture_expense;
	}
	public int getPhone_expense() {
		return phone_expense;
	}
	public void setPhone_expense(int phone_expense) {
		this.phone_expense = phone_expense;
	}
	public int getService_expense() {
		return service_expense;
	}
	public void setService_expense(int service_expense) {
		this.service_expense = service_expense;
	}
	public int getEtc_expense() {
		return etc_expense;
	}
	public void setEtc_expense(int etc_expense) {
		this.etc_expense = etc_expense;
	}
	
	@Override
	public String toString() {
		return "DetailVO [user_id=" + user_id + ", user_date=" + user_date + ", food_expense=" + food_expense
				+ ", transportation_expense=" + transportation_expense + ", living_expense=" + living_expense
				+ ", culture_expense=" + culture_expense + ", phone_expense=" + phone_expense + ", service_expense="
				+ service_expense + ", etc_expense=" + etc_expense + "]";
	}
	
	
}
