package com.project.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "hoadon")
public class HoaDon {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String tendangnhap;
	
	@OneToMany
	private Set<SanPham> sanphams;
	
	private String diachi;
	
	private String sdt;
	
	private Date ngaymua;
	
	private int tongtien;
	
	public HoaDon() {

	}

	public HoaDon(Long id, String tendangnhap, Set<SanPham> sanphams, String diachi, String sdt, Date ngaymua,
			int tongtien) {
		this.id = id;
		this.tendangnhap = tendangnhap;
		this.sanphams = sanphams;
		this.diachi = diachi;
		this.sdt = sdt;
		this.ngaymua = ngaymua;
		this.tongtien = tongtien;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public Set<SanPham> getSanphams() {
		return sanphams;
	}

	public void setSanphams(Set<SanPham> sanphams) {
		this.sanphams = sanphams;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public Date getNgaymua() {
		return ngaymua;
	}

	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}

	public int getTongtien() {
		return tongtien;
	}

	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}

	public Long getId() {
		return id;
	}
	
	
}
