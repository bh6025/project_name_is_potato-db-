package com.potato.myapp.money.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.potato.myapp.money.model.vo.DetailVO;
import com.potato.myapp.money.service.DetailService;
import com.potato.myapp.user.model.vo.UserVO;

@Controller
@RequestMapping("/detail")
public class DetailCtrl {
	
	@Resource(name ="detailService")
	private DetailService service;
	
	@RequestMapping("detail.dbinc")
	public String detail(HttpSession session) {
		return "/detail/detailMain";
	}
	
	@RequestMapping("detailMain.dbinc")
	public String detailMain(DetailVO detail, HttpSession session){
		System.out.println("detail ctrl");
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		user.getUser_id();
		System.out.println(">> "+detail.getFood_expense());
		System.out.println(">> "+detail.getTransportation_expense());
		System.out.println(">> "+detail.getLiving_expense());
		System.out.println(">> "+detail.getCulture_expense());
		System.out.println(">> "+detail.getPhone_expense());
		System.out.println(">> "+detail.getService_expense());
		System.out.println(">> "+detail.getEtc_expense());
		
		int flag = service.insertDetail(detail);
		
		if(flag != 0) {
			return "redirect:/detail/detailResult.dbinc";
		}else {
			return "/detail/detailMain";
		}
	}

	@RequestMapping("detailSub.dbinc")
	public String detailSub(HttpSession session) {
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		user.getUser_id();
		
		int flag = service.checkDetail(user);
		if(flag != 0) {
			return "redirect:/detail/detailResult.dbinc";
		}else {
			return "/detail/detailMain";
		}
	}
	
	@RequestMapping("detailResult.dbinc")
	public String detailResult(UserVO obj, HttpSession session, Model model){
		System.out.println("detail ctrl - pie chart ctrl");
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		user.getUser_id();
		
		//Pie chart
		DetailVO detail = service.selectPie(user);
		List<Integer> data01 = new ArrayList<>();
		data01.add(detail.getFood_expense());
		data01.add(detail.getTransportation_expense());
		data01.add(detail.getLiving_expense());
		data01.add(detail.getCulture_expense());
		data01.add(detail.getPhone_expense());
		data01.add(detail.getService_expense());
		data01.add(detail.getEtc_expense());
		JSONArray jAry01 = new JSONArray(data01);
		model.addAttribute("data01", jAry01.toString());
		
		//Radar chart - 내 데이터 평균
		DetailVO myData = service.selectRadar(user);
		List<Integer> data02 = new ArrayList<>();
		data02.add(myData.getFood_expense());
		data02.add(myData.getTransportation_expense());
		data02.add(myData.getLiving_expense());
		data02.add(myData.getCulture_expense());
		data02.add(myData.getPhone_expense());
		data02.add(myData.getService_expense());
		data02.add(myData.getEtc_expense());
		JSONArray jAry02 = new JSONArray(data02);
		model.addAttribute("data02", jAry02.toString());
		
		//Radar chart - 동일 연령대 데이터 평균
		DetailVO sameAgeData = service.selectRadarSameAge(user);
		List<Integer> data03 = new ArrayList<>();
		data03.add(sameAgeData.getFood_expense());
		data03.add(sameAgeData.getTransportation_expense());
		data03.add(sameAgeData.getLiving_expense());
		data03.add(sameAgeData.getCulture_expense());
		data03.add(sameAgeData.getPhone_expense());
		data03.add(sameAgeData.getService_expense());
		data03.add(sameAgeData.getEtc_expense());
		JSONArray jAry03 = new JSONArray(data03);
		model.addAttribute("data03", jAry03.toString());
		
		return "/detail/detailResult";
	}
	

}
