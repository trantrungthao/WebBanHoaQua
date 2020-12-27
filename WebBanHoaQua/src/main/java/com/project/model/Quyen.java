package com.project.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "quyen")
public class Quyen {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    private String tenquyen;

    @ManyToMany(mappedBy = "quyens")
    private Set<TaiKhoan> taikhoans;

	public Quyen() {
		
	}

	public Quyen(Long id, String tenquyen, Set<TaiKhoan> taikhoans) {
		this.id = id;
		this.tenquyen = tenquyen;
		this.taikhoans = taikhoans;
	}

	public String getTenquyen() {
		return tenquyen;
	}

	public void setTenquyen(String tenquyen) {
		this.tenquyen = tenquyen;
	}

	public Set<TaiKhoan> getTaikhoans() {
		return taikhoans;
	}

	public void setTaikhoans(Set<TaiKhoan> taikhoans) {
		this.taikhoans = taikhoans;
	}

	public Long getId() {
		return id;
	}
	
}
