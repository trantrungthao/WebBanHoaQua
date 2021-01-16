package com.project.dto;

import java.util.ArrayList;
import java.util.List;


public class GioHang {
	private String tendangnhap;
	private String hoten;
	private List<Item> listsp;
	private int tongtien;
	
	public GioHang() {
		this.tendangnhap = "";
		this.hoten = "";
		this.listsp = new ArrayList<Item>();
		this.tongtien = 0;
	}
	public GioHang(String tendangnhap, String hoten, List<Item> listsp, int tongtien) {
		this.tendangnhap = tendangnhap;
		this.hoten = hoten;
		this.listsp = listsp;
		this.tongtien = tongtien;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public List<Item> getListsp() {
		return listsp;
	}
	public void setListsp(List<Item> listsp) {
		this.listsp = listsp;
	}
	public int getTongtien() {
		return tongtien;
	}
	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}
	
}
