package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lienhe")
public class LienHe {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String email;
	
	@Column(columnDefinition = "TEXT")
	private String cmt;
	
	private int active;

	public LienHe() {

	}

	public LienHe(Long id, String email, String cmt, int active) {
		this.id = id;
		this.email = email;
		this.cmt = cmt;
		this.active = active;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCmt() {
		return cmt;
	}

	public void setCmt(String cmt) {
		this.cmt = cmt;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public Long getId() {
		return id;
	}
	
}
