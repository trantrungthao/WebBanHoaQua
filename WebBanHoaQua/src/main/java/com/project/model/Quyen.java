package com.project.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "role")
public class Quyen {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    private String name;

    @ManyToMany(mappedBy = "roles")
    private Set<TaiKhoan> users;

	public Quyen() {
	}
	
	public Quyen(Long id, String name, Set<TaiKhoan> users) {
		this.id = id;
		this.name = name;
		this.users = users;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<TaiKhoan> getUsers() {
		return users;
	}

	public void setUsers(Set<TaiKhoan> users) {
		this.users = users;
	}

}
