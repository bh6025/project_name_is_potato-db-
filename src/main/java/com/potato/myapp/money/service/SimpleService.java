package com.potato.myapp.money.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.sql.SimpleDao;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.money.model.vo.UserMoneyVO;
import com.potato.myapp.money.model.vo.UserTotalDepositVO;
import com.potato.myapp.user.model.vo.UserVO;

@Service("simpleService")
public class SimpleService {
	
	@Resource(name = "simpleDao")
	private SimpleDao dao;
	
	
	public int insertUserMoney(UserMoneyVO money) {
		System.out.println("<< Simple Service");
		return dao.insertRow(money);
	}
	
	public int insert(DetailVO detail) {
		System.out.println("detail service");
		return dao.detailInsertRow(detail);
		//return 1;
	}

	//////////////////////////////3.21.수
	public UserMoneyVO checkUserMoney(UserVO obj) {
		System.out.println("<< SERVICE CHECK USERMONEY");
		return dao.selectRow(obj);
	}

	public int update(UserMoneyVO money) {
	
		System.out.println("<< 변경 SERVICE");
		return dao.updateRow(money);
	}
	
	////////////////3.22목

	public int insertUserDeposit(UserMoneyVO money) {
		System.out.println("<< User_Total_Deposit SERVICE ");
		return dao.insertRowOFTotalDeposit(money);
		
	}

	public UserMoneyVO calculate(UserMoneyVO money) {
		System.out.println("<< 동일연령대 SERVICE");
		return dao.selectSameAgeRangeDeposit(money);
	}
	
	//////////////3.23금
	public CarVO findCar(UserMoneyVO money) {
		System.out.println("<< 차 SERVICE");
		if( dao.findCar(money) == null) {
			return new CarVO();
		}
		return dao.findCar(money);
	}

	public ElectricVO findElectric(UserMoneyVO money) {
		System.out.println("<< 전자제품 SERVICE");
		return dao.findElectric(money);
	}

	public TravelVO findTravel(UserMoneyVO money) {
		System.out.println("<< 여행지 SERVICE");
		return dao.findTravel(money);
	}

	public CarVO findCar5Year(UserMoneyVO money) {
		System.out.println("<< 5년 차 SERVICE");
		if( dao.findCar5Year(money) == null) {
			return new CarVO();
		}
		return dao.findCar5Year(money);
	}

	public ElectricVO findEle5Year(UserMoneyVO money) {
		System.out.println("<< 5년 전자제품 SERVICE");
		return dao.findElectric5Year(money);
	}

	public TravelVO findTra5Year(UserMoneyVO money) {
		System.out.println("<< 5년 여행지 SERVICE");
		return dao.findTravel5Year(money);
	}

	public CarVO findCar10Year(UserMoneyVO money) {
		System.out.println("<< 10년 차 SERVICE");
		if( dao.findCar10Year(money) == null) {
			return new CarVO();
		}
		return dao.findCar10Year(money);
	}

	public ElectricVO findEle10Year(UserMoneyVO money) {
		System.out.println("<< 10년 전자제품 SERVICE");
		return dao.findElectric10Year(money);
	}

	public TravelVO findTra10Year(UserMoneyVO money) {
		System.out.println("<< 10년 여행지 SERVICE");
		return dao.findTravel10Year(money);
	}
	
	public int updateUserTotalDeposit(UserVO user) {
		System.out.println("Service : Update User Total Deposit");
		return dao.updateUserTotalDeposit(user);
	}
	
	public UserTotalDepositVO selectDeposit(UserVO user) {
		System.out.println("Service : Select Deposit");
		return dao.selectDeposit(user);
	}
	
	public int updateAddTotalDeposit(UserTotalDepositVO deposit) {
		System.out.println("Service : Update Add Total Deposit");
		return dao.updateAddTotalDeposit(deposit);
		}

}
