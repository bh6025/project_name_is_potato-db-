package com.potato.myapp.money.ctrl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.money.service.MineService;
import com.potato.myapp.user.model.vo.UserVO;

@Controller
@RequestMapping("/mine")
public class MineCtrl {
	@Resource(name = "mineService")
	private MineService service;
	
	@RequestMapping("modify.dbinc")
	public String mineModify(){
		return "/mine/modify";
	}
	@RequestMapping("/goal.dbinc")
	public String mineGoal(){
		return "/mine/goal";
	}
	
	@RequestMapping("/futureAsset.dbinc")
	public String futureAsset(Model model) {
		List<CarVO> carList = service.listAllCar();
		List<ElectricVO> electricList = service.listAllElectric();
		List<TravelVO> travelList = service.listAllTravel();
		
		model.addAttribute("car", carList);
		model.addAttribute("electric", electricList);
		model.addAttribute("travel", travelList);
		
		return "/mine/futureAsset";
	}
	
	//totalExpense	
		@RequestMapping("/totalExpense.dbinc")
		public String totalExpense(HttpSession session, UserVO obj, Model model) {
			
			UserVO user = (UserVO) session.getAttribute("loginUser");
			user.getUser_id();
			model.addAttribute("loginUser", user);
			
			//chart
			List<DetailVO> chart = service.chart_select_myData(user);
			JSONArray jAry0 = new JSONArray(chart);
			model.addAttribute("chart", jAry0.toString());
			DetailVO chart_sameAgeData = service.chart_select_sameAgeData(user);
			model.addAttribute("chart_sameAge", chart_sameAgeData);

			//System.out.println("완료");
			return "/mine/totalExpense";
			
		}
}
