package com.potato.myapp.user.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class UserVO {
	private String 	user_id, user_pwd, user_email, user_name, user_dept, user_job, user_age, user_img;
	private MultipartFile user_file;
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserVO(String user_id, String user_pwd, String user_email, String user_name, String user_dept,
			String user_job, String user_age, String user_img, MultipartFile user_file) {
		super();
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_dept = user_dept;
		this.user_job = user_job;
		this.user_age = user_age;
		this.user_img = user_img;
		this.user_file = user_file;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_dept() {
		return user_dept;
	}
	public void setUser_dept(String user_dept) {
		this.user_dept = user_dept;
	}
	public String getUser_job() {
		return user_job;
	}
	public void setUser_job(String user_job) {
		this.user_job = user_job;
	}
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public MultipartFile getUser_file() {
		return user_file;
	}
	public void setUser_file(MultipartFile user_file) {
		this.user_file = user_file;
	}
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_email=" + user_email + ", user_name="
				+ user_name + ", user_dept=" + user_dept + ", user_job=" + user_job + ", user_age=" + user_age
				+ ", user_img=" + user_img + ", user_file=" + user_file + "]";
	}
	
	
}
