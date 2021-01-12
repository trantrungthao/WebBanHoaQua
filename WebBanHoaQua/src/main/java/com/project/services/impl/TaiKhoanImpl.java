package com.project.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.TaiKhoanRepository;
import com.project.model.TaiKhoan;
import com.project.services.TaiKhoanService;

@Service
public class TaiKhoanImpl implements TaiKhoanService {
	//
	@Autowired
	private TaiKhoanRepository taikhoandao;
	
	@Override
	public Iterable<TaiKhoan> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TaiKhoan findOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TaiKhoan findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TaiKhoan findByMail(String mail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean findAdminByName(String name) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean findAdminByEmail(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void save(TaiKhoan taikhoan) {
		taikhoandao.save(taikhoan);
		
	}

	@Override
	public void update(TaiKhoan taikhoan) {
		
	}

	@Override
	public void delete(Long id) {
		taikhoandao.delete(id);		
	}

}
