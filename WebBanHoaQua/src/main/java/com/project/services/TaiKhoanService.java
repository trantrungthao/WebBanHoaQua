package com.project.services;

import com.project.model.TaiKhoan;

public interface TaiKhoanService {
	// danh sach tai khoan admin
	Iterable<TaiKhoan> findAll();

	// tim tai khoan admin bang id
	TaiKhoan findOne(Long id);

	// tim tk admin bang ten tk
	TaiKhoan findByName(String name);

	// tim tk admin bang mail
	TaiKhoan findByMail(String mail);

	// kiem tra ten tk da ton tai chua
	boolean findAdminByName(String name);

	// kiem tra email da duoc dang ki chua
	boolean findAdminByEmail(String email);

	// them tk moi
	void save(TaiKhoan taikhoan);

	// cap nhat tai khoan
	void update(TaiKhoan taikhoan);

	// xoa tai khoan
	void delete(Long id);

}
