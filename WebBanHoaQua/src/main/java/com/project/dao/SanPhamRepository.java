package com.project.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.model.SanPham;

public interface SanPhamRepository extends JpaRepository<SanPham, Long>{
	// Tra ve danh sach ten san pham tim kiem
	@Query("SELECT tensanpham FROM SanPham where tensanpham like %:keyword%")
	public List<String> search(@Param("keyword") String keyword);
	
	// Tra ve danh sach san pham tim kiem
	@Query("SELECT sp FROM SanPham sp where tensanpham like %:keyword%")
	public List<SanPham> searchSanPham(@Param("keyword") String keyword);
}
