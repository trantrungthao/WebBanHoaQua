package com.project.controller.user;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.dto.GioHang;
import com.project.dto.Item;
import com.project.model.HoaDon;
import com.project.model.MyUser;
import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;
import com.project.security.SecurityUtils;
import com.project.services.UserHoaDonService;
import com.project.services.UserTaiKhoanService;


@Controller
public class ThanhToanController {
	@Autowired
	private UserTaiKhoanService tkService;
	@Autowired
	private UserHoaDonService hdService;

	@GetMapping("/thanhtoan")
	public String thanhtoan(HttpSession session, HttpServletRequest req, Model model) {
		GioHang giohang = (GioHang) session.getAttribute("giohang");
		List<Item> dssp = giohang.getListsp();
//		System.out.println("Request: "+req.getUserPrincipal().getName());
		MyUser myUser = (MyUser) SecurityUtils.getPrincipal();
		System.out.println(myUser.getUsername());
		System.out.println(myUser.getFullname());
		TaiKhoan tk = tkService.findOneTaiKhoan(myUser.getUsername());
		ThongtinTaikhoan tttk = tkService.findOneThongtinTaikhoan(myUser.getFullname());
		model.addAttribute("tk", tk);
		model.addAttribute("tttk", tttk);
		model.addAttribute("dssp", dssp);
		model.addAttribute("hoadon", new HoaDon());
		return "user/thanhtoan";
	}

	@RequestMapping(value = "/thanhtoan", method = RequestMethod.POST)
	public String xulythanhtoan(@RequestParam("hoten") String hoten, @RequestParam("diachi") String diachi, @RequestParam("sdt") String sdt, HttpSession session, Model model) {
		GioHang giohang = (GioHang) session.getAttribute("giohang");
		if (giohang.getTongtien() > 0) {
			try {
				System.out.println("..........");
				System.out.println(hoten);
				System.out.println(diachi);
				Date ngay = new Date();
				HoaDon hoadon = new HoaDon(null, hoten, null, diachi, sdt, ngay, giohang.getTongtien());
				hdService.luuHD(hoadon);
				System.out.println(ngay);
				session.setAttribute("giohang", new GioHang());
				session.setAttribute("count", 0);
				model.addAttribute("thongbao", "Thanh toán thành công");
			} catch (Exception e) {
				model.addAttribute("thongbao", "Thanh toán bị lỗi, vui lòng truy cập lại sao");
			}
		} else {
			model.addAttribute("thongbao", "Giỏ hàng trống, Vui lòng thêm sản phẩm vào");
		}
		return "user/thanhtoan";
	}
}
