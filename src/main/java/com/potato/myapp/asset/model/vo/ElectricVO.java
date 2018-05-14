package com.potato.myapp.asset.model.vo;

public class ElectricVO {
	private	int		electric_num, electric_price;
	private	String	electric_name, electric_img;
	public ElectricVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ElectricVO(int electric_num, int electric_price, String electric_name, String electric_img) {
		super();
		this.electric_num = electric_num;
		this.electric_price = electric_price;
		this.electric_name = electric_name;
		this.electric_img = electric_img;
	}
	public int getElectric_num() {
		return electric_num;
	}
	public void setElectric_num(int electric_num) {
		this.electric_num = electric_num;
	}
	public int getElectric_price() {
		return electric_price;
	}
	public void setElectric_price(int electric_price) {
		this.electric_price = electric_price;
	}
	public String getElectric_name() {
		return electric_name;
	}
	public void setElectric_name(String electric_name) {
		this.electric_name = electric_name;
	}
	public String getElectric_img() {
		return electric_img;
	}
	public void setElectric_img(String electric_img) {
		this.electric_img = electric_img;
	}
	
}
