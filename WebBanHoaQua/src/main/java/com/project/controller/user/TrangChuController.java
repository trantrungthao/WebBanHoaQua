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
	@RequestMapping(value = "/dangky", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("user/dangky");
		return mav;
	}
	@RequestMapping(value = "/sanpham", method = RequestMethod.GET)
	public ModelAndView sanpham() {
		ModelAndView mav = new ModelAndView("user/sanpham");
		return mav;
	}
	@RequestMapping(value = "/chitietsanpham", method = RequestMethod.GET)
	public ModelAndView chitietsanpham() {
		ModelAndView mav = new ModelAndView("user/chitietsanpham");
		return mav;
	}
	@RequestMapping(value = "/giohang", method = RequestMethod.GET)
	public ModelAndView giohang() {
		ModelAndView mav = new ModelAndView("user/giohang");
		return mav;
	}
	@RequestMapping(value = "/thanhtoan", method = RequestMethod.GET)
	public ModelAndView thanhtoan() {
		ModelAndView mav = new ModelAndView("user/thanhtoan");
		return mav;
	}
	@RequestMapping(value = "/lienhe", method = RequestMethod.GET)
	public ModelAndView lienhe() {
		ModelAndView mav = new ModelAndView("user/lienhe");
		return mav;
	}
	@RequestMapping(value = "/dangnhapSecurity", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dangnhap");
	}
}
