package com.project.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.dto.GioHang;
import com.project.dto.Item;
import com.project.services.UserSanPhamService;

@Controller
public class TrangChuController {
	@Autowired
	private UserSanPhamService spService;
	
	@RequestMapping(value = {"/trangchu","/"}, method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest req) {
		HttpSession session = req.getSession();
		GioHang giohang = new GioHang();
		List<Item> dssp = giohang.getListsp();
		session.setAttribute("count", dssp.size());
		session.setAttribute("giohang", giohang);
		ModelAndView mav = new ModelAndView("user/trangchu");
		return mav;
	}
	@RequestMapping(value = "/chitietsanpham", method = RequestMethod.GET)
	public ModelAndView chitietsanpham(@RequestParam("id") long id) {
		ModelAndView mav = new ModelAndView("user/chitietsanpham");
		mav.addObject("sp", spService.findOneSanPham(id));
		return mav;
	}

}
