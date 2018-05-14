package com.potato.myapp.asset.model.vo;

public class CarVO {
	private	int		car_num, car_price;
	private	String	car_name, car_img;
	public CarVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarVO(int car_num, int car_price, String car_name, String car_img) {
		super();
		this.car_num = car_num;
		this.car_price = car_price;
		this.car_name = car_name;
		this.car_img = car_img;
	}
	public int getCar_num() {
		return car_num;
	}
	public void setCar_num(int car_num) {
		this.car_num = car_num;
	}
	public int getCar_price() {
		return car_price;
	}
	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getCar_img() {
		return car_img;
	}
	public void setCar_img(String car_img) {
		this.car_img = car_img;
	}
	
	
}
