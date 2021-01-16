package com.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.LienHeRepository;
import com.project.model.LienHe;

@Service
public class UserLienHeService {
	@Autowired
	private LienHeRepository lienheRepository;
	
	// Luu lại lien he khach hang
	public void luuLienHe(LienHe lienhe) {
		lienheRepository.save(lienhe);
	}
}
