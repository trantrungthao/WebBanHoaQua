package com.project.dto;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class TaiKhoanDK implements Serializable{
	private static final long serialVersionUID = 1L;
	private String tendangnhap;
    private String matkhau;
    private String hoten;	
	private MultipartFile hinhanh;	
	private String email;	
	private String sdt;	
	private String diachi;	
	private String ngaysinh;	
	private String gioitinh;
	
	public TaiKhoanDK() {

	}
	public TaiKhoanDK(String tendangnhap, String matkhau, String hoten, MultipartFile hinhanh, String email,
			String sdt, String diachi, String ngaysinh, String gioitinh) {
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.hoten = hoten;
		this.hinhanh = hinhanh;
		this.email = email;
		this.sdt = sdt;
		this.diachi = diachi;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
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

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public MultipartFile getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(MultipartFile hinhanh) {
		this.hinhanh = hinhanh;
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

	public String getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	@Override
	public String toString() {
		return "TaiKhoanDK [tendangnhap=" + tendangnhap + ", matkhau=" + matkhau + ", hoten=" + hoten + ", hinhanh="
				+ hinhanh + ", email=" + email + ", sdt=" + sdt + ", diachi=" + diachi + ", ngaysinh=" + ngaysinh
				+ ", gioitinh=" + gioitinh + "]";
	}
	
}
