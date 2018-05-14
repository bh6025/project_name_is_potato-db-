package com.potato.myapp.money.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.money.model.sql.DetailDao;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.user.model.vo.UserVO;

@Service("detailService")
public class DetailService {

	@Resource(name = "detailDao")
	private DetailDao dao;
	
	public int insertDetail(DetailVO detail) {
		System.out.println("detail service");
		return dao.detailInsertRow(detail);
	}
	
	public DetailVO selectPie(UserVO obj) {
		System.out.println("detail service - pie");
		return dao.selectPieChartRow(obj);
	}
	
	public DetailVO selectRadar(UserVO obj) {
		System.out.println("detail service - radar");
		return dao.selectRadarChartRow(obj);
	}
	
	public DetailVO selectRadarSameAge(UserVO user) {
		System.out.println("detail service - radar - same age");
		return dao.selectRadarChartAgeRow(user);
	}
	
	public int checkDetail(UserVO user) {
		System.out.println("detail check service");
		return dao.detailCheckRow(user);
	}
}
