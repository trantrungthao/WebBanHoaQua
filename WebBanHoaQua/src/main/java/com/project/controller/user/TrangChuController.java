package com.project.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "user")
public class TrangChuController {
	@RequestMapping(value = {"/trangchu","/"}, method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("user/trangchu");
		return mav;
	}
	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("user/dangnhap");
		return mav;
	}
	@RequestMapping(value = "/dangnhapSecurity", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dangnhap");
	}
}
