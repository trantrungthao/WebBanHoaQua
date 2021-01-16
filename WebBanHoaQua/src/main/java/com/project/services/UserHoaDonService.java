package com.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.HoaDonRepository;
import com.project.model.HoaDon;

@Service
public class UserHoaDonService {
	@Autowired
	private HoaDonRepository hdRepository;
	
	// Luu hoa don
	public void luuHD(HoaDon hoadon) {
		hdRepository.save(hoadon);
	}
}
