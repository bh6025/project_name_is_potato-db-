package com.potato.myapp.money.model.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.user.model.vo.UserVO;

@Repository("detailDao")
public class DetailDao {
	
	@Resource(name = "sqlSession")
	private SqlSession	session;
	
	//상세 소비 입력 후, DB에 저장
	public int detailInsertRow(DetailVO detail) {
		System.out.println("detail insert dao");
		System.out.println(detail.toString());
		return session.insert("model.sql.money.detailInsert", detail);
	}
	
	//상세 소비 결과에서 pie 차트 출력 위해 데이터 select 
	public DetailVO selectPieChartRow(UserVO obj) {
		System.out.println("detail dao - pie chart");
		System.out.println(obj.toString());
		return session.selectOne("model.sql.money.selectPieChart", obj);
	}
	
	//상세 소비 결과에서 radar 차트 출력 위해 내 데이터의 평균 select 	
	public DetailVO selectRadarChartRow(UserVO obj) {
		System.out.println("detail dao - radar chart - my data");
		return session.selectOne("model.sql.money.selectRadarChart_UserData", obj);
	}

	//상세 소비 결과에서 radar 차트 출력 위해 동일연령 데이터의 평균 select 
	public DetailVO selectRadarChartAgeRow(UserVO user) {
		System.out.println("detail dao - radar chart - same age data");
		return session.selectOne("model.sql.money.selectRadarChart_SameAgeData", user);
	}
	
	public int detailCheckRow(UserVO user) {
		System.out.println("detail check dao");
		return session.selectOne("model.sql.money.detailCheck", user);
	}
}
