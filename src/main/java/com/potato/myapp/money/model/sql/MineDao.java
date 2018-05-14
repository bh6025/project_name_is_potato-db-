package com.potato.myapp.money.model.sql;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.user.model.vo.UserVO;

@Repository("mineDao")
public class MineDao {
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	public List<CarVO> listAllCarRow() {
		System.out.println("Dao : listCaAllRow");
		return session.selectList("model.sql.money.listAllCar");
	}
	
	public List<ElectricVO> listAllElectricRow() {
		System.out.println("Dao : listElectricAllRow");
		return session.selectList("model.sql.money.listAllElectric");
	}
	
	public List<TravelVO> listAllTravelRow() {
		System.out.println("Dao : listTravelAllRow");
		return session.selectList("model.sql.money.listAllTravel");
	}
	
	//totalExpense
	public List<DetailVO> chart_myDataRow(UserVO user) {
		System.out.println("chart_myData dao");
		return session.selectList("model.sql.money.chart_myDate", user);
	}
	public DetailVO chart_sameAgeDateRow(UserVO user) {
		System.out.println("chart_sameAgeDate dao");
		return session.selectOne("model.sql.money.chart_sameAgeDate", user);
	}
}
