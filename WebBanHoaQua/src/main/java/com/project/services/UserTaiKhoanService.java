package com.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.TaiKhoanRepository;
import com.project.dao.ThongtinTaiKhoanRepository;
import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;

@Service
public class UserTaiKhoanService {
	@Autowired
	private TaiKhoanRepository tkRepository;
	@Autowired
	private ThongtinTaiKhoanRepository tttkRepository;
	
	// Luu tai khoan
	public void saveTaiKhoan(TaiKhoan tk) {
		tkRepository.save(tk);
	}
	// Luu thong tin tai khoan
	public void saveThongTinTaiKhoan(ThongtinTaikhoan tttk) {
		tttkRepository.save(tttk);
	}
	// Kiem tra ten dang nhao ton tai
	public String checkTendangnhap(String tendangnhap) {
		TaiKhoan tk = tkRepository.findOneByTendangnhap(tendangnhap);
		return (tk==null) ? "no":"yes";
	}
	// Lay tai khoan
	public TaiKhoan findOneTaiKhoan(String tendangnhap) {
		return tkRepository.findOneByTendangnhap(tendangnhap);
	}
	// Lay thong tin tai khoan
	public ThongtinTaikhoan findOneThongtinTaikhoan(String hoten) {
		return tttkRepository.findOneByHoten(hoten);
	}
}
