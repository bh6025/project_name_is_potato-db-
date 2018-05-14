package com.potato.myapp.user.ctrl;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.potato.myapp.money.service.SimpleService;
import com.potato.myapp.user.model.vo.UserVO;
import com.potato.myapp.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserCtrl {
	@Resource(name = "userService")
	private UserService service;

	@Resource(name = "simpleService")
	private SimpleService simpleService;

	@RequestMapping("/register.dbinc")
	public String register() {
		System.out.println("Register CTRL");
		return "user/register";
	}

	@RequestMapping("/recover.dbinc")
	public String recover() {
		System.out.println("Recover CTRL");
		return "user/recoverPW";
	}

	/////////////////////// 보현
	@RequestMapping("/login.dbinc")
	public String login(UserVO user, HttpSession session, Model model) {
		System.out.println("Ctrl : Check User Login");
		UserVO result = service.login(user);
		if (result != null) {
			session.setAttribute("loginUser", result);
			simpleService.updateUserTotalDeposit(user);
			session.setAttribute("depositMoney", simpleService.selectDeposit(user));
			return "redirect:/simple/simple.dbinc";
		} else {
			System.out.println("login fail");
			model.addAttribute("flag", "loginFail");
			return "main";
		}
	}

	@RequestMapping("/join.dbinc")
	public String join(UserVO user, HttpServletRequest request) throws IOException {
		System.out.println("Ctrl : Check User Join");

		MultipartFile file = user.getUser_file();
		String path = request.getSession().getServletContext().getRealPath("/resources/images/userImg/");

		if (file.getOriginalFilename() == null || file.getOriginalFilename() == "") {
			System.out.println(">>> image is null");
			user.setUser_img("DB.JPG");
		} else {
			String originalFileName = file.getOriginalFilename();
			System.out.println(">>> image is not null");
			System.out.println(">>> 사진이 저장되는 위치 : path + originalFileName");
			System.out.println(path);
			byte[] data = file.getBytes();
			FileOutputStream out = new FileOutputStream(path + originalFileName);
			out.write(data);
			out.close();
			user.setUser_img(originalFileName);
		}
		if (service.join(user) != 0) {
			return "main";
		} else {
			return "user/register";
		}
	}

	@RequestMapping("/logout.dbinc")
	public String logout(HttpSession session) {
		System.out.println("Ctrl : User Logout");
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/delete.dbinc")
	public String delete(HttpSession session) {
		System.out.println("ctrl : delete user");
		UserVO user = new UserVO();
		user.setUser_id(((UserVO) session.getAttribute("loginUser")).getUser_id());
		if (service.delete(user) != 0) {
			session.invalidate();
			return "main";
		} else {
			return null;
		}

	}

	@RequestMapping("/modify.dbinc")
	public String modify(UserVO user, HttpSession session, HttpServletRequest request) throws IOException {
		System.out.println("Ctrl : Modify User Info");

		MultipartFile file = user.getUser_file();
		String path = request.getSession().getServletContext().getRealPath("/resources/images/userImg/");

		if (file.getOriginalFilename() == null || file.getOriginalFilename() == "") {
			System.out.println(">>> image is null");
		} else {
			String originalFileName = file.getOriginalFilename();
			System.out.println(">>> image is not null");
			System.out.println(">>> 사진이 저장되는 위치 : path + originalFileName");
			System.out.println(path);
			byte[] data = file.getBytes();
			FileOutputStream out = new FileOutputStream(path + originalFileName);
			out.write(data);
			out.close();
			user.setUser_img(originalFileName);
		}

		System.out.println(user);
		service.modify(user);
		session.removeAttribute("loginUser");
		session.setAttribute("loginUser", service.modifyLogin(user));

		return "redirect:/simple/simple.dbinc";

	}

	@RequestMapping("/modifyForm.dbinc")
	public String modifyForm(UserVO user) {
		return "mine/modify";
	}

}
