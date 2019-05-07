package com.kce.controller;

import com.kce.user.controller.Model;
import com.kce.user.controller.ModelAttribute;
import com.kce.user.controller.RequestMapping;
import com.kce.user.model.User;

@Controller
public class S_Controller {


	@RequestMapping(value = "/start")
	public String init(Model model) {
		model.addAttribute("msg", "Please Enter Your Details");
		return "login";
	}
	@RequestMapping(value = "/register")
	public String doRegister(Model model, @ModelAttribute("userBean") User userBeen) {
		if (userBean != null && userBean.getUserName() != null && password != null) {
			model.addAttribute("msg", "Registered Successfully");
			return userService.doRegister(userBean);
		} else {
			model.addAttribute("error", "Error Occured");
			return "error";
		}
	}
	@RequestMapping(value = "/remove")
	public String doDelete(Model model, @ModelAttribute("userBean") user userBean) {
		userService.doDelete(userBean.getUserId());
		model.addAttribute("msg", "Details deleted Successfully for user:" + userBean.getUserId());
		model.addAttribute("UserIds", userService.getUserId());
		model.addAttribute("User", userService.getUser(userBean.getUserId()));
		return "modify";
	}

	@RequestMapping(value = "/show")
	public String listAllUsers(Model model) {
		model.addAttribute("user", userService.getAllUser());
		return "show";
	}

	@RequestMapping(value = "/fetch")
	public String getUserIds(Model model) {
		model.addAttribute("UserIds", userService.getUserId());
		return "modify";
	}


}
