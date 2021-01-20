package com.kh.wefer.payment.model.domain;

import org.springframework.stereotype.Component;

@Component
public class Notify {
	private static final long serialVersionUID = 20001L; 
	private String n_id;
	private String n_target;
	public String getN_id() {
		return n_id;
	}
	public void setN_id(String n_id) {
		this.n_id = n_id;
	}
	public String getN_target() {
		return n_target;
	}
	public void setN_target(String n_target) {
		this.n_target = n_target;
	}
}
