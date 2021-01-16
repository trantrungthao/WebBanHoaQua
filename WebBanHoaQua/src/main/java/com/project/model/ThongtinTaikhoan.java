package com.project.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="thongtintaikhoan")
public class ThongtinTaikhoan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String hoten;
	
	private String hinhanh;
	
	private String email;
	
	private String sdt;
	
	private String diachi;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(columnDefinition = "DATE")
	private Date ngaysinh;
	
	private String gioitinh;

	public ThongtinTaikhoan() {

	}

	public ThongtinTaikhoan(Long id, String hoten, String hinhanh, String email, String sdt, String diachi,
			Date ngaysinh, String gioitinh) {
		this.id = id;
		this.hoten = hoten;
		this.hinhanh = hinhanh;
		this.email = email;
		this.sdt = sdt;
		this.diachi = diachi;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
	}

	public Long getId() {
		return id;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
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
	
}

