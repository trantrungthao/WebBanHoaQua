package com.project.services.impl;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.dao.TaiKhoanRepository;
import com.project.dao.ThongtinTaiKhoanRepository;
import com.project.model.Quyen;
import com.project.model.TaiKhoan;
import com.project.model.ThongtinTaikhoan;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private TaiKhoanRepository tkRepository;

	@Autowired
	private ThongtinTaiKhoanRepository tttkRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		TaiKhoan tk = tkRepository.findOneByUserNameAndActive(username, 1);
		if (tk == null) {
			throw new UsernameNotFoundException("Tai khoan khong ton tai");
		}
		//
		Set<GrantedAuthority> dsquyen = new HashSet<GrantedAuthority>();
		for (Quyen quyen : tk.getRoles()) {
			dsquyen.add(new SimpleGrantedAuthority(quyen.getName()));
		}
		//
		MyUser myUser = new MyUser(tk.getUsername(), tk.getPassword(), true, true, true, true, dsquyen);
		ThongtinTaikhoan ttTaiKhoan = tttkRepository.findOneByDetailUser(tk.getUsername());
		myUser.setFullname(ttTaiKhoan.getHoten());

		return myUser;
	}

	//
	public class MyUser extends User {
		private static final long serialVersionUID = 1L;

		private String fullname;

		public MyUser(String username, String password, boolean enabled, boolean accountNonExpired,
				boolean credentialsNonExpired, boolean accountNonLocked,
				Collection<? extends GrantedAuthority> authorities) {
			super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
			// TODO Auto-generated constructor stub
		}

		public String getFullname() {
			return fullname;
		}

		public void setFullname(String fullname) {
			this.fullname = fullname;
		}

	}

}
