package com.potato.myapp.money.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.sql.MineDao;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.user.model.vo.UserVO;

@Service("mineService")
public class MineService {
	@Resource(name = "mineDao")
	private MineDao dao;

	public List<CarVO> listAllCar() {
		System.out.println("Service : listAllCar");
		return dao.listAllCarRow();
	}
	
	public List<ElectricVO> listAllElectric() {
		System.out.println("Service : listAllElectric");
		return dao.listAllElectricRow();
	}
	
	public List<TravelVO> listAllTravel() {
		System.out.println("Service : listAllTrave");
		return dao.listAllTravelRow();
	}
	
	//totalExpense
	public List<DetailVO> chart_select_myData(UserVO user){
		System.out.println("chart_myData service");
		return dao.chart_myDataRow(user);
	}
	public DetailVO chart_select_sameAgeData(UserVO user) {
		System.out.println("chart_sameAgeData service");
		return dao.chart_sameAgeDateRow(user);
	}
	
}
