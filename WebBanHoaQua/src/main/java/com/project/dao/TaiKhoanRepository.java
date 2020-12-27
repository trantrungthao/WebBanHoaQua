package com.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.TaiKhoan;

public interface TaiKhoanRepository extends JpaRepository<TaiKhoan, Long> {
	TaiKhoan findOneByTendangnhapAndActive(String tendangnhap, int active);
}
