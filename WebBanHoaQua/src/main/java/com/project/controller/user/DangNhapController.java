package com.project.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DangNhapController {
	// Hien trang dang nhap
	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("user/dangnhap");
		return mav;
	}
	//Hien trang dang ky
	@RequestMapping(value = "/dangky", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("user/dangky");
		return mav;
	}
	//
	@RequestMapping(value = "/dangnhapSecurity", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dangnhap?error");
	}
}
