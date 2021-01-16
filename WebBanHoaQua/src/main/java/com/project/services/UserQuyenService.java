package com.project.services;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.QuyenRepository;
import com.project.model.Quyen;

@Service
public class UserQuyenService {
	@Autowired
	private QuyenRepository quyenRepository;
	
	public Set<Quyen> quyens(long id) {
		Set<Quyen> quyens = new HashSet<Quyen>();
		quyens.add(quyenRepository.findOne(id));
		return quyens;
	}
}
