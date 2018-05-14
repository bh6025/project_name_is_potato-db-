package com.potato.myapp.user.model.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.user.model.vo.UserVO;

@Repository("userDao")
public class UserDao {
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao : Check User Login");
		return session.selectOne("model.sql.user.loginUser",user);
	}
	public int joinRow(UserVO user) {
		System.out.println("Dao : Check User Join");
		return session.insert("model.sql.user.joinUser",user);
	}
	
	public int deleteRow(UserVO user) {
		System.out.println("Dao : Delete User");
		return session.delete("model.sql.user.deleteUser", user);
	}
	
	public int modifyRow(UserVO user) {
		System.out.println("Dao : Modify User");
		return session.update("model.sql.user.modifyUser", user);
	}
	
	public UserVO modifyLoginRow(UserVO user) {
		System.out.println("Dao : Check User Login");
		return session.selectOne("model.sql.user.modifyLoginUser",user);
	}
	
	public int password(UserVO user) {
		
		return session.update("model.sql.user.password", user);
	}
	
	public UserVO name(UserVO user) {
		
		return session.selectOne("model.sql.user.name", user);
	}
	
	
}//UserDao

