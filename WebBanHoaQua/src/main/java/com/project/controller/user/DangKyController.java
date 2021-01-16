package com.project.controller.user;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.dto.TaiKhoanDK;
import com.project.mail.SendMail;
import com.project.model.Quyen;
import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;
import com.project.services.UserQuyenService;
import com.project.services.UserTaiKhoanService;

@Controller
public class DangKyController {
	@Autowired
	private UserTaiKhoanService tkService;
	@Autowired
	private UserQuyenService quyenService;
	
	@RequestMapping(value = "/kiemtra/tendangnhap", method = RequestMethod.POST)
	public @ResponseBody String check(HttpServletRequest req , Model model) {
		String tendangnhap = req.getParameter("tendangnhap");
		return tkService.checkTendangnhap(tendangnhap);
	}
	
	@RequestMapping(value = "/dangky", method = RequestMethod.GET)
	public String dangky(Model model) {
		model.addAttribute("taikhoan", new TaiKhoanDK());
		return "user/dangky";
	}

	@RequestMapping(value = "/xulydangky", method = RequestMethod.POST)
	public String xulydangky(@ModelAttribute("taikhoan") TaiKhoanDK tkdk, Model model, HttpServletRequest request, HttpSession session) {
		try {
			// Xu ly luu hinh anh
			MultipartFile multipartFile = tkdk.getHinhanh();
			String fileName = multipartFile.getOriginalFilename();
			// Thu muc goc upload file
			String uploadRootPath = request.getServletContext().getRealPath("upload");
			// Tao thu muc neu khong ton tai
			File uploadRootDir = new File(uploadRootPath);			
			if (!uploadRootDir.exists()) {
				uploadRootDir.mkdirs();
			}
			// Tai file len server
			File file = new File(uploadRootPath, fileName);
			multipartFile.transferTo(file);
			// Ma hoa mat khau bang Bcrypt
			String matkhauBCrypt = BCrypt.hashpw(tkdk.getMatkhau(), BCrypt.gensalt(10));
			// Lay danh sach quyen tham chieu
			Set<Quyen> quyens = quyenService.quyens(2);
			TaiKhoan tk = new TaiKhoan(null, tkdk.getTendangnhap(), matkhauBCrypt, 1, quyens, null);
			// Format ngay sinh
			String ngay = tkdk.getNgaysinh();
			Date ngaysinh = new SimpleDateFormat("yyyy-MM-dd").parse(ngay);
			// Set gioi tinh
			if(tkdk.getGioitinh()==null) {
				tkdk.setGioitinh("Nữ");
			}
			// Transfor Thong tin tai khoan
			ThongtinTaikhoan tttk = new ThongtinTaikhoan(null, tkdk.getHoten(), fileName, tkdk.getEmail(), tkdk.getSdt(), tkdk.getDiachi(), ngaysinh, tkdk.getGioitinh());
			// Tao ma xac nhan email va luu vao session
			String maxn = generateRandomChars();
			session.setAttribute("maxn", maxn);
			// Gui ma xac nhan cho email
			SendMail.sendMail(tkdk.getEmail(), "Website Bán Hoa Quả", "Mã xác nhận: "+ maxn);
			// Luu lai vao session
			session.setAttribute("tk", tk);
			session.setAttribute("tttk", tttk);

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "upload thất bại");
		}
		return "redirect:xacnhan";
	}
	// Chuyen qua trang xac nhan ma
	@GetMapping("/xacnhan")
	public String maxacnhan() {
		return "user/xacnhan";
	}
	// Xu ly xac nhan ma de dang ky
	@RequestMapping(value = "/xacnhan", method = RequestMethod.POST)
	public String xulymaxacnhan(HttpSession session, @RequestParam("maxacnhan") String maxacnhan, Model model) {
		String page = "";
		String maxn = (String) session.getAttribute("maxn");
		TaiKhoan tk = (TaiKhoan) session.getAttribute("tk");
		ThongtinTaikhoan tttk = (ThongtinTaikhoan) session.getAttribute("tttk");
		if(maxn.equals(maxacnhan)) {
			// luu lai khong tin
			tkService.saveTaiKhoan(tk);
			tkService.saveThongTinTaiKhoan(tttk);
			model.addAttribute("thongbao", "Tài khoản của bạn đã được tạo, vui lòng đăng nhập");
			page="user/dangnhap";
		}else {
			model.addAttribute("error", "Mã xác nhận không chính xác");
			page="user/xacnhan";
		}
		return page;
	}
	// Tao ma xac nhan email
	private String generateRandomChars() {
		// chuỗi chỉ định các ký tự
		String srcChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234556789";
		// độ dài của chuỗi mới
		int length = 5;
		// StringBuilder sử dụng để tạo chuỗi có thể thay đổi
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < length; i++) {
			// tạo một chuỗi mới từ các ký tự trong chuôi chỉ định
			sb.append(srcChars.charAt(random.nextInt(srcChars.length())));
		}
		return sb.toString();
	}
}
