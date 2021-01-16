package com.project.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.dto.GioHang;
import com.project.dto.Item;
import com.project.model.SanPham;
import com.project.services.UserSanPhamService;

@Controller
public class GioHangController {
	@Autowired
	private UserSanPhamService spService;
	
	@GetMapping("/giohang")
	public String giohang(HttpServletRequest req, HttpSession session, Model model) {
		GioHang giohang = (GioHang) session.getAttribute("giohang");
		if(giohang==null) {
			giohang = new GioHang();
		}
		List<Item> dssp = giohang.getListsp();
		giohang.setTongtien(tinhTongTien(dssp));
		session.setAttribute("count", dssp.size());
		session.setAttribute("giohang", giohang);
		model.addAttribute("dssp", dssp);
		return "user/giohang";
	}
	@GetMapping("/themsanpham")
	public String themsanpham(@RequestParam("page") String page, @RequestParam("id") long id, @RequestParam("soluong") int sosp,  HttpSession session, Model model) {
		SanPham sp = spService.findOneSanPham(id);
		Item item = new Item(sp.getTensanpham(), sp.getHinhanh(), sosp, sp.getGia()*sosp);
		GioHang giohang = (GioHang) session.getAttribute("giohang");
		List<Item> dssp = giohang.getListsp();
		dssp.add(item);
		giohang.setListsp(dssp);
		giohang.setTongtien(tinhTongTien(dssp));
		session.setAttribute("giohang", giohang);
		model.addAttribute("dssp", dssp);
		session.setAttribute("count", dssp.size());
		if(page.equals("chitietsanpham")) {
			page="chitietsanpham?id="+id;
		}
		return "redirect:"+page;
	}

	@RequestMapping("/xoasanpham")
	public String xoaSanPham(@RequestParam("page") String page, @RequestParam("tensanpham") String tensp,  HttpSession session, Model model) {
		GioHang giohang = (GioHang) session.getAttribute("giohang");
		List<Item> dssp = giohang.getListsp();
		dssp=xoaSP(dssp, tensp);
		giohang.setListsp(dssp);
		session.setAttribute("giohang", giohang);
		model.addAttribute("dssp", dssp);
		session.setAttribute("count", dssp.size());	
		return "redirect:"+page;
	}
	
	//
	private int tinhTongTien(List<Item> ds) {
		int tong = 0;
		for (Item i : ds) {
			tong+=i.getTonggia();
		}
		return tong;
	}
	//
	private List<Item> xoaSP(List<Item> ds, String tensp){
		for (int i = 0; i < ds.size(); i++) {
			if(ds.get(i).getTensanpham().equals(tensp)) {
				ds.remove(i);
			}
		}
		return ds;
	}
}
