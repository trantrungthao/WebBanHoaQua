package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String tensanpham;
	
	private String hinhanh;
	
	private int soluong;
	
	private int gia;
	
	@Column(columnDefinition = "TEXT")
	private String mieuta;

	public SanPham() {

	}

	public SanPham(Long id, String tensanpham, String hinhanh, int soluong, int gia, String mieuta) {
		this.id = id;
		this.tensanpham = tensanpham;
		this.hinhanh = hinhanh;
		this.soluong = soluong;
		this.gia = gia;
		this.mieuta = mieuta;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getMieuta() {
		return mieuta;
	}

	public void setMieuta(String mieuta) {
		this.mieuta = mieuta;
	}

	public Long getId() {
		return id;
	}
	
	
}
