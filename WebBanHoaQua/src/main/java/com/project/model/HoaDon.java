package com.project.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hoadon")
public class HoaDon {
	
	@Id
	private Long id;
	private String tendangnhap;
	private String tensanpham;
	
	public HoaDon() {

	}

	public HoaDon(Long id, String tendangnhap, String tensanpham) {
		this.id = id;
		this.tendangnhap = tendangnhap;
		this.tensanpham = tensanpham;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public Long getId() {
		return id;
	}

}
