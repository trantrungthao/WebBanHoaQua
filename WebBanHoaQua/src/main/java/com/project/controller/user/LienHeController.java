package com.project.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.LienHe;
import com.project.services.UserLienHeService;

@Controller
public class LienHeController {
	@Autowired
	private UserLienHeService lhService;
	// Hien trang lien he quan ly
	@RequestMapping(value = "/lienhe")
	public String lienhe(Model model) {
		model.addAttribute("lienhe", new LienHe());
		return "user/lienhe";
	}
	// Xu ly them lien he
	@RequestMapping(value = "/xulylienhe")
	public String xulylienhe(@ModelAttribute("lienhe") LienHe lienhe, Model model) {
		lienhe.setActive(1);
		lhService.luuLienHe(lienhe);
		model.addAttribute("thongbao", "Cảm ơn bạn đã liên hệ với chúng tôi!");
		return "user/lienhe";
	}
}
