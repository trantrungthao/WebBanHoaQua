package com.project.dto;

public class Item {
	private String tensanpham;
	private String hinhanh;
	private int soluong;
	private int tonggia;
	
	public Item() {

	}
	public Item(String tensanpham, String hinhanh, int soluong, int tonggia) {
		super();
		this.tensanpham = tensanpham;
		this.hinhanh = hinhanh;
		this.soluong = soluong;
		this.tonggia = tonggia;
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
	public int getTonggia() {
		return tonggia;
	}
	public void setTonggia(int tonggia) {
		this.tonggia = tonggia;
	}
	
}
