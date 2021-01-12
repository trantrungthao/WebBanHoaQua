package com.project.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;

@Controller
public class DangKyController {
	@GetMapping("/dangky")
	public ModelAndView dangky() {
		ModelAndView mav = new ModelAndView("user/dangky");
		mav.addObject("taikhoan", new TaiKhoan());
		mav.addObject("tttk", new ThongtinTaikhoan());
		return mav;
	}
	@RequestMapping(value = "/xulydangky", method = RequestMethod.POST)
	public ModelAndView xulyDangKy(@ModelAttribute("taikhoan") TaiKhoan tk, @ModelAttribute("tttk") ThongtinTaikhoan tttk) {
		ModelAndView mav = new ModelAndView("user/trangchu");
		return mav;
	}
}
