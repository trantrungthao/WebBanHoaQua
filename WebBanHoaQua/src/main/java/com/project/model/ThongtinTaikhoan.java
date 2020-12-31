package com.project.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="thongtintaikhoan")
public class ThongtinTaikhoan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String hoten;
	
	private String hinhanh;
	
	private String email;
	
	private String sdt;
	
	private String diachi;
	
	private Date ngaysinh;
	
	private String gioitinh;

	public ThongtinTaikhoan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThongtinTaikhoan(long id, String hoten, String hinhanh, String email, String sdt,
			String diachi, Date ngaysinh, String gioitinh) {
		super();
		this.id = id;
		this.hoten = hoten;
		this.hinhanh = hinhanh;
		this.email = email;
		this.sdt = sdt;
		this.diachi = diachi;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
	}



	public long getId() {
		return id;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getAnh() {
		return hinhanh;
	}

	public void setAnh(String anh) {
		this.hinhanh = anh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public void setId(long id) {
		this.id = id;
	}
	
}

