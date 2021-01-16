package com.project.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.SanPham;
import com.project.services.UserSanPhamService;

@Controller
public class SanPhamController {
	@Autowired
	private UserSanPhamService spService;
	
	// Hien danh sach san pham
	@RequestMapping(value = "/danhsachsanpham")
	public ModelAndView showSanPham() {
		ModelAndView mav = new ModelAndView("user/sanpham");
		List<SanPham> dssp = spService.show();
		mav.addObject("danhsachsanpham", dssp);
		return mav;
	}
	// Tim kiem bang autocomplete
	@RequestMapping(value = "/timkiem", method = RequestMethod.GET)
	public @ResponseBody List<String> search(@RequestParam("term") String name) {
		return spService.search(name);
	}

	// Tim kiem bang submit
	@RequestMapping(value = "/timkiemsanpham", method = RequestMethod.POST)
	public String searchSanPham(@RequestParam("productName") String tensanpham, Model model) {
		List<SanPham> list = spService.searchSanPham(tensanpham);
		if (list != null) {
			model.addAttribute("dssp", list);
		} else {
			model.addAttribute("thongbao", "Sản phẩm bạn tìm không có!");
		}
		return "user/timkiemsanpham";
	}
	@RequestMapping("/timkiemsanpham")
	public String timkiemsanpham() {
		
		return "user/timkiemsanpham";
	}
}
