package com.kh.wefer.member.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;
@Component
public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private String position;
	private String profile;
	private String status;
	private String annual;
	private String signiture;
	private String employ_date;
	private String dept_no;
	private Date birth;
	private int manage;
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", position=" + position + ", profile=" + profile + ", status=" + status + ", annual="
				+ annual + ", signiture=" + signiture + ", employ_date=" + employ_date + ", dept_no=" + dept_no
				+ ", birth=" + birth + ", manage=" + manage + "]";
	}
	public Member(String id, String password, String name, String phone, String email, String position, String profile,
			String status, String annual, String signiture, String employ_date, String dept_no, Date birth,
			int manage) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.position = position;
		this.profile = profile;
		this.status = status;
		this.annual = annual;
		this.signiture = signiture;
		this.employ_date = employ_date;
		this.dept_no = dept_no;
		this.birth = birth;
		this.manage = manage;
	}
	public Member() {
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAnnual() {
		return annual;
	}
	public void setAnnual(String annual) {
		this.annual = annual;
	}
	public String getSigniture() {
		return signiture;
	}
	public void setSigniture(String signiture) {
		this.signiture = signiture;
	}
	public String getEmploy_date() {
		return employ_date;
	}
	public void setEmploy_date(String employ_date) {
		this.employ_date = employ_date;
	}
	public String getDept_no() {
		return dept_no;
	}
	public void setDept_no(String dept_no) {
		this.dept_no = dept_no;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getManage() {
		return manage;
	}
	public void setManage(int manage) {
		this.manage = manage;
	}

	
	
}