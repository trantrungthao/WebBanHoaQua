package com.project.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "taikhoan")
public class TaiKhoan {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String tendangnhap;

    private String matkhau;
    
    private int active;

    @ManyToMany
    private Set<Quyen> quyens;
    
    @OneToMany
    private Set<HoaDon> hoadons;
	
	public TaiKhoan() {
		
	}

	public TaiKhoan(Long id, String tendangnhap, String matkhau, int active, Set<Quyen> quyens, Set<HoaDon> hoadons) {
		this.id = id;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.active = active;
		this.quyens = quyens;
		this.hoadons = hoadons;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public Set<Quyen> getQuyens() {
		return quyens;
	}

	public void setQuyens(Set<Quyen> quyens) {
		this.quyens = quyens;
	}

	public Set<HoaDon> getHoadons() {
		return hoadons;
	}

	public void setHoadons(Set<HoaDon> hoadons) {
		this.hoadons = hoadons;
	}

	public Long getId() {
		return id;
	}
	
	
}
