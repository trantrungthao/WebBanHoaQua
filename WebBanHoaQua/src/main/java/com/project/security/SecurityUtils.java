package com.project.security;

import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import com.project.services.impl.TaiKhoanSecurityImpl.MyUser;


public class SecurityUtils {
	
	public static MyUser getPrincipal() {
		MyUser myUser =  (MyUser) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        return myUser;
    }
	
	@SuppressWarnings("unchecked")
	public static Set<String> getAuthorities() {
		Set<String> results = new HashSet<>();
		Set<GrantedAuthority> authorities = (Set<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
}
