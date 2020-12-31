package com.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.ThongtinTaikhoan;

public interface ThongtinTaiKhoanRepository extends JpaRepository<ThongtinTaikhoan, Long>{
	ThongtinTaikhoan findOne(Long id);
	
}
