package com.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.SanPhamRepository;
import com.project.model.SanPham;

@Service
public class UserSanPhamService {
	@Autowired
	private SanPhamRepository spRepository;
	
	// Tra ve danh sach san pham
	public List<SanPham> show(){	
		return spRepository.findAll();
	}
	// Tra ve danh sach ten san pham tim kiem
	public List<String> search(String keyword){
		return spRepository.search(keyword);
	}
	// Tra ve danh sach san pham tim kiem
	public List<SanPham> searchSanPham(String keyword){
		return spRepository.searchSanPham(keyword);
	}
	// Tra ve thong tin chi tiet san pham
	public SanPham findOneSanPham(long id) {
		return spRepository.findOne(id);
	}
	
	
}
