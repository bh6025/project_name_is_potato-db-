package com.potato.myapp.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.user.model.sql.UserDao;
import com.potato.myapp.user.model.vo.UserVO;

@Service("userService")
public class UserService {
	@Resource(name = "userDao")
	private UserDao dao;


	public UserVO login(UserVO user) {
		System.out.println("Service : Check User Login");
		return dao.loginRow(user);
	}
	
	
	public int join(UserVO user) {
		System.out.println("Service : Check User Join");
		return dao.joinRow(user);
	}
	
	public int delete(UserVO user) {
		System.out.println("Service : Delete User");
		return dao.deleteRow(user);
	}
	
	public int modify(UserVO user) {
		System.out.println("Service : Modify User");
		return dao.modifyRow(user);
	}
	
	public UserVO modifyLogin(UserVO user) {
		System.out.println("Service : ModifyLogin User");
		return dao.modifyLoginRow(user);
	}
	
	public int password(UserVO user) {
		
		return dao.password(user);
	}
	
	public UserVO name(UserVO user) {
		return dao.name(user);
	}
}//userService



