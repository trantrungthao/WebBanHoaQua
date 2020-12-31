package com.project.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.dao.TaiKhoanRepository;
import com.project.dao.ThongtinTaiKhoanRepository;
import com.project.model.MyUser;
import com.project.model.Quyen;
import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;

@Service
public class TaiKhoanSecurityImpl implements UserDetailsService {

	@Autowired
	private TaiKhoanRepository tkRepository;

	@Autowired
	private ThongtinTaiKhoanRepository tttkRepository;

	@Override
	public UserDetails loadUserByUsername(String tendangnhap) throws UsernameNotFoundException {
		TaiKhoan tk = tkRepository.findOneByTendangnhapAndActive(tendangnhap, 1);
		if (tk == null) {
			throw new UsernameNotFoundException("Tai khoan khong ton tai");
		}
		//
		List<GrantedAuthority> dsquyen = new ArrayList<GrantedAuthority>();
		for (Quyen quyen : tk.getQuyens()) {
			dsquyen.add(new SimpleGrantedAuthority(quyen.getTenquyen()));
		}
		//
		MyUser myUser = new MyUser(tk.getTendangnhap(), tk.getMatkhau(), true, true, true, true, dsquyen);
		ThongtinTaikhoan ttTaiKhoan = tttkRepository.findOne(tk.getId());
		myUser.setFullname(ttTaiKhoan.getHoten());
		return myUser;
	}
}
