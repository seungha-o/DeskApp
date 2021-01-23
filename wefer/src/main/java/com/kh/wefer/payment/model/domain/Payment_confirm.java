package com.kh.wefer.payment.model.domain;

import org.springframework.stereotype.Component;

@Component
public class Payment_confirm implements java.io.Serializable {
	private static final long serialVersionUID = 20001L; 
	private String payment_confirm_id;
	private String payment_id;
	private String s_member_id0;
	private String s_member_id1;
	private String s_member_id2;
	private String confirm ;
	
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public Payment_confirm(String payment_confirm_id, String payment_id, String s_member_id0, String s_member_id1,
			String s_member_id2, String confirm) {
		super();
		this.payment_confirm_id = payment_confirm_id;
		this.payment_id = payment_id;
		this.s_member_id0 = s_member_id0;
		this.s_member_id1 = s_member_id1;
		this.s_member_id2 = s_member_id2;
		this.confirm = confirm;
	}
	public String getPayment_confirm_id() {
		return payment_confirm_id;
	}
	public void setPayment_confirm_id(String payment_confirm_id) {
		this.payment_confirm_id = payment_confirm_id;
	}
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public String getS_member_id0() {
		return s_member_id0;
	}
	public void setS_member_id0(String s_member_id0) {
		this.s_member_id0 = s_member_id0;
	}
	public String getS_member_id1() {
		return s_member_id1;
	}
	public void setS_member_id1(String s_member_id1) {
		this.s_member_id1 = s_member_id1;
	}
	public String getS_member_id2() {
		return s_member_id2;
	}
	public void setS_member_id2(String s_member_id2) {
		this.s_member_id2 = s_member_id2;
	}
	public Payment_confirm(String payment_confirm_id, String payment_id, String s_member_id0, String s_member_id1,
			String s_member_id2) {
		super();
		this.payment_confirm_id = payment_confirm_id;
		this.payment_id = payment_id;
		this.s_member_id0 = s_member_id0;
		this.s_member_id1 = s_member_id1;
		this.s_member_id2 = s_member_id2;
	}
	public Payment_confirm() {
	}
	@Override
	public String toString() {
		return "Payment_confirm [payment_confirm_id=" + payment_confirm_id + ", payment_id=" + payment_id
				+ ", s_member_id0=" + s_member_id0 + ", s_member_id1=" + s_member_id1 + ", s_member_id2=" + s_member_id2
				+ ", confirm=" + confirm + "]";
	}
	
}
