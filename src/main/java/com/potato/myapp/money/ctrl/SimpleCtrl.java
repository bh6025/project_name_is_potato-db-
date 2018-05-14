package com.potato.myapp.money.ctrl;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.potato.myapp.asset.model.vo.CarVO;
import com.potato.myapp.asset.model.vo.ElectricVO;
import com.potato.myapp.asset.model.vo.TravelVO;
import com.potato.myapp.money.model.vo.UserMoneyVO;
import com.potato.myapp.money.model.vo.UserTotalDepositVO;
import com.potato.myapp.money.service.SimpleService;
import com.potato.myapp.user.model.vo.UserVO;

@Controller
@RequestMapping("/simple")
public class SimpleCtrl {

	@Resource(name = "simpleService")
	private SimpleService service;


	@RequestMapping("simple.dbinc")
	public String simple(HttpSession session, Model model) { // 한번 확인해야 해당 세션에 저장된 아이디값을 받아와서 값이 있는 지 selectone 있으면 여기서
																// 확인해야 될듯해

		session.getAttribute("loginUser");
		System.out.println(session.getAttribute("loginUser"));
		UserVO obj = (UserVO) session.getAttribute("loginUser");
		
		
		UserMoneyVO money = service.checkUserMoney(obj);

		if (money != null) {
			
			session.setAttribute("userMoney", money);
			return "redirect:/simple/simpleResult.dbinc";

		} else {
			System.out.println("값 입력하기");
			return "/simple/simpleMain"; // 내가 잘 못 쓴 구문...return "simpleMain/dbinc";
		}

	}

	@RequestMapping("simpleMain.dbinc") // 값 입력하기
	public String simpleMain(HttpSession session, UserMoneyVO money, UserTotalDepositVO deposit) {

		System.out.println(session.getAttribute("loginUser"));
		session.getAttribute("loginUser");

		int flag = 0;
		int flag2 = 0;
		money.setExpense(money.getIncome()-money.getDeposit());
		flag = service.insertUserMoney(money);
		
		if(deposit.getTotal_deposit() == 0) {
			flag2 = service.insertUserDeposit(new UserMoneyVO(money.getUser_id(),0,0, 0,0));
		}else {
			flag2 = service.insertUserDeposit(new UserMoneyVO(money.getUser_id(),0,0, (int) deposit.getTotal_deposit(),0));
		}

		if (flag != 0) {// 값이 잘 들어간것!
			System.out.println("<< 입력이 되었습니다");
			
			session.setAttribute("userMoney", money);
			session.setAttribute("depositMoney", deposit); // 3월22일 9시 32분 추가 //저 이름을 어디서 사용하지??아 그 나의 정보에서 이 이름으로
																// 사용하는것 같음.
			System.out.println("<< Result 페이지로 이동합니다");
			// 방금막은거return "simple/simpleResult";
			return "redirect:/simple/simpleResult.dbinc";// 3.22.목요일 3시34분
		} else {
			System.out.println("<< 다시 입력해야합니다");
			return "/simple/simpleMain";
		}
	}

	@RequestMapping("modify.dbinc")
	public String modify(UserMoneyVO money, UserTotalDepositVO deposit, Model model, HttpSession session) {

		UserVO obj = (UserVO) session.getAttribute("loginUser");
		money.setUser_id(obj.getUser_id());
		System.out.println(money.getIncome() + "  " + money.getExpense());
		System.out.println("<< 변경 페이지 입니다 ");
		session.setAttribute("userMoney", money);
		int flag = 0;
		
		System.out.println("d이이이이이이 : " + deposit.getTotal_deposit());
		
		if(deposit.getTotal_deposit() != 0) {
			deposit.setUser_id(obj.getUser_id());
			service.updateAddTotalDeposit(deposit);
		}
		
		service.updateUserTotalDeposit(obj);
		session.setAttribute("depositMoney", service.selectDeposit(obj));
		
		flag = service.update(money);
		System.out.println(flag);
		if (flag != 0) {
			session.setAttribute("userMoney", money);
			return "redirect:/simple/simpleResult.dbinc";
		}
		return null;
	}

	@RequestMapping("simpleResult.dbinc") // 결과보여주는 창
	public String simpleResult(HttpSession session, Model model) {

		// 1. 입력한 값 가져오기
		System.out.println("<< Simple Result 페이지입니다.");
		UserVO user = (UserVO) session.getAttribute("loginUser");
		// user.getUser_id();

		// 2. 버튼을 누르면 데이터 값 변경하기
		UserMoneyVO money = service.checkUserMoney(user);
		if (money != null) {
			session.setAttribute("userMoney", money);
			System.out.println("<< SimpleMain " + money.getUser_id() + " " + money.getIncome() + " "
					+ money.getDeposit() + " " + money.getGoal_deposit() + " " + money.getExpense());
			model.addAttribute("userMoney", money);
			// return "/simple/simpleResult"; //아래서 리턴이 되서 되나보다?!
		}

		// 3. 도표이미지 보이게 하기 -2. 동일연령대 정보 //오후 1시 14분
		// user.getUser_id();
		System.out.println("<< 동일연령대 CTRL");
		UserMoneyVO userTotDep = service.calculate(money);
		System.out.println("<< 동일 연령대 저축금액 : " + userTotDep.getDeposit());
		model.addAttribute("userTotDep", userTotDep);
		System.out.println("<< 동일연령대를 알아봅니다.");

		// 4. 3,5,10년에 살 수 있는 이미지와 글 불러 올 수 있게 하기
		System.out.println("<< 3년안에 살 수 있는 목록 ");
		System.out.println(money.toString());

		CarVO car = service.findCar(money);
		model.addAttribute("car", car);

		ElectricVO electric = service.findElectric(money);
		model.addAttribute("electric", electric);

		TravelVO travel = service.findTravel(money);
		model.addAttribute("travel", travel);

		return "/simple/simpleResult";
	}

	@ResponseBody
	@RequestMapping("/ajaxAry5.dbinc") 
	public HashMap<String, Object> ajaxAry(HttpSession session, Model model) {

		UserVO user = (UserVO) session.getAttribute("loginUser");
		UserMoneyVO money = service.checkUserMoney(user);

		// 4. 5년에 살 수 있는 이미지와 글 불러 올 수 있게 하기
		System.out.println("<< 5년안에 살 수 있는 목록 ");
		System.out.println(money.toString());
		System.out.println(money.getDeposit());

		CarVO car = service.findCar5Year(money);
		model.addAttribute("car", car);
		System.out.println(car.getCar_name()+" "+car.getCar_price());
		System.out.println();
		
		ElectricVO electric = service.findEle5Year(money);
		model.addAttribute("electric", electric);
		System.out.println(electric.getElectric_name()+" "+electric.getElectric_price());
		System.out.println();
		
		TravelVO travel = service.findTra5Year(money);
		model.addAttribute("travel", travel);
		System.out.println(travel.getTravel_name()+" "+travel.getTravel_price());
		System.out.println();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("car", car);
		map.put("electric", electric);
		map.put("travel", travel);
		
		System.out.println(map.toString());
		System.out.println(map.get("car"));
		System.out.println(map.get("electric"));
		System.out.println(map.get("travel"));
		return map;

	}

	@ResponseBody
	@RequestMapping("/ajaxAry10.dbinc")
	public HashMap<String, Object> ajaxAry10(HttpSession session, Model model) {

		UserVO user = (UserVO) session.getAttribute("loginUser");
		UserMoneyVO money = service.checkUserMoney(user);

		// 4. 10년에 살 수 있는 이미지와 글 불러 올 수 있게 하기
		System.out.println("<< 10년안에 살 수 있는 목록 ");
		System.out.println(money.toString());

		CarVO car = service.findCar10Year(money);
		model.addAttribute("car", car);

		ElectricVO electric = service.findEle10Year(money);
		model.addAttribute("electric", electric);

		TravelVO travel = service.findTra10Year(money);
		model.addAttribute("travel", travel);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("car", car);
		map.put("electric", electric);
		map.put("travel", travel);
		return map;

	}

}
