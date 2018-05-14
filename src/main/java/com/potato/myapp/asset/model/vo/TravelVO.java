package com.potato.myapp.asset.model.vo;

public class TravelVO {
	private	int		travel_num, travel_price;
	private	String	travel_name, travel_img;
	
	public TravelVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TravelVO(int travel_num, int travel_price, String travel_name, String travel_img) {
		super();
		this.travel_num = travel_num;
		this.travel_price = travel_price;
		this.travel_name = travel_name;
		this.travel_img = travel_img;
	}

	public int getTravel_num() {
		return travel_num;
	}

	public void setTravel_num(int travel_num) {
		this.travel_num = travel_num;
	}

	public int getTravel_price() {
		return travel_price;
	}

	public void setTravel_price(int travel_price) {
		this.travel_price = travel_price;
	}

	public String getTravel_name() {
		return travel_name;
	}

	public void setTravel_name(String travel_name) {
		this.travel_name = travel_name;
	}

	public String getTravel_img() {
		return travel_img;
	}

	public void setTravel_img(String travel_img) {
		this.travel_img = travel_img;
	}

	
}
