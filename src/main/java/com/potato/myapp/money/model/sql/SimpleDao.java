package com.potato.myapp.money.model.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.money.model.vo.UserMoneyVO;
import com.potato.myapp.money.model.vo.UserTotalDepositVO;
import com.potato.myapp.user.model.vo.UserVO;

@Repository("simpleDao")
public class SimpleDao {
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	public int insertRow(UserMoneyVO money){
		System.out.println("<< Simple insert DAO");
		return session.insert("model.sql.money.insertUserMoney",money);
	}
	public int detailInsertRow(DetailVO detail) {
		System.out.println("detail insert dao");
		System.out.println(detail.toString());
		return session.insert("model.sql.money.insertDetail", detail);
		//return 1;
	}
	
	
	////////////////////////3.21.수
	public UserMoneyVO selectRow(UserVO obj) {
		System.out.println("<< DAO CHECK UESR MONEY ");
		return session.selectOne("model.sql.money.checkUserMoney", obj);
	}
	public int updateRow(UserMoneyVO money) {
		System.out.println("<< 변경 DAO ");
		System.out.println(money.toString());
		
		int flag = session.update("model.sql.money.updateUserMoney", money);
		
		if(flag != 0) {
			return 1;
		}else {
			return 0;
		}
		
	}
	
	///////////////3.22.목
	public int insertRowOFTotalDeposit(UserMoneyVO money) {
		System.out.println("<< INSERT TOTAL DEPOSIT DAO");
		return session.insert("model.sql.money.insertTotalDeposit", money);
	
	}
	//오후 1시 18분~
	public UserMoneyVO selectSameAgeRangeDeposit(UserMoneyVO money) {
		System.out.println("<< 동일연령대 DAO");
		System.out.println(money.toString());
		return session.selectOne("model.sql.money.selectSameAgeRangeDeposit", money);
	}
	
	///////////////3.23.금
	public CarVO findCar(UserMoneyVO money) {
		System.out.println("<< 차 DAO");
		return session.selectOne("model.sql.money.findCar", money);
	}
	public ElectricVO findElectric(UserMoneyVO money) {
		System.out.println("<< 전제제품 DAO");
		return session.selectOne("model.sql.money.findElectric", money);
	}
	public TravelVO findTravel(UserMoneyVO money) {
		System.out.println("<< 여행지 DAO");
		return session.selectOne("model.sql.money.findTravel", money);
	}
	
	
	
	public CarVO findCar5Year(UserMoneyVO money) {
		System.out.println("<< 5년 차 DAO");
		return session.selectOne("model.sql.money.findCar5Year", money);
	}
	public ElectricVO findElectric5Year(UserMoneyVO money) {
		System.out.println("<< 5년 전제제품 DAO");
		return session.selectOne("model.sql.money.findElectric5Year", money);
	}
	public TravelVO findTravel5Year(UserMoneyVO money) {
		System.out.println("<< 5년 여행지 DAO");
		return session.selectOne("model.sql.money.findTravel5Year", money);
	}
	
	public CarVO findCar10Year(UserMoneyVO money) {
		System.out.println("<< 10년 차 DAO");
		return session.selectOne("model.sql.money.findCar10Year", money);
	}
	public ElectricVO findElectric10Year(UserMoneyVO money) {
		System.out.println("<< 10년 전제제품 DAO");
		return session.selectOne("model.sql.money.findElectric10Year", money);
	}
	public TravelVO findTravel10Year(UserMoneyVO money) {
		System.out.println("<< 10년 여행지 DAO");
		return session.selectOne("model.sql.money.findTravel10Year", money);
	}
	
	public int updateUserTotalDeposit(UserVO user) {
		System.out.println("Dao : Update User Total Deposit");
		return session.update("model.sql.money.updateUserTotalDeposit", user);
	}
	
	public UserTotalDepositVO selectDeposit(UserVO user) {
		System.out.println("Dao : Select Deposit");
		return session.selectOne("model.sql.money.selectDeposit", user);
	}

	public int updateAddTotalDeposit(UserTotalDepositVO deposit) {
		System.out.println("Dao : Update Add Total Deposit");
		return session.update("model.sql.money.updateAddTotalDeposit", deposit);
	}
}
